ORG 2000H
	MVI A,80H
	OUT 83H
	LXI SP,3FFFH
L1:	MVI A,0FFH
	OUT 80H
	CALL DELAY
	MVI A,00H
	OUT 80H
	CALL DELAY
	JMP L1
DELAY: 	MVI C,07H
L2:	DCR C
	JNZ L2
	RET
	END
