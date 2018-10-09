.text
.globl main
main:
	ori $s0, $0, 0x11
	
	la $a0, output1
	li $v0, 4
	syscall
	xori $s0, $s0, 0x00
	move $a0, $s0
	li $v0, 34
	syscall

	ori $v0, $0, 10
	syscall

.data
	output1: .asciiz "\nAfter xor:\n "
