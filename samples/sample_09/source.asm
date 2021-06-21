MMK 0,FFFF  // R0 = 0000FFFF << 16
MMK 1,0001  // R1 = 00000001 << 16
ADD 2,0,1   // R2 = R1 + R2
JCY 0       // If result is zero, jump to position 0