import pandas as pd

file_path = r"D:\Huzaifa Saqib\E2E Sales Funnel Analytics\final_data.xlsx"


xls = pd.ExcelFile(file_path)
sheets = xls.sheet_names

print("Sheets found:", sheets)


for sheet in sheets:
    print("\n" + "="*60)
    print(f"Exploring sheet: {sheet}")
    print("="*60)
    
    df = pd.read_excel(file_path, sheet_name=sheet)
    
    
    print(df.head())
    
    
    print(df.shape)
    

    print(df.columns.tolist())
    

    print(df.dtypes)
    
    
    print(df.isnull().sum())
    

    print(df.duplicated().sum())
    