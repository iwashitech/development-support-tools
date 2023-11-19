# grep結果をWindowsのフルパスにする方法

```sh
grep -lr 検索 `pwd`"/"* | sed -e 's@/@\\@g' | sed -e 's/mnt//g' | sed -e 's@\\\\c@C:@g'
```
