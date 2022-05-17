!#/bin/bash

echo -n "Enter Number to check "
read x

i=2
isPrime=true
while [ $i -le `expr $x / 2` ]
do 
    if [ `expr $x % $i` -eq 0 ]
    then
        isPrime=false
    fi
    echo $i

    ((i+=1))
done

if $isPrime
then
echo "Number $x is Prime"
else
echo "Number $x is Not Prime"
fi