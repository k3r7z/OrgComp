	.data
evenMsg:	.asciz "The number is even"
oddMsg:		.asciz "The number is odd"

	.text
_start:
	li a0, 6

is_even:
	andi a0, a0, 0b1
	beqz a0, even
	jal zero, odd

even:
	lui a0, %hi(evenMsg)
	addi a0, a0, %lo(evenMsg)
	addi a7, zero, 4
	ecall

	addi a0, zero, 1
	addi a7, zero, 10
	ecall

odd:	
	lui a0, %hi(oddMsg)
	addi a0, a0, %lo(oddMsg)
	addi a7, zero, 4
	ecall

	addi a0, zero, 1
	addi a7, zero, 10
	ecall
