.data
  varAddress: .word 0

.text
.global main

main:
  addi t0, x0, 10
  addi sp, sp, -4
  sw t0, 0(sp)

  addi t0, x0, 11
  addi sp, sp, -4
  sw t0, 0(sp)

  addi t0, x0, 12
  addi sp, sp, -4
  sw t0, 0(sp)

  addi t0, x0, 13
  addi sp, sp, -4
  sw t0, 0(sp)

  addi t0, x0, 14
  addi sp, sp, -4
  sw t0, 0(sp)

  addi a0, x0, 5
  jal sum
  ret




# Adds the elements of an array
# sp = start of the array
# a0 = array size
sum:
  
  addi t0, x0, 0    # Index
  addi t1, x0, a0   # Save array size

  jalr for_loop
  ret


for_loop:
  beq t0, t1, end
  lw t0, 0(sp)      # Load number from memory
  add a0, a0, t0    # sum it
  addi sp, sp, 4    # Update pointer
  addi t0, t0, 1    # Update index

end:
  ret
