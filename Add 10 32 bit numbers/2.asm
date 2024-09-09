	AREA TENNUM, CODE, READONLY
	ENTRY
MAIN
	LDR R0, V1 ; Initial Address
	MOV R1, #0 ; Initializing counter
	MOV R2, #0 ; Setting initial sum value as 0
LOOP
	LDR R3, [R0], #10000
	ADD R2, R2, R3
	ADD R1, R1, #1
	CMP R1, #10
	BNE LOOP
	STR R2, [R0]
	AREA VALUES, DATA, READONLY
V1 DCD &00001000
	END