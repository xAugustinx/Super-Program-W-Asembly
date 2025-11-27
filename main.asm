.global _start
.intel_syntax noprefix

.section .data
msg:
	.ascii "Meow Meow Meow\n"

mango67musztardaTyNieJestesTuf:
	.Byte 1

.section .text

_start:
	mov rax, mango67musztardaTyNieJestesTuf
	mov rdi, mango67musztardaTyNieJestesTuf
	
	lea rsi, [rip + msg]
	mov rdx, 15
	syscall

	mov rax, 60
	mov rdi, 69
	syscall	
