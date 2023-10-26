`./error.sh`
. ./source_dir_name.txt

if [ -d $DIR ];then
  for directory in $(cat dir_list.txt); do
    echo ___________________________________ >> diff_dir.txt
    echo DIR:$directory >> diff_dir.txt
    diff -r $DIR $directory >> diff_dir.txt
    echo "**************************************************************************************************************" >> diff_dir.txt
  done
fi
