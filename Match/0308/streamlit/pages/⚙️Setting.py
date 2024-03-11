import streamlit as st
import pandas as pd
import pydeck as pdk
import xml.etree.ElementTree as ET
import os
from urllib.error import URLError

st.set_page_config(page_title="Setting", page_icon="⚙")

st.markdown("# Setting Page")
st.write(
    """This page aims to get information of target device."""
)

#
def save_configuration_to_xml(device_name, maker, processor_name, processor_number, maximum_frequency, sram_size, flash_memory):
    # 创建XML根节点
    root = ET.Element("device_info")
    # 添加设备信息子节点
    ET.SubElement(root, "device_name").text = device_name
    ET.SubElement(root, "maker").text = maker
    ET.SubElement(root, "processor_name").text = processor_name
    ET.SubElement(root, "processor_number").text = processor_number
    ET.SubElement(root, "maximum_frequency").text = maximum_frequency
    ET.SubElement(root, "sram_size").text = sram_size
    ET.SubElement(root, "flash_memory").text = flash_memory
    # 创建XML对象
    tree = ET.ElementTree(root)
    # 将XML写入文件
    device_folder = "device"
    
    device_name_folder = os.path.join(device_folder, device_name.replace(" ", "_"))

    if not os.path.exists(device_folder):
        os.makedirs(device_folder)

    if not os.path.exists(device_name_folder):
        os.makedirs(device_name_folder)

    # 写入 XML 文件到 device_name 文件夹中
    xml_file_path = os.path.join(device_name_folder, 'device_conf' + ".xml")
    tree.write(xml_file_path)

device_name = st.text_input('Device', 'SONY Spresense')
maker = st.text_input('Maker', 'SONY')
processor_name = st.text_input('Processor', 'ARM Cortex-M4F')
processor_number = st.text_input('Number of Processor(s)', '6')
maximum_frequency = st.text_input('Maximum Frequency(MHz)', '156')
sram_size = st.text_input('Size of SRAM(MB)', '1.5')
flash_memory = st.text_input('Size of Flash Memory(MB)', '8')


if st.button('Save Configuration'):
    save_configuration_to_xml(device_name, maker, processor_name, processor_number, maximum_frequency, sram_size, flash_memory)
    st.success("Configuration saved successfully!")



