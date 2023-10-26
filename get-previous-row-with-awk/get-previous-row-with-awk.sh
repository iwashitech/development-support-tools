cat mlb-world-series-winners.csv | awk -F ',' -v search_team="Chicago Cubs" '
    {
        if ($2 == prev_team) {
            printf "%s won in %s. Won last year.\n", $2, $1, $2
        }
        if (search_team == $2) {
            printf "Found %s in %s\n", search_team, $1
        }
        prev_year=$1
        prev_team=$2
    }
'