	AREA BUBBLE, CODE, READONLY
	ENTRY
MAIN
	MOV R0, #5
LOOP1
	LDR R5, V1
	ADD R6, R5, #01
	MOV R3, #4
LOOP2
	LDRB R1, [R5]
	LDRB R2, [R6]
	CMP R1, R2
	BLO LOOP3
	MOV R4, R2
	MOV R2, R1
	MOV R1, R4
LOOP3
	STRB R1, [R5]
	STRB R2, [R6]
	ADD R5, R5, #01
	ADD R6, R6, #01
	SUBS R3, R3, #01
	BNE LOOP2
	SUBS R0, R0, #01
	BNE LOOP1
	AREA VALUES, DATA, READONLY
V1 DCD &1000
	END