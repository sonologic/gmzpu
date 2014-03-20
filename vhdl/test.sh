#!/bin/sh

RED='\e[0;31m'
GREEN='\e[0;32m'
YELLOW='\e[0;33m'
NO='\e[0m'

OK=0
FAIL=0

for d in `find . -type d -name test`; do
    cd ${d}
    for f in *.do; do
        echo -en "[    ] ${d}/${f}"
        vsim -c -assertfile $f.assert -do $f > /dev/null
        if [ `wc -l $f.assert | cut -d\  -f 1` -eq 0 ]; then
            echo -e "\r[${GREEN}OK  ${NO}"
            OK=$(( ${OK} + 1 ))
        else
            echo -e "\r[${RED}FAIL${NO}"
            FAIL=$(( ${OK} + 1 ))
        fi
        rm -f $f.assert
    done
    cd - > /dev/null
done

if [ ${FAIL} -eq 0 ]; then
    echo -en "${GREEN}"
else
    echo -en "${RED}"
fi

TOTAL=$(( ${OK} + ${FAIL} ))

echo -e "${OK}/${TOTAL} tests passed, ${FAIL} failed${NO}"
