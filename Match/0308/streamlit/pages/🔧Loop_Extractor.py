import streamlit as st
import os

def open_llvm_file(llvm_file_path):
    try:
        # 打开 LLVM 文件并读取内容
        with open(llvm_file_path, 'r') as llvm_file:
            llvm_code = llvm_file.readlines()

        return llvm_code

    except FileNotFoundError:
        st.warning(f"LLVM file '{llvm_file_path}' not found.")
        return None

    except Exception as e:
        st.error(f"Error occurred while opening LLVM file '{llvm_file_path}': {e}")
        return None

def extract_loop_labels(llvm_code):
    if not llvm_code:
        return None
    
    loop_labels = []
    line_number = 0

    for line in llvm_code:
        line_number += 1  # 增加行号
        if "llvm.loop" in line:
            parts = line.split(" ")
            for part in parts:
                if "%" in part:
                    loop_label = part.strip("%").replace(",", "") + ':'
                    loop_labels.append((loop_label, line_number))  # 添加循环标签和行号到列表中
                    break  # 找到一个标签就结束该行的处理

    return loop_labels

def extract_loop_content(llvm_code, loop_labels):
    if not llvm_code or not loop_labels:
        return None
    
    loop_content = []
    inside_loop = False
    start_line = None
    end_line = None

    for i, line in enumerate(llvm_code):
        if line.startswith(loop_labels[0][0]):  # 判断是否为起始行
            start_line = i
            inside_loop = True
        elif "llvm.loop" in line:  # 判断是否为终止行
            end_line = i
            break
        if inside_loop:
            loop_content.append(line)

    loop_content.append(line)
    return loop_content

def show_loop_content(loop_content):
    if not loop_content:
        st.warning("No llvm.loop content found.")
        return
    
    st.code("".join(loop_content))

def extract_between_empty_lines(code_lines):
    extracted_content = []
    empty_line_count = 0

    for line in code_lines:
        if line.strip() == "":
            empty_line_count += 1
            if empty_line_count == 1:  # 第一个空行
                extracted_content = []  # 清空已提取的内容
        else:
            if empty_line_count == 2:  # 第二个空行
                break
            elif empty_line_count == 1:  # 在两个空行之间
                extracted_content.append(line)

        # 排除第一行
    if len(extracted_content) > 1:
        extracted_content = extracted_content[1:-1]

    return extracted_content

def save_to_txt(content, file_path):
    with open(file_path, 'w') as file:
        file.write(content)



st.title("Loop Extractor")

# 允许用户上传 .ll 文件并直接打开
uploaded_ll_file = st.file_uploader("Upload a .ll File", type="ll")
if uploaded_ll_file:
    st.success("LLVM file uploaded successfully!")
    # 调用 open_llvm_file 函数显示 LLVM 文件内容
    llvm_code = open_llvm_file(uploaded_ll_file.name)
    if llvm_code:
        loop_labels = extract_loop_labels(llvm_code)
        if loop_labels:
            loop_content = extract_loop_content(llvm_code, loop_labels)
            if loop_content:
                show_loop_content(loop_content)

                if st.button("Extract Content Without Loop Control"):
                    extracted_content = extract_between_empty_lines(loop_content)
                    if extracted_content:
                        st.code("".join(extracted_content))
                        # Save extracted content to a txt file
                        save_to_txt("".join(extracted_content), "extracted_content.txt")
                        
                        st.success("Extracted content saved to extracted_content.txt")
                    else:
                        st.warning("No content found between empty lines.")
