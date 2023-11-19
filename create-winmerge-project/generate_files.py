# -*- coding: utf-8 -*-
"""
"""

import os
import pandas as pd

user_name = os.environ['USERPROFILE'].replace('\\', '/')
excel_file = 'list.xlsx'
base_file = '_base.WinMerge'

df = pd.read_excel(excel_file)
for index, row in df.iterrows():
    with open(base_file, encoding="utf-8") as f:
        data_lines = f.read()
        
        data_lines = data_lines.replace("AAAAA", row['target_file'])
        data_lines = data_lines.replace("BBBBB", row['here_file'])
    
    with open('_差分_' + row['name'] +'.WinMerge', 'w', encoding="utf-8") as f:
        f.write(data_lines)