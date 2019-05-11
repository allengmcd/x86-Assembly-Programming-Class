; This code is from x86 Assembly Language From Ground Up from Udemy 
; link: https://www.udemy.com/x86-assembly-programming-from-ground-uptm/
;

.386
.model flat,c

.code

SignedMinA	proc
			push ebp
			mov ebp, esp
			mov eax,[ebp+8]
			mov ecx,[ebp+12]

			cmp eax,ecx
			jle @F				; Jump to nearest @@ if less than or equal to
			mov eax, ecx


@@:		mov ecx,[ebp+16]
		cmp eax,ecx
		jle @F 
		mov eax,ecx



@@:		pop ebp
		ret

SignedMinA	endp




SignedMaxA	proc
			push ebp
			mov ebp, esp
			mov eax,[ebp+8]
			mov ecx,[ebp+12]

			cmp eax,ecx
			jge @F
			mov eax, ecx


@@:		mov ecx,[ebp+16]
		cmp eax,ecx
		jge @F
		mov eax, ecx

@@: pop ebp
	ret
SignedMaxA	endp


SignedMinB	proc
			push ebp
			mov ebp,esp
			mov eax,[ebp+8]
			mov ecx,[ebp+12]

			cmp eax,ecx
			cmovg eax,ecx		; use cmovg for unsigned integers
			mov ecx, [ebp+16]
			cmp eax,ecx
			cmovg eax,ecx

			pop ebp
			ret
SignedMinB	endp


SignedMaxB	proc
			push ebp
			mov ebp,esp
			mov eax,[ebp+8]
			mov ecx,[ebp+12]

			cmp eax,ecx
			cmovl eax,ecx		; use cmovl for unsigned integers
			mov ecx, [ebp+16]
			cmp eax,ecx
			cmovl eax,ecx

			pop ebp
			ret
SignedMaxB	endp
		end




