.global _start
.intel_syntax noprefix

.section .bss
	buffer: .space 255

.section .data
msg:
	.ascii "Meow Meow Meow\n"

enterKurwa:
	.ascii "\n"

.section .text

_start:
	mov rax, 1
	mov rdi, 1
	lea rsi, [rip + msg]
	mov rdx, 15
	syscall


	mov rax, 0
	mov rdi, 0
	lea rsi, [rip + buffer]
	mov rdx, 255
	syscall


	add byte ptr [rip + buffer], 1
	#add byte ptr [rip + meowZmienna], 1

	mov rax, 1
	mov rdi, 1
	lea rsi, [rip + buffer]
	syscall

	#jmp mango


	mov rax, 60
	mov rdi, 69
	syscall	


