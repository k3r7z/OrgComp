
	
	.text

main:
	li a0, 10
	li a1, 20
	call _greater
	li a7, 10
	ecall

_greater:
	blt a0, a1, 1f
	addi sp, sp, -8
	sw a0, 0(sp)
	ret

1:
	mv a0, a1
	ret

	
