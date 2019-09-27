k=1
l=1
for i in 00 01 02 03 04 05 06 07 08 09
	do
	for j in A B C D E F G H I J 
			do
			m=`expr $l - 1`  
			n=`expr $k - 1`

				echo "0.2" > LD973_$j$i.bpw
				echo "0" >> LD973_$j$i.bpw
				echo "0" >> LD973_$j$i.bpw
				echo "-0.2" >> LD973_$j$i.bpw
				echo "scale=1; $m * 1000 * 0.2 + -11999.1" | bc >> LD973_$j$i.bpw
				echo "scale=1; $n * 750 * -0.2 + -58400.1" | bc >> LD973_$j$i.bpw
				l=`expr $l + 1`
			done
			l=1
			k=`expr $k + 1`	
	done

