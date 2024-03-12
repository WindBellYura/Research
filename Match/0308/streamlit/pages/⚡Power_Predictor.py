import streamlit as st
import pandas as pd
import xml.etree.ElementTree as ET
import os

def parse_xml(xml_file_path):
    tree = ET.parse(xml_file_path)
    root = tree.getroot()

    instructions = []
    for instruction in root.findall('Instruction'):
        name = instruction.get('name')
        power_consumption = instruction.find('PowerConsumption')
        cost = float(power_consumption.find('Cost').text) if power_consumption is not None else None
        instructions.append({'Command': name, 'Cost': cost})
    
    return instructions

def count_commands(xml_file_path, txt_file_path):
    commands_count = {}
    instructions = parse_xml(xml_file_path)
    with open(txt_file_path, 'r') as file:
        for line in file:
            for instruction in instructions:
                if instruction['Command'] in line:
                    commands_count.setdefault(instruction['Command'], {'Count': 0, 'Cost': instruction['Cost']})
                    commands_count[instruction['Command']]['Count'] += 1
    return commands_count

def main():
    st.title("Power Predictor")

    xml_file = st.file_uploader("Upload XML file", type=['xml'])
    txt_file = st.file_uploader("Upload TXT file", type=['txt'])

    if xml_file is not None and txt_file is not None:
        with open("temp.xml", "wb") as f:
            f.write(xml_file.getvalue())

        with open("temp.txt", "wb") as f:
            f.write(txt_file.getvalue())

        commands_count = count_commands("temp.xml", "temp.txt")

        os.remove("temp.xml")
        os.remove("temp.txt")

        df_count = pd.DataFrame(commands_count.items(), columns=['Command', 'Details'])
        df_count[['Count', 'Cost']] = pd.DataFrame(df_count['Details'].tolist(), index=df_count.index)
        df_count['Total Cost'] = df_count['Count'] * df_count['Cost']
        df_count = df_count[['Command', 'Cost', 'Count', 'Total Cost']].reset_index(drop=True)
        df_count.index += 1  # 将索引从0开始改为从1开始

        st.write("Commands count in the loop body:")
        st.write(df_count)

        total_cost = df_count['Total Cost'].sum()
        total_cost = round(total_cost, 3)
        st.write(f"Total cost of all commands: {total_cost}")


if __name__ == "__main__":
    main()
