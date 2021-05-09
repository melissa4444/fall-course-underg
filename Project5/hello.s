{\rtf1\ansi\ansicpg1252\cocoartf1671\cocoasubrtf200
{\fonttbl\f0\fmodern\fcharset0 CourierNewPSMT;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs22 \cf2 \expnd0\expndtw0\kerning0
\
.data\
msg: .asciiz "Hello World!\\n"\
			\
\
.text\
\
.globl main\
main: \
li $v0, 4		\
\
la $a0, msg     \
\
syscall		\
\
li $v0, 10		\
\
syscall		}