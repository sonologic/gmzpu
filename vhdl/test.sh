#!/bin/sh
#
# Copyright (c) 2014, Koen Martens
# All rights reserved.
# 
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above copyright
#       notice, this list of conditions and the following disclaimer in the
#       documentation and/or other materials provided with the distribution.
#     * Neither the name of Koen Martens nor Sonologic nor the
#       names of its contributors may be used to endorse or promote products
#       derived from this software without specific prior written permission.
# 
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
# ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL <COPYRIGHT HOLDER> BE LIABLE FOR ANY
# DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
# (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
# ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
# SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#

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
    ec=0
else
    echo -en "${RED}"
    ec=1
fi

TOTAL=$(( ${OK} + ${FAIL} ))

echo -e "${OK}/${TOTAL} tests passed, ${FAIL} failed${NO}"

exit ${ec}
