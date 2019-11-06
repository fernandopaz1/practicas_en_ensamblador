org 100h

mov ax, 12h
mov bx, 34h
mov cx, ffh
mov dx, 00h

;;;;;;
;   Queremos intercambiar ax y bx sin usar los otros regisros
;   Para eso podemos usar las funciones push y pop
;   push agrega el elemento a la pila
;   pop retama el ultimo valor que hay en la pila
;;;;;;

push ax
mov ax, bx
pop bx

;;;;;;;;;;;;;
; Si queremos que el valor numérico de cx sea el mismo que al
;;;;;;;;;;;;;

;limpiamos cx

sub cx, cx
mov cl,al


;;;;;;;;;;;;;
; Hacemos lo mismo con dx y ah
;;;;;;;;;;;;;

sub dx, dx
mov dl, ah

;Lo copiamos en la parte baja (low) del registro

ret
