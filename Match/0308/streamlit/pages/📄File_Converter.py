# import streamlit as st
# import os
# import subprocess


# def open_c_file(c_file):
#     warning_message = None
#     try:
#         # 构建输出的LLVM文件路径
#         llvm_file_path = c_file.replace('.c', '.ll')

#         # 调用clang命令将C文件转换为LLVM文件
#         subprocess.run(["clang", "-S", "-emit-llvm", c_file, "-o", llvm_file_path], check=True)

#     except subprocess.CalledProcessError as e:
#         st.warning(f"Failed to convert {c_file} to LLVM: {e}")
#         return False, f"Failed to convert {c_file} to LLVM: {e}"
#     return True, warning_message


# def open_llvm_file(llvm_file_path):
#     try:
#         # 打开 LLVM 文件并读取内容
#         with open(llvm_file_path, 'r') as llvm_file:
#             llvm_code = llvm_file.read()

#         # 使用 Streamlit 的 code 模块显示 LLVM 代码
#         st.code(llvm_code, language='llvm')

#     except FileNotFoundError:
#         st.warning(f"LLVM file '{llvm_file_path}' not found.")
#         return False

#     except Exception as e:
#         st.error(f"Error occurred while opening LLVM file '{llvm_file_path}': {e}")
#         return False

#     return True




# st.title("C File to LLVM Converter")

#     # Allow user to upload .c file
# uploaded_file = st.file_uploader("Upload a .c File", type="c")

# if uploaded_file:
#     if st.button("Convert to LLVM"):
#         success, warning_message = open_c_file(uploaded_file.name)

#         if success is not None:
#             if success:
#                 st.success("Successfully converted to LLVM!")

#                 uploaded_ll_file = st.file_uploader("Upload a .ll File", type="ll")
#                  # 添加按钮，调用 open_llvm_file 函数
#                 if uploaded_ll_file:
#                     if st.button("Open LLVM File"):
#                         open_llvm_file(uploaded_ll_file.name)
#             else:
#                 st.error("Failed to convert the file.")
#         else:
#             st.warning(f"Conversion resulted in a warning: {warning_message}")
import streamlit as st
import subprocess


def open_c_file(c_file):
    warning_message = None
    try:
        # 构建输出的LLVM文件路径
        llvm_file_path = c_file.replace('.c', '.ll')

        # 调用clang命令将C文件转换为LLVM文件
        subprocess.run(["clang", "-S", "-emit-llvm", c_file, "-o", llvm_file_path], check=True)

        # 返回 LLVM 文件的路径
        return llvm_file_path

    except subprocess.CalledProcessError as e:
        st.warning(f"Failed to convert {c_file} to LLVM: {e}")
        return None


def open_llvm_file(llvm_file_path):
    try:
        # 打开 LLVM 文件并读取内容
        with open(llvm_file_path, 'r') as llvm_file:
            llvm_code = llvm_file.read()

        # 使用 Streamlit 的 code 模块显示 LLVM 代码
        with st.expander("LLVM Code"):
            st.code(llvm_code, language='llvm')

    except FileNotFoundError:
        st.warning(f"LLVM file '{llvm_file_path}' not found.")
        return False

    except Exception as e:
        st.error(f"Error occurred while opening LLVM file '{llvm_file_path}': {e}")
        return False

    return True


st.title("File Converter and Viewer")

# 允许用户上传 .c 文件并转换为 LLVM
uploaded_c_file = st.file_uploader("Upload a .c File", type="c")
if uploaded_c_file:
    if st.button("Convert to LLVM"):
        llvm_file_path = open_c_file(uploaded_c_file.name)
        if llvm_file_path:
            st.success("Successfully converted to LLVM!")
            # 调用 open_llvm_file 函数显示 LLVM 文件内容
            open_llvm_file(llvm_file_path)
        else:
            st.error("Failed to convert the file.")

# 允许用户上传 .ll 文件并直接打开
uploaded_ll_file = st.file_uploader("Upload a .ll File", type="ll")
if uploaded_ll_file:
    st.success("LLVM file uploaded successfully!")
    # 调用 open_llvm_file 函数显示 LLVM 文件内容
    open_llvm_file(uploaded_ll_file.name)


