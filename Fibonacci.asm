.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode: DWORD

.data
	temp dd 0

.code
main PROC
	mov ecx, 7
	xor eax, eax
	mov ebx, 1
	looper:
		mov temp, ebx
		add eax, ebx
		mov ebx, eax
		mov eax, temp
		loop looper

		
	INVOKE ExitProcess, 0
main ENDP
END main
