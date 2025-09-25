_start:
	addi a0, zero, 0b1101

# First parts counts the lenght of the number
calculate_length:
	add t0, a0, zero		# copy the original bit number
	add t1, zero, zero		# lenght counter

1:
	beqz t0, move_lsb_to_msb
	srli t0, t0, 1
	addi t1, t1, 1
	j 1b

	
move_lsb_to_msb:
	# This part of the rotation process consists on taking the LSB 
	# from the LSB position to the MSB based on the number lenght
	# calculated before
	
	andi t2, a0, 1		# t2 = LSB, used for the rotation
	addi t1, t1, -1		# t1 = t1 - 1
	sll t2, t2, t1

rotate:
	srli a0, a0, 1
	or a0, a0, t2		# a0 = a0 | t2

return:
	li a7, 10
	ecall
