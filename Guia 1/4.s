li t0, 4	# loop counter
li t1, 3  	# quantity to sum
li a0, 0  	# total

loop:
	beqz t0, exit		# exit when i = 0 
	add a0, a0, t1		# a0 += 3
	addi t0, t0, -1  	# --i
	j loop

exit:
	li a7, 10
	ecall
