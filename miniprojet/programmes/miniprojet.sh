#!/bin/bash
if [ "$#" -eq 0 ]; then
    echo "Укажи файл со ссылками"
    exit 1
fi

numero=1

while read -r line; do
	code=$(curl -L -s -o /dev/null -w "%{http_code}" "$line")
	encodage=$(curl -s -L -I "$line" | grep -i "content-type:" | tail -n 1 | grep -i "charset=" | cut -d "=" -f 2 | tr -d '\r')
    mots=$(lynx -dump -nolist "$line" 2>/dev/null | wc -w | tr -d ' ')
    printf "%s\t%s\t%s\t%s\t%s\n" "$numero" "$line" "$code" "$encodage" "$mots"
    numero=$((numero + 1))
done < "$1"
