// Initialization of registers
MLK 0,7
MLK 1,0
MLK 2,0
MLK 3,A
MLK 7,1

// Compute the next value
ADD 1,1,0

// For loop...
// R2 = 0, 1, ..., 10
// R3 = 10
// R2 - R3
// R4 = /R3
// SET CARRY
// R2 + R4
// JNE
ADD 2,2,7

CPL 4,3
SET
ADC 5,2,4
JNE 4

MLK 6,00FF
STR 1,6