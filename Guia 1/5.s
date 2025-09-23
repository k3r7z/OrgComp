li t1, -42
bgez t1, done
sub t1, zero, t1


done:	
    li a7, 10
    ecall
