import streamlit as st
import time
import pandas as pd
import numpy as np

st.set_page_config(page_title="Data Analyser", page_icon="📈")

st.markdown("# Data Analyser")
st.write(
    """This a tool aims to get information from data log"""
)

# 设置侧边栏
st.title("Upload File")#文件选择

# 添加文件上传按钮
uploaded_file = st.file_uploader("upload .csv and .xlsx files as inputs\n\n入力としてcsvファイルとxlsxファイルをアップロードしてください", type=["csv", "xlsx"])


# 显示文件名字的文本栏
file_name_display = st.empty()

# 显示表格数据的容器
data_container = st.empty()

# 显示文件表头内容的复选框
show_columns = st.empty()

# 如果有文件上传
if uploaded_file is not None:
    # 显示文件名字
    file_name_display.text("file:" + uploaded_file.name)

    test_file_name = uploaded_file.name
    
    # 读取文件数据
    if uploaded_file.name.endswith('.csv'):
        df = pd.read_csv(uploaded_file)
    elif uploaded_file.name.endswith('.xlsx'):
        df = pd.read_excel(uploaded_file, engine='openpyxl')
    
    # 显示表格数据
    data_container.write(df)
    
    # 获取文件表头内容
    columns = df.columns.tolist()
    
    # 显示复选框，并将复选框的值设置为表头内容
    selected_columns = show_columns.multiselect("Select the columns to display", columns, default=columns)
    
    # 显示选择的列
    if selected_columns:
        selected_data = df[selected_columns]
        data_container.write(selected_data)
        
        y_axis = st.selectbox("Select the Y-axis for plotting", options=selected_columns, index=1 if len(selected_columns) > 1 else 0)
        
        # 绘制折线图
        st.line_chart(selected_data[[y_axis]])

        # 添加阈值输入框
        threshold = st.number_input("Input Threshold", value=0.0)
        
        # 检测特征点
        features = []
        for i in range(1, len(selected_data)):
            if abs(selected_data[y_axis].iloc[i] - selected_data[y_axis].iloc[i-1]) > threshold:
                features.append(selected_data.iloc[i])
        
        # 显示特征点
        if features:
            st.subheader("feature point:")
            st.write(pd.DataFrame(features))

st.title("Save Feature Points")#保存特征点
# 添加按钮来保存特征点的表格数据
if st.button("Save"):
    # 保存特征点的表格数据到文件
    if features and threshold!=0.0:
        features_df = pd.DataFrame(features)
        # 保存到CSV文件
        file_name = "feature_" + uploaded_file.name
        features_df.to_csv(file_name, index=False)
        st.success(f"The feature point table data has been saved to file '{file_name}'.")
    else:
        st.warning("No feature points were found.")


# 设置标题
st.title("Data Processing")

# 添加文件上传按钮
uploaded_file = st.file_uploader("Select the file with feature points to read\n\n 特徴点のあるファイルを選択してください", type=["csv", "xlsx"])

# 如果有文件上传
if uploaded_file is not None:
    # 读取文件数据
    if uploaded_file.name.endswith('.csv'):
        df = pd.read_csv(uploaded_file)
    elif uploaded_file.name.endswith('.xlsx'):
        df = pd.read_excel(uploaded_file, engine='openpyxl')
    
    # 显示表格数据
    st.write(df)
    
    # 获取行数
    num_rows = len(df)
    rows = [i for i in range(num_rows)]
    
    # 选择起始和结束数据的复选框
    start_index = st.selectbox("Select start data", options=rows)
    end_index = st.selectbox("Select end data", options=rows, index=num_rows-1)
    
    # 添加按钮来进行计算
    if st.button("计算"):
        # 获取选择的数据
        start_energy_data = df.iloc[start_index]['Energy(Wh)']
        end_energy_data = df.iloc[end_index]['Energy(Wh)']

        start_time_data = df.iloc[start_index]['Time(s)']
        end_time_data = df.iloc[end_index]['Time(s)']
        
        # 计算结果
        energy_result = end_energy_data - start_energy_data

        time_result = end_time_data - start_time_data

        time_result_clock=time_result*80*1000000

        # 显示计算结果
        st.write("対象：", test_file_name)

        st.write("Energy(Wh)计算结果：", energy_result)
        st.write("Energy(J)计算结果：", energy_result*3600)
        st.write("Energy(nJ)计算结果：", energy_result*3600*1000000000)

        st.write("Time(s)计算结果：", time_result)
        st.write("Clock Cycles：", time_result_clock)

        