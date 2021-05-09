{\rtf1\ansi\ansicpg1252\cocoartf1671\cocoasubrtf200
{\fonttbl\f0\fmodern\fcharset0 CourierNewPSMT;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs22 \cf2 \expnd0\expndtw0\kerning0
.data\
\
msg1: .asciiz "Enter a: " \
msg2: .asciiz "Enter b: "\
msg3: .asciiz "a + b = "\
newline: .asciiz "\\n"\
\
.text\
# Declare 'main' as a global function\
\
.globl main\
main: \
li $v0, 4		# Code for 1st syscall\
\
la $a0, msg1     # Load address of msg1 \
\
syscall		# Print "Enter a: "\
\
li $v0, 5		# Code for 2nd syscall\
\
syscall		# Read integer 'a'\
\
move $t0, $v0   # Syscall results returned in $v0 and stored in\
			# $t0 (temporary register)\
\
\
# Print string msg2\
\
li $v0, 4		# Code for 3rd syscall\
la $a0, msg2	# Load address of msg2 \
\
syscall 		# Print "Enter b: "\
\
# Get input 'b' from user & save\
\
li $v0, 5		# Code for 4th syscall\
\
syscall		# Read integer 'b'\
\
move $t1, $v0 	# Syscall results returned in $v0 are stored in\
			# $t1 (temporary resister) \
\
# Now, do the addition operation\
\
add $t0, $t0, $t1\
\
# Print string msg3 \
\
li $v0, 4		# Code for 5th syscall\
\
la $a0, msg3	# Load address of msg3 \
\
syscall 		# Print "Enter a + b = "\
\
# Print sum\
\
li $v0, 1 		# Code for 6th syscall\
\
move $a0, $t0	# Integer to be printed must be loaded into $a0\
\
syscall		# Prints the sum of a + b\
\
# Print newline character \
\
li $v0, 4		# Prints string (Code for 7th syscall)\
\
la $a0, newline # Load address of newline\
\
syscall 		# Prints "\\n"\
\
# return 0\
\
li $v0, 10		# Code for 8th syscall\
\
syscall         # Exit the program\
}