#!/bin/sh

RED='\e[0;31m'
GREEN='\e[0;32m'
NO='\e[0m'

for f in *.do; do
    echo -en "[    ] $f"
    vsim -c -assertfile $f.assert -do $f > /dev/null
    if [ `wc -l $f.assert | cut -d\  -f 1` -eq 0 ]; then
        echo -e "\r[${GREEN}OK  ${NO}"
    else
        echo -e "\r[${RED}FAIL${NO}"
    fi
    rm -f $f.assert
done

