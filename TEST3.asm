ORG 2000H
	MVI A,82H
	OUT 83H
	LXI SP,3FFFH ;Bound memory location
L0:	MVI A,01H
	MVI B,08H
L1:	OUT 80H
	CALL DELAY
	MOV D,A
	DCR B
	JNZ L2
	JMP L3
L2:	ADD A
	ORA D
	JNZ L1
L3:	MVI H,01H
	MVI L,08H
L4:	XRA H
	OUT 80H
	CALL DELAY
	DCR L
	JNZ L5
	JMP L0
L5: 	MOV E,A
	MOV A,H
	ADD H
	MOV H,A
	MOV A,E
	JMP L4
	
DELAY: 	MVI C,02H
D1:	DCR C
	JNZ D1
	RET
END
