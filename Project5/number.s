    .data

msg1: .asciz


msg2: .asciiz "Enter: "
msg3: .asciiz
msg4: .asciiz
newline: .asciiz "\\n"
newline: .asciiz "\\n"

.text

.globl main
main:
$s1, $s2, $s3
addi $s1, $s3, -5
add $s1, $s1, $s2

li $v0, 10

syscall
