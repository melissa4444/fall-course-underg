#   csc256
#   Name: Melissa Estrada
#   Date: 2/19/19
#   Description: computes 1^2-2^3+3^2-4^3


    .data



newLine:   .asciiz "\n"

# 1 $s0
# 2 $s2


    .text
    .globl bk1
    .globl endpow

power:  bne      $a1, $zero, recursion
        li       $v0, 1
        jr       $ra

recursion:
        addi     $sp, $sp, -4
        sw       $ra, 0 ($sp)
        addi     $a1, $a1, -1
        jal      power
        mul      $v0, $a0, $v0
#sub      $v0, $v0, $v0
        lw       $ra, 0, ($sp)
        addi     $sp, $sp, 4
        jr       $ra

main:

        li       $a0, 5
        li       $a1, 3
        jal      power

        move     $a0, $v0
        li       $v0, 1

        li       $a0, -6
        li       $a1, 2
        jal      power

        move     $a0, $v0
        li       $v0, 1

        li       $a0, 7
        li       $a1, 3
        jal      power

        move     $a0, $v0
        li       $v0, 1

        li       $a0, -8
        li       $a1, 2
        jal      power

        move     $a0, $v0
        li       $v0, 1

syscall

li       $v0, 10
syscall
















