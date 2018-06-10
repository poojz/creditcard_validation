
        echo "enter the number"
		read i
		rev=$i
		sd=0
		or=$i
		n=1
		 osum=0
		 esum=0
		 # Starting from the rightmost digit double the value of every second digit,
		while [ $n -le ${#rev} ]
		do
		a=`echo $rev | cut -c $n`
		c=$(( $a * 2))
		# If doubling of a number results in a two digits number i.e greater than 9(e.g., 6 × 2 = 12), 
		#then add the digits of the product (e.g., 12: 1 + 2 = 3, 15: 1 + 5 = 6), to get a single digit number.
		if [[ $c -gt 9 ]]
		then
		   add=$c
		   s=0
		# use while loop to
		# calulate the sum
		# of all digits
		while [ $add -gt 0 ]
		do
			# get Remainder
			k=$(( $add % 10 )) 
		 
			# get next digit
			 add=$(( $add / 10 ))
		 
			# calculate sum of
			# digit  
			s=$(( $s + $k ))
			
		done
			c=$s
		fi
		e=$(( $n + 1))
		b=`echo $rev | cut -c $e`
		d=$b
		n=$(( $n + 2))
		osum=$((osum + d))
		esum=$((esum + c))
		done
		#Now take the sum of all the digits.
		ans=$((esum + osum))
		#echo $ans
		#If the total modulo 10 is equal to 0 (if the total ends in zero) then the number is valid according to the Luhn formula; else it is not valid.
		mod=$(($ans % 10))
		if [[ $mod == 0 ]]
		then
		     echo "valid creditcard number"
		else
				echo "Not a Valid credit card number"
		fi