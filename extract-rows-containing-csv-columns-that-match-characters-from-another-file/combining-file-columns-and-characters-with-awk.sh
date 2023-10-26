awk -F ',' 'NR==FNR{a[$1]; next} ($3 in a)' id.txt target.csv | awk -F ',' '
    {
        printf "%s,%010d,%s,%s\n", $2, $3, $4, $5
    }
' > target-csv-containing-the-id-found-in-id-txt.txt