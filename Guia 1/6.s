	li t0, 30
	li t1, -40

	bge t0, t1, else
	mv t2, t1
	j done

else:	
	mv t2, t0
	
done:	
	li a7, 10
	ecall
