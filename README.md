# creditcard_validation
    A shell script to validate whether the given number is a valid credit card number or not.
    The Luhn's algorithm is followed to validate.
    The steps:
      Step 1 – Starting from the rightmost digit double the value of every second digit,
      Step 2 - If doubling of a number results in a two digits number i.e greater than 9, then add the digits of the product to get a single digit number.
      Step 3 – Now take the sum of all the digits.
      Step 4 – If the total modulo 10 is equal to 0 (if the total ends in zero) then the number is valid according to the Luhn formula; else it is not valid.
