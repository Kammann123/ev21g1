// Load registers with initial value
MLK 0,00AA
MLK 1,0001

// Insert a NOP instruction waiting
NOP

// Add values and save result in final register
ADD 2,0,1

// Load address
MLK 3,00FF

// Insert a NOP instruction waiting
NOP

// Insert a NOP instruction waiting
NOP

// Store the result
STR 2,3

// Load the result
LDR 4,3