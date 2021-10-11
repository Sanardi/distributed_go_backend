#!/bin/bash

db_set () {
    echo "$1,$2 " >> database.txt
}

db_get () {
    grep "^$1," database.txt | sed -e "s/^$1,//" | tail -n 1
}

echo "what operation would you like? Enter (db_set or db_get)"

read op

if [ $op == "db_get" ]
then
        echo "provide key"

        read key
        db_get $key

elif [ $op == "db_set" ]
then 
        echo "Enter a key"
        read key2

        echo "Enter a value"
        read value

        db_set $key2 $value

else
    echo "you did not enter an operation"

fi



echo "all entered for you"

exit 0