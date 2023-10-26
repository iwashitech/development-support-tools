`./error.sh`
. ./source_dir_name.txt

if [ -d $DIR ];then
  for directory in $(cat dir_list.txt); do
    cp -r $DIR $directory
  done
fi
