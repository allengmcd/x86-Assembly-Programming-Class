; This code is from x86 Assembly Language From Ground Up from Udemy 
; link: https://www.udemy.com/x86-assembly-programming-from-ground-uptm/
;

.386
.model flat,c

.const

FibVals dword 0,1,1,2,3,5,8,13,21
		dword 34,55,89,144,233,377,610

NumFibVals dword($-FibVals)/sizeof dword

		public NumFibVals

.code

MemoryAddressing PROC
		push ebp
		mov ebp,esp
		push ebx
		push esi
		push edi



		xor eax,eax
		mov ecx,[ebp+8]
		cmp ecx,0
		jl InvalidIndex
		cmp ecx,[NumFibVals]
		jge InvalidIndex



		mov ebx, offset FibVals
		mov esi,[ebp+8]
		shl esi,2
		add ebx,esi
		mov eax,[ebx]
		mov edi,[ebp+12]
		mov [edi],eax



		mov esi,[ebp+8]
		shl esi,2
		mov eax,[esi+FibVals]
		mov edi,[ebp+16]
		mov [edi],eax


		mov ebx, offset FibVals
		mov esi,[ebp+8]
		shl esi,2
		mov eax,[ebx+esi]

		mov edi,[ebp+20]
		mov [edi],eax

		mov ebx, offset FibVals
		mov esi,[ebp+8]
		mov eax,[ebx+esi*4]
		mov edi,[ebp+24]
		mov [edi],eax
		mov eax,1

InvalidIndex:
		pop edi
		pop esi
		pop ebx
		pop ebp

		ret

MemoryAddressing endp
	end



