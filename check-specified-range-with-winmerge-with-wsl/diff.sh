sed -n '713,956p' foo.css > 1.temp
sed -n '119,218p' bar.css > 2.temp
"/mnt/c/Program Files/WinMerge/WinMergeU.exe" 1.temp 2.temp
# 要らなさそうだけど一応sleep
sleep 1
rm 1.temp 2.temp