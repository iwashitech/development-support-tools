username=$(whoami)

before="/c/Users/$username/Documents/before"
after="/c/Users/$username/Documents/after"

for file in $(cat list.txt); do
  echo ___________________________________ >> diff.html
  echo $file >> diff.html
  diff -rq $before/$file $after/$file >> diff.html
  echo "**************************************************************************************************************" >> diff.html
done