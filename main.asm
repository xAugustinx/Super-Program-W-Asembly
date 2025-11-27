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


	mango:

	mov rax, 0
	mov rdi, 0
	lea rsi, [rip + buffer]
	mov rdx, 255
	syscall

	mov r8, rax
	


	add byte ptr [rip + buffer], 1

	mov rax, 1
	mov rdi, 1
	lea rsi, [rip + buffer]
	syscall


	
	CMP byte ptr [rip + buffer],47
	JNE mango

	#jmp mango

	


	mov rax, 60
	mov rdi, 69
	syscall	


