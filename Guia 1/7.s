start:
    li a1, 21
    li a0, 0
    li t1, 1

loop:
  beqz a1, end

  and t2, a1, t1
  add a0, a0, t2

  srli a1, a1, 1
  j loop


end:
    addi a7, x0, 10
    ecall
