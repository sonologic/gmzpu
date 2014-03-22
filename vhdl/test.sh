#!/bin/sh

RED='\e[0;31m'
GREEN='\e[0;32m'
YELLOW='\e[0;33m'
NO='\e[0m'

OK=0
FAIL=0

DIR=`pwd`

for d in `find $PWD -type d -name test`; do
    cd ${d}
    for f in *.do; do
        echo -en "[    ] ${d}/${f}"
        OLDDIR=`pwd`
        tb=`echo $f | sed 's/\.do/_tb.vhdl/g'`
        rm -Rf ../work
        mkdir -p ../work
        cp $f ../work/
        cp $tb ../work/
        cd ../work        
        vsim -c -assertfile $f.assert -do $f > /dev/null
        if [ `wc -l $f.assert | cut -d\  -f 1` -eq 0 ]; then
            echo -e "\r[${GREEN}OK  ${NO}"
            OK=$(( ${OK} + 1 ))
        else
            echo -e "\r[${RED}FAIL${NO}"
            FAIL=$(( ${FAIL} + 1 ))
        fi
        cd ${d}
        #cd ${OLDDIR}
        rm -Rf ../work
    done
    #cd - > /dev/null
done

cd ${DIR}

if [ ${FAIL} -eq 0 ]; then
    echo -en "${GREEN}"
else
    echo -en "${RED}"
fi

TOTAL=$(( ${OK} + ${FAIL} ))

echo -e "${OK}/${TOTAL} tests passed, ${FAIL} failed${NO}"
