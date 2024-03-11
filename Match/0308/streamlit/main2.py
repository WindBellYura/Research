import streamlit as st
import pandas as pd

test_file_name = "initial value"

# 设置侧边栏
st.sidebar.title("文件选择")

# 添加文件上传按钮
uploaded_file = st.sidebar.file_uploader("上传文件", type=["csv", "xlsx"])

# 显示文件名字的文本栏
file_name_display = st.sidebar.empty()

# 显示表格数据的容器
data_container = st.empty()

# 显示文件表头内容的复选框
show_columns = st.empty()

# 如果有文件上传
if uploaded_file is not None:
    # 显示文件名字
    file_name_display.text("文件名：" + uploaded_file.name)

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
    selected_columns = show_columns.multiselect("选择要展示的列", columns, default=columns)
    
    # 显示选择的列
    if selected_columns:
        selected_data = df[selected_columns]
        data_container.write(selected_data)
        
        y_axis = st.selectbox("选择Y轴", options=selected_columns, index=1 if len(selected_columns) > 1 else 0)
        
        # 绘制折线图
        st.line_chart(selected_data[[y_axis]])

        # 添加阈值输入框
        threshold = st.number_input("输入阈值", value=0.0)
        
        # 检测特征点
        features = []
        for i in range(1, len(selected_data)):
            if abs(selected_data[y_axis].iloc[i] - selected_data[y_axis].iloc[i-1]) > threshold:
                features.append(selected_data.iloc[i])
        
        # 显示特征点
        if features:
            st.subheader("特征点:")
            st.write(pd.DataFrame(features))
    
# 添加按钮来保存特征点的表格数据
if st.button("保存特征点表格数据"):
    # 保存特征点的表格数据到文件
    if features:
        features_df = pd.DataFrame(features)
        features_df.to_csv("feature.csv", index=False)
        st.success("特征点表格数据已保存到 feature.csv 文件中。")
    else:
        st.warning("没有找到特征点。")


# 设置标题
st.title("数据计算")

# 添加文件上传按钮
uploaded_file = st.file_uploader("选择要读取的文件", type=["csv", "xlsx"])

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
    start_index = st.selectbox("选择起始数据", options=rows)
    end_index = st.selectbox("选择结束数据", options=rows, index=num_rows-1)
    
    # 添加按钮来进行计算
    if st.button("进行计算"):
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
        st.write(f"Clock Cycles:{time_result_clock:.0f} ")