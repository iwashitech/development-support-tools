`./error.sh`
. ./source_dir_name.txt

if [ -d $DIR ];then
  for directory in $(cat dir_list.txt); do
    echo ___________________________________ >> diff_dir_simple.txt
    echo DIR:$directory >> diff_dir_simple.txt
    diff -r $DIR $directory >> diff_dir_simple.txt
  done
fi
