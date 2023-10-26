# https://qiita.com/SoarTec-lab/items/4475ba6de612fba3f163
# https://www.yukiiworks.com/archives/62
# https://www.greptips.com/posts/1265/
# diff -s 同じ場合も出力https://www.atmarkit.co.jp/ait/articles/1704/13/news021.html

# 【シェルスクリプト】ファイルやディレクトリの有無を確認する方法色々 | server-memo.net
# https://www.server-memo.net/shellscript/file_check.html#i-4

# ファイルやディレクトリをコピーするcpコマンドの使い方！【Linuxコマンド集】
# https://eng-entrance.com/linux_command_cp#-P--parents
# cp –parentsでフォルダ構造（パス）まるごとコピー | server-memo.net
# https://www.server-memo.net/tips/command/cp/cp-parents.html

dirpath='/mnt/c/home/www.example.co.jp/laravelapp/resources/views/static/'
targetpath='/mnt/c/home/www.example.co.jp/laravelapp/resources/views/global_include/'
dir='static'
target='global_include/static/'

cd $targetpath
if [ ! -d $dir ]; then
  mkdir $dir
fi
cd $dirpath

# ******************************************
#
# NOTE:
# csvの最終行に空行が必要
#
# ******************************************
while read row; do
  col1=`echo ${row} | cut -d ',' -f 1`
  #col2=`echo ${row} | cut -d , -f 2`
  #extension='.txt'

  cp -r --parents $col1 $target
done < /mnt/c/Users/user_name/Desktop/copy-directory-with-csv-in-bash/list.csv