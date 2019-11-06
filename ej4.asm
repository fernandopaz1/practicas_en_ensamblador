org 100h

; Ahora vemos que pasa cuando hacemos operacion fuera del rango de un registro

sub al, al

add al, 200
add al, 201   ;Overflow: sabemos que en 8 bits solo podemos representar hasta 255

sub bl, bl
sub bl, 120
sub bl, 121

ret
