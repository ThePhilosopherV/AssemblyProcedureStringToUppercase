;a procedure  to convert a string to uppercase
;it takes takes a string pointer in rcx and returns the uppercases result in rax
;maximum input length is 500 characters , you can twist it if you like to
.data

uppervar db 500 dup(?)

.code

toupper proc
lea rdx,uppervar
mov rsi,rcx
xor rcx,rcx
myloop:

lodsb

cmp al,0Ah
je fin

cmp al,96
jbe here
 

cmp al,123
jae here


sub al,32
here:
mov byte ptr [rdx] ,al

inc cl
inc rdx

jmp myloop

fin:
lea rax,uppervar
ret
toupper endp

end