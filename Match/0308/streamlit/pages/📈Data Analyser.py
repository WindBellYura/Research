import streamlit as st
import pandas as pd
import numpy as np
import altair as alt
from io import BytesIO
import os



def set_page_config():
    st.set_page_config(page_title="Data Analyser", page_icon="📈")
    st.markdown("# Data Analyser")
    st.write("This a tool aims to get information from data log")

def upload_file_ui():
    st.title("Upload File")  # 文件选择
    uploaded_file = st.file_uploader("Upload .csv and .xlsx files as inputs\n\n入力としてcsvファイルとxlsxファイルをアップロードしてください", type=["csv", "xlsx"])
    if uploaded_file is not None:
        st.session_state['uploaded_file'] = uploaded_file
        process_uploaded_file(uploaded_file)

def process_uploaded_file(uploaded_file):
    file_name_display = st.empty()
    data_container = st.empty()
    show_columns = st.empty()

    file_name_display.text("File: " + uploaded_file.name)

    if uploaded_file.name.endswith('.csv'):
        df = pd.read_csv(uploaded_file)
    elif uploaded_file.name.endswith('.xlsx'):
        df = pd.read_excel(uploaded_file, engine='openpyxl')

    data_container.write(df)
    columns = df.columns.tolist()
    selected_columns = show_columns.multiselect("Select the columns to display", columns, default=columns)

    if selected_columns:
        selected_data = df[selected_columns]
        data_container.write(selected_data)
        plot_data_and_detect_features(selected_data)

def plot_data_and_detect_features(selected_data):
    y_axis = st.selectbox("Select the Y-axis for plotting", options=selected_data.columns, index=5)
    st.line_chart(selected_data[[y_axis]])
    threshold = st.number_input("Input Threshold", value=0.0)
    features = detect_features(selected_data, y_axis, threshold)

    if features:
        st.subheader("Feature Points:")
        st.write(pd.DataFrame(features))

def detect_features(data, column, threshold):
    features = []
    for i in range(1, len(data)):
        if abs(data[column].iloc[i] - data[column].iloc[i-1]) > threshold:
            features.append(data.iloc[i])
    if 'features' not in st.session_state or threshold != 0.0:
        st.session_state['features'] = features
    return features

def save_feature_points_ui():
    st.title("Save Feature Points")
    if st.button("Save"):
        if 'features' in st.session_state and st.session_state['features']:
            features_df = pd.DataFrame(st.session_state['features'])

            # 确保feature文件夹存在
            if not os.path.exists('feature'):
                os.makedirs('feature')

            file_name = os.path.join('feature', "feature_" + st.session_state['uploaded_file'].name)  # 修改保存路径
            features_df.to_csv(file_name, index=False)

            st.success(f"The feature point table data has been saved to '{file_name}'.")
        else:
            st.warning("No feature points were found.")

def data_processing_ui():
    st.title("Data Processing")
    uploaded_file = st.file_uploader("Select the file with feature points to read\n\n特徴点のあるファイルを選択してください", type=["csv", "xlsx"])

    if uploaded_file is not None:
        df = read_uploaded_file_custom(uploaded_file)  # 读取文件
        display_and_process_data(df, uploaded_file.name)  # 显示并处理数据

def read_uploaded_file_custom(uploaded_file):
    if uploaded_file.name.endswith('.csv'):
        df = pd.read_csv(uploaded_file)
    elif uploaded_file.name.endswith('.xlsx'):
        df = pd.read_excel(uploaded_file, engine='openpyxl')
    return df

def display_and_process_data(df, file_name):
    st.write(df)

    num_rows = len(df)
    rows = [i for i in range(num_rows)]

    start_index = st.selectbox("Select start data", options=rows)
    end_index = st.selectbox("Select end data", options=rows, index=num_rows-1)

    if st.button("Calculate"):
        calculate_and_display_results(df, start_index, end_index, file_name)

def calculate_and_display_results(df, start_index, end_index, file_name):
    start_energy_data = df.iloc[start_index]['Energy(Wh)']
    end_energy_data = df.iloc[end_index]['Energy(Wh)']

    start_time_data = df.iloc[start_index]['Time(s)']
    end_time_data = df.iloc[end_index]['Time(s)']

    # 保存时间数据到session_state
    st.session_state['start_time_data'] = start_time_data
    st.session_state['end_time_data'] = end_time_data

    energy_result = end_energy_data - start_energy_data
    time_result = end_time_data - start_time_data
    time_result_clock = time_result * 80 * 1000000

    st.write("Target:", file_name)
    st.write("Energy(Wh) Calculation Result:", energy_result)
    st.write("Energy(J) Calculation Result:", energy_result * 3600)
    st.write("Energy(nJ) Calculation Result:", energy_result * 3600 * 1000000000)
    st.write("Time(s) Calculation Result:", time_result)
    st.write("Clock Cycles:", time_result_clock)

# Ensure to call `data_processing_ui()` within your main() function or appropriately in your application flow.
    
def extract_data_between_times():
    if 'uploaded_file' in st.session_state and 'start_time_data' in st.session_state and 'end_time_data' in st.session_state:
        uploaded_file = st.session_state['uploaded_file']
        start_time_data = st.session_state['start_time_data']
        end_time_data = st.session_state['end_time_data']

        # 将上传的文件内容转换为BytesIO对象
        file_contents = uploaded_file.getvalue()
        df = pd.read_csv(BytesIO(file_contents))

        # 查找开始和结束时间对应的行
        start_row = df[df['Time(s)'] == start_time_data].index[0]
        end_row = df[df['Time(s)'] == end_time_data].index[0]

        # 提取这两行之间的数据
        extracted_data = df.loc[start_row:end_row]

        return extracted_data
    else:
        st.error("No file uploaded or start/end time data missing.")
        return pd.DataFrame()
    
def calculate_energy_ws_new(extracted_data):
    if not extracted_data.empty and 'PBUS(W)' in extracted_data.columns:
        # Reset the DataFrame index to ensure it's a simple integer range starting from 0
        extracted_data.reset_index(drop=True, inplace=True)

        name=str(st.session_state['uploaded_file'].name).split(".")[0]

        st.session_state['name'] = name

        # Initialize new DataFrame with 'PBUS(W)' and a new 'Energy(Ws)' column
        new_data = pd.DataFrame()
        new_data['PBUS(W)'] = extracted_data['PBUS(W)']
        new_data[name] = 0.0  # Initialize 'Energy(Ws)' column
        
        # Time increment for energy calculation
        time_increment = 1
        
        # Calculate 'Energy(Ws)' for each row
        for i in range(len(new_data)):
            pbus_w = new_data.iloc[i]['PBUS(W)']  # Use .iloc for row access
            if i == 0:
                # For the first row, calculate 'Energy(Ws)' directly
                new_data.at[i, name] = pbus_w * time_increment
            else:
                # For subsequent rows, add to the previous 'Energy(Ws)' value
                new_data.at[i, name] = pbus_w * time_increment + new_data.at[i - 1, name]
        
        # Drop 'PBUS(W)' column
        new_data.drop(columns=['PBUS(W)'], inplace=True)
        st.session_state['extracted_data_with_energy'] = new_data  # 假设new_data是处理完成的DataFrame
        return new_data
    else:
        st.error("Extracted data is empty or 'PBUS(W)' column is missing.")
        return pd.DataFrame(columns=['PBUS(W)', name])

def plot_data_with_altair(extracted_data_with_energy):
    # Ensure the DataFrame has a reset index which will be used as the x-axis
    extracted_data_with_energy = extracted_data_with_energy.reset_index().rename(columns={'index': 'Time Step'})

    # Create a line chart
    chart = alt.Chart(extracted_data_with_energy).mark_line().encode(
        x=alt.X('Time Step:N', title='Time Step'),
        y=alt.Y(f'{list(extracted_data_with_energy.columns)[1]}:Q', title='Energy (Wms)'),
        tooltip=[alt.Tooltip('Time Step:N', title='Time Step'), alt.Tooltip(f'{list(extracted_data_with_energy.columns)[1]}:Q', title='Energy (Wms)')]
    ).properties(
        title='Energy over Time',
        width=600,
        height=400
    )

    st.altair_chart(chart, use_container_width=True)

def save_data_to_csv(extracted_data_with_energy):
    file_path = 'merge_data.csv'
    name = str(st.session_state['uploaded_file'].name).split(".")[0]  # 获取当前文件名作为列名

    # 确定时间列，假设时间步长为1ms，从0开始
    time_steps = list(range(len(extracted_data_with_energy)))
    extracted_data_with_energy.insert(0, 'Time_ms', time_steps)  # 在数据框架的最前面插入时间列

    # 检查文件是否存在以决定是创建新文件还是更新现有文件
    if os.path.exists(file_path):
        existing_df = pd.read_csv(file_path)
        # 如果时间列不存在，则创建它
        if 'Time_ms' not in existing_df.columns:
            existing_df.insert(0, 'Time_ms', list(range(len(existing_df))))
        # 合并旧数据和新数据
        combined_df = pd.merge(existing_df, extracted_data_with_energy[['Time_ms', name]], on='Time_ms', how='outer')
    else:
        combined_df = extracted_data_with_energy.rename(columns={extracted_data_with_energy.columns[1]: name})

    # 保存更新后的DataFrame到CSV
    combined_df.to_csv(file_path, index=False)
    st.success("Data saved successfully.")

def load_merged_data():
    try:
        df = pd.read_csv('merge_data.csv')
        return df
    except FileNotFoundError:
        st.error("The file 'merge_data.csv' was not found.")
        return pd.DataFrame()

def plot_dynamic_data():
    df = load_merged_data()
    if df.empty:
        st.write("No data available to display.")
        return

    if 'Time_ms' not in df.columns:
        st.error("The required 'Time_ms' column is not present in the dataset.")
        return

    series_names = df.columns.drop('Time_ms')
    selected_series = st.multiselect('Select data series to display:', series_names, default=series_names.tolist())

    if not selected_series:
        st.warning('Please select at least one data series.')
        # 如果没有数据系列被选中，显示一个简单的提示信息，而不尝试绘制图表
        return

    # 准备绘图数据
    data_long = pd.melt(df, id_vars=['Time_ms'], value_vars=selected_series, var_name='Series', value_name='Energy_Wms')

    # 使用Altair绘制图表
    chart = alt.Chart(data_long).mark_area(opacity=0.5).encode(
        x='Time_ms:Q',
        y=alt.Y('Energy_Wms:Q', title='Energy_Wms'),
        color='Series:N',
        tooltip=['Time_ms', 'Series', 'Energy_Wms']
    ).properties(
        width=800,
        height=400,
        title='Dynamic Data Visualization over Time'
    ).interactive()

    st.altair_chart(chart, use_container_width=True)

def main():
    set_page_config()
    upload_file_ui()
    if 'features' in st.session_state:
        save_feature_points_ui()
        data_processing_ui()
    
    if st.button("Data Processing"):
        if 'start_time_data' in st.session_state and 'end_time_data' in st.session_state:
            # 假设这是调用extract_data_between_times并获取extracted_data的地方
            extracted_data = extract_data_between_times()
            # 现在使用display_extracted_data函数来显示提取的数据和绘图
            # 假设extracted_data已经按照前面的步骤被提取和定义
            extracted_data_with_energy = calculate_energy_ws_new(extracted_data)
            # 展示结果
            st.write(extracted_data_with_energy)

    if 'extracted_data_with_energy' in st.session_state:
        if st.button("Save Result"):
            save_data_to_csv(st.session_state['extracted_data_with_energy'])
   
    st.title("Dynamic Data Visualization")
    plot_dynamic_data()

if __name__ == "__main__":
    main()
