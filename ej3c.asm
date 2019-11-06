org 100h

mov al, N1

mov N1, N2
mov N2, N3
add N3, al

ret

N1  db  18
N2  db  33
N3  db  40
