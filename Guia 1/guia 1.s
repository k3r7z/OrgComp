# Ejercicio 1
#addi t0, x0, 5
#addi t1, x0, 7
#add t0, t0, t1


# Ejercicio 2
addi t0, x0, 3
addi t1, x0, 5
addi t2, x0, 7

add t1, t1, t2
add t3, t0, t1


# 3. Intercambiar los valores de t0 = 10 y t1 = 20 sin usar registros adicionales
addi t0, x0, 10
addi t1, x0, 20
add t1, t1, t0
sub t0, t1, t0
sub t1, t1, t0

# 4. Calcular t2 = t0 * t1 usando sumas repetidas. (t0 = 4 y t1= 3)
addi t0, x0, 4  # loop counter
addi t1, x0, 3  # quantity to sum
addi t2, x0, 0  # total
addi a0, x0, 0  # index counter

loop_start:
  beq a0, t0, loop_end  # end condition

  add t2, t2, t1        # t2 += t1
  add a0, a0, 1         # ++a0

loop_end:
  addi 
  ecall

# 5. Calcular el valor absoluto de t0 = -42 y guardarlo en t1.
main:
  addi a0, x0, -42
  jal abs
  addi a7, x0, 10
  ecall


abs:
  bge a0, x0, return
  sub a0, x0, a0

return:
  ret


# 6. Almacenar el máximo entre t0 = 8 y t1 = 12 en t2.
addi t1, x0, 8
addi t2, x0, 12

add a0, x0, t1
add a1, x0, t2

jal max

addi a7, x0, 10
ecall

max:
  bge a0, a1, return
  add a0, x0, a1

return:
  ret

# 7. Contar cuántos bits están en 1 en t0 = 21(b10101) y guardar el resultado en t1.
addi a1, x0, 21

addi a0, x0, 0
addi t1, x0, 1
jal loop
addi a7, x0, 10
ecall


loop:
  beqz a1, end_loop

  and t2, a1, t1    # Si el bit mas a la derecha es 1, t2 = 1, sino t2 = 0
  add a0, a0, t2

  srli a1, a1, 1
  j loop

end_loop:
  ret
