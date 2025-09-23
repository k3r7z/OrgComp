start:
	li t0, 6

is_pair:
	add a0, zero, t0
	li t0, 1

for:
	ble a0, t0, end
	srli a0, a0, 1

end:	
	li a7, 10
	ecall




	





