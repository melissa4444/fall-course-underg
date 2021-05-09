#   csc256
#   Name: Melissa Estrada
#   Date: 2/19/19
#   Description: computes 1^2-2^3+3^2-4^3


.data


.text




main:
        li $s0, 1
        li $s1, 2
        li $s2, 3
        li $s3, 4


        mul $t1, $s0, $s1

        xor $t1, $t1, $t1

        sub $t1, $s1, $s0

        mult $t1, $t1

        mul $t2, $s1, $s1

        mul $t2, $t2, 2


        add $t3, $s0, $s1
        mul $t3, $t3, $t3

        add $t4, $s1, $s1
        add $t4, $t4, $t4

        mul $t4, $t4, $t4














li    $v0, 10
syscall










