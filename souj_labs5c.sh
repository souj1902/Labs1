echo enter a number
read num
if [ $num -eq 1 ]
then
	echo "1 is neither prime nor composite"
else
	i=2
	while [ $i -lt $num ]
	do
		if [ `expr $num % $i` -eq 0 ]
		then
			echo $num is not prime
			exit
		fi
		i=`expr $i + 1`
	done
	echo $num is a prime number
fi
