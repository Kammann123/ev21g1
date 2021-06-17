// Main Program
MLK 1,2
MLK 2,8
BSR 2
MLK 8,00FF
STR 3,8

// Function multiplication
// Use:
// * R4, auxiliar
// * R5, auxiliar
// * R6, auxiliar
// * R7, auxiliar
// Parameters:
// * R1, number
// * R2, times
// Result:
// * R3 = R1 * R2
MLK 3,0
MLK 4,0
MLK 5,1

ADD 3,3,1

ADD 4,4,5

CPL 6,2
SET
ADC 7,4,6
JNE 8

RET