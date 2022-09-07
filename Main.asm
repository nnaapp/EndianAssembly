.386
.model flat, stdcall
.stack 8192
include kernel32.inc
includelib kernel32.lib
include user32.inc
includelib user32.lib

.data
boxtitle  db 'Endianness Checker', 0

little_msg db 'Your system is Little Endian.', 0
big_msg db 'Your system is Big Endian.', 0

dwnumber dword 0

.code
main PROC
	mov eax, 76543210h				; Load 76543210 hexadecimal into register
    mov dwnumber, eax				; Store it into memory
	movzx eax, byte ptr dwnumber	; Load the first byte of that number in memory into register, zero-filled to pad white space
    cmp al, 76h						; Compare that byte to 76 hex
	je big							; If it matches, big endian, else, little endian
	little:
		mov ebx, offset little_msg	; Load little endian message
		jmp done
	big:
		mov ebx, offset big_msg		; Load big endian message
		jmp done
	done:
	
	push 0					; uType arg
	push offset boxtitle	; lpCaption arg
	push ebx				; lpText arg
	push 0					; hWnd arg
	call  MessageBoxA		; Use windows API message box, with arguments popped off stack
	push eax				; uExitCode

	INVOKE ExitProcess, 0
main ENDP

END main        ;specify the program's entry point