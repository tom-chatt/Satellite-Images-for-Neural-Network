filename=./data_full.csv

while read line || [[ -n "$line" ]]; do
    echo downloading $line
    wget -e robots=off -m -np -R .html,.tmp -nH --cut-dirs=3 "$line" --header "Authorization: Bearer **TOKEN KEY**" -P **DIRECTORY TO SAVE THE .h5 FILES**
done < "$filename"

