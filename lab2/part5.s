; Age History
main
	; this code does print "you were born in " + str(birth) // DO NOT change the instructions below (except for part 5)
	ADR R0, born
	SVC 3
	LDR R1, birth ; make sure this will work!
	MOV R0, R1
	SVC 4
	MOV R0, #10
	SVC 0

	ADD R1, R1, #1 ; year = birth + 1 // Change this code
	LDR R2, age
	LDR R3, present 
loop	; while year != present //{ Change this code

	; this code does print "you were " + str(age) + " in " + str(year) // DO NOT change the instructions below (except for part 5)
	ADR R0, were
	SVC 3
	MOV R0, R2 ; make sure this will work!
	SVC 4
	ADR R0, in
	SVC 3
	MOV R0, R1 ; make sure this will work!
	SVC 4
	MOV R0, #10
	SVC 0

	ADD R1, R1, #1;   year = year + 1 //Change this code
	ADD R2, R2, #1;   age = age + 1   //Change this code
	CMP R1, R3
	BNE loop; } //              //Change this code

	; this code does print "you are " + str(age) + "this year" // DO NOT change the instructions below (except for part 5)
	ADR R0, are
	SVC 3
	MOV R0, R2 ; make sure this will work!
	SVC 4
	ADR R0, this
	SVC 3

	SVC 2 ; stop
	
born	DEFB "you were born in \0"
were	DEFB "you were \0"
in	DEFB " in \0"
are	DEFB "you are \0"
this	DEFB " this year\n\0"
	ALIGN

present	DEFW 2022; present = 2005 // Change this code
birth	DEFW 2003; birth = 1959   // Change this code
; year = 0       // Change this code
age	DEFW 1; age = 1        // Change this code


