; This code is from x86 Assembly Language From Ground Up from Udemy 
; link: https://www.udemy.com/x86-assembly-programming-from-ground-uptm/
;

.386
.model flat,c

	extern GlChar:byte
	extern GlShort:word
	extern GlInt:dword
	extern GlLongLong:qword


.code
IntegerAddition	proc

		push ebp
		mov ebp,esp

	
		mov al,[ebp+8]
		add[GlChar],al


		mov ax,[ebp+12]
		add[GlShort],ax


		mov eax,[ebp+16]
		add[GlInt],eax


		mov eax,[ebp+20]
		mov edx,[ebp+24]
		add dword ptr[GlLongLong],eax
		adc dword ptr[GlLongLong],edx
		pop ebp
		ret

IntegerAddition	endp
		end