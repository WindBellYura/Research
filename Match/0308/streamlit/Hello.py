import streamlit as st

st.set_page_config(
    page_title="Hello",
    page_icon="👋",
)

st.write("# Welcome to Power Predictor for Model-based Development! 👋")

st.sidebar.success("Select a tool above.")

# 创建下拉菜单
language = st.selectbox("Select Language", ["English", "Japanese"])

# 根据选择的语言显示相应的说明
if language == "English":
    st.markdown(
        """
        This web application is designed for analyzing and predicting 
        the power consumption of equipment in Model-based Development.

        The application contains five functions

            ⚙️Setting

            📄File_Converter

            🔧Loop_Extractor

            📈Data Analyser

            ⚡Power_Predictor

        ____

        ⚙️Setting: This function is used to set device parameters
            
            Device: Device name

            Maker: Manufacturer

            Processor: Processor used

            Number of Processor(s): the number of processors equipped with the device

            Maximum Frequency(MHz): Set the maximum clock frequency of the processor

            Size of SRAM(MB): set the size of static RAM

            Size of Flash Memory(MB): Set the size of flash memory
                    
        ____

        📄File_Converter: This function is used to convert the code and provides the ability to browse the code

            Upload a .c File: Used to convert a .c file generated by MATLAB/Simulink into LLVM-IR intermediate code for analysis.

            Upload a .ll File: directly open the generated LLVM-IR intermediate code.

        ____
        🔧Loop_Extractor: this function is used to extract the loop body and provides the ability to browse the code

            Upload a .ll File: opens the LLVM-IR code generated by 📄File_Converter and extracts the loop body from the code.

            After successful extraction, you can separate the loop control and loop part of the loop body.

            The extraction of the loop part is realized by clicking the button

        ____
        📈Data Analyser: Data Analyser: This function is used to analyze and calculate the measured data.

            Upload File: Opens the measurement data in a .csv or .xlsx file.

            Once the data has been read in, it is possible to browse the data and control the columns displayed. You can also plot the data by selecting the data represented by the Y-axis using the drop-down menu.

            After observing the jump data points from the image, enter the jump control threshold in Input Threshold to perform feature point filtering.

            After filtering, each feature point data will be displayed in the feature point table below.

            Save Feature Points: After extracting the feature point data, save the data through the button.

            Data Processing: Select the saved feature point data for data analysis. Select two points as start point and stop point, then click the button, Data Analyser will automatically calculate and give the results.
        
        ____
        ⚡Power_Predictor: This function is used to calculate the power consumption of the loop body.

            Upload XML file: This function is used to import the power consumption information of each command corresponding to this data.

            Upload TXT file: This function imports the part of the loop extracted by 🔧Loop_Extractor for calculation. The results of the calculation are presented in a table, which gives the final energy consumption of the whole loop.
        """
    )
elif language == "Japanese":
    st.markdown(
        """
        このウェブアプリケーションは、モデルベース開発における機器の消費電力を分析・予測するために設計されています。
        このWebアプリケーションは、モデルベース開発における機器の消費電力を分析および予測するために設計されています。

        このアプリケーションには5つの機能が含まれています。

            ⚙️Setting

            📄 ファイル_コンバーター

            🔧 ループ抽出器

            📈データアナライザー

            ⚡パワー予測器

        ____

        ⚙️Setting： この関数は、デバイスのパラメータを設定するために使用される
            
            デバイス デバイス名

            メーカー メーカー：製造元

            プロセッサー 使用プロセッサ

            Number of Processor(s): デバイスに搭載されているプロセッサの数

            Maximum Frequency(MHz)（最大周波数）： プロセッサの最大クロック周波数を設定する

            Size of SRAM(MB): スタティックRAMのサイズを設定します。

            Size of Flash Memory(MB): フラッシュメモリのサイズを設定する
                    
        

        

        📄 File_Converter：コードを変換し、コードをブラウズする機能を提供します。

            .cファイルのアップロード：MATLAB/Simulinkで生成された.cファイルを解析用のLLVM-IR中間コードに変換するために使用します。

            .llファイルのアップロード：生成されたLLVM-IR中間コードを直接開きます。

        ____
        🔧Loop_Extractor: この関数は、ループ本体を抽出し、コードをブラウズする機能を提供します。

            .ll ファイルのアップロード： ↪So_1F4File_Converter によって生成された LLVM-IR コードを開き、コードからループ本体を抽出します。

            抽出に成功すると、ループ本体のループ制御とループ部分を分離できます。

            ループ部分の抽出は、ボタン

        ____
        📈 データアナライザー： データアナライザー： この機能は測定データの解析と計算に使用します。

            Upload File: 測定データを .csv または .xlsx ファイルで開きます。

            データを読み込むと、データをブラウズしたり、表示する列を制御したりすることができます。また、ドロップダウンメニューを使用してY軸で表されるデータを選択することで、データをプロットすることもできます。

            画像からジャンプデータ点を観察した後、入力しきい値にジャンプ制御しきい値を入力し、特徴点フィルタリングを行います。

            フィルタリング後、各特徴点のデータが下の特徴点テーブルに表示されます。

            特徴点の保存 特徴点データを抽出した後、ボタンでデータを保存します。

            データ処理 保存した特徴点データを選択し、データ解析を行います。開始点と停止点の2点を選択し、ボタンをクリックすると、データアナライザーが自動的に計算し、結果を表示します。
        
        ____
        ⚡ Power_Predictor： この機能はループ本体の消費電力を計算するために使用されます。

            XMLファイルのアップロード： この機能は、このデータに対応する各コマンドの消費電力情報をインポートするために使用されます。

            TXT ファイルのアップロード： Upload TXT file: 🔧Loop_Extractor で抽出されたループの一部をインポートして計算します。計算結果は表に表示され、ループ全体の最終的なエネルギー消費量が示されます。
        """
    )
    pass