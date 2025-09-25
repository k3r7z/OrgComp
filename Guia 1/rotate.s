_start:
	addi t0, zero, 0b1101

# First parts counts the lenght of the number
bit_length:
	addi s0, zero, t0
	addi s1, zero, 0		# lenght counter

1:
	beqz s0, _end
	srli s0, s0, 1
	addi s1, s1, 1
	j 1b

# Once the lenght is obtained on t2, it starts the rotation process
rotate:
	andi s2, t0, 1		# s2 = LSB, used for the rotation

2:
	beqz s1, 2f
	addi s1, s1, -1
	slli s2, s2, 1
	j 2b

2:
	or a0, t0, s2

_end:
	li a7, 10
	ecall
