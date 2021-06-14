"""

"""

# Python modules
import sys

def create_instruction(mnemonic: str, link: list, format: int, opcode: int):
  """ Creates a descriptor or data structure which describes an instruction
  """
  return {
    'mnemonic': mnemonic,
    'link': link,
    'format': format,
    'opcode': opcode
  }

def non_operand_instruction(a: bool, b: bool, c: bool, opcode: int, rk: int, rj: int, ri: int):
  """ Generates the binary word for a non operand instruction
  """
  word = 0
  word |= (1 if a else 0) << 30
  word |= (1 if b else 0) << 29
  word |= (1 if c else 0) << 28
  word |= opcode << 18
  word |= rk << 12 if a else 63
  word |= rj << 6 if b else 63
  word |= ri << 0 if c else 63
  return word 

def operand_instruction(b: bool, c: bool, opcode: int, operand: int, ri: int):
  """ Generates the binary word for a operand instruction
  """
  word = 1 << 31
  word |= (1 if b else 0) << 29
  word |= (1 if c else 0) << 28
  word |= opcode << 22
  word |= operand << 6
  word |= ri << 0 if b or c else 63
  return word 

instructions = [
  create_instruction('AND', (0, 1, 2), 1, 0),
  create_instruction('OR', (0, 1, 2), 1, 1),
  create_instruction('ORK', (0, 1, 0), 2, 16),
  create_instruction('ADC', (0, 1, 2), 1, 2),
  create_instruction('ADD', (0, 1, 2), 1, 3),
  create_instruction('MOV', (0, 1, -1), 1, 4),
  create_instruction('CPL', (0, 1, -1), 1, 5),
  create_instruction('MMK', (-1, 1, 0), 2, 17),
  create_instruction('MLK', (-1, 1, 0), 2, 18),
  create_instruction('STR', (-1, 1, 0), 1, 6),
  create_instruction('LDR', (0, 1, -1), 1, 7),
  create_instruction('CLR', (-1, -1, -1), 1, 8),
  create_instruction('SET', (-1, -1, -1), 1, 9),
  create_instruction('JMP', (-1, 0, -1), 2, 4),
  create_instruction('JZE', (-1, 0, -1), 2, 0),
  create_instruction('JNE', (-1, 0, -1), 2, 1),
  create_instruction('JOV', (-1, 0, -1), 2, 2),
  create_instruction('JCY', (-1, 0, -1), 2, 3),
  create_instruction('RET', (-1, -1, -1), 1, 10),
  create_instruction('BSR', (-1, 0, -1), 2, 12),
  create_instruction('VGP', (-1, 1, 0), 1, 11),
  create_instruction('VGF', (-1, -1, -1), 1, 12),
  create_instruction('NOP', (-1, -1, -1), 1, 1023)
]

def main(*arg, **kwargs):
  """ Compiler main program """
  
  # Requires only one argument
  if len(arg) != 3:
    raise ValueError('Error: EV21G1 compiler arguments incorrect. Try: compiler.py source object')
  
  # Extract the source filepath and the object_filepath
  source_filepath = arg[1]
  object_filepath = arg[2]

  # Variables
  work = []
  object = []

  # Open the source file
  source = open(source_filepath, 'r')
  for line in source:
    # Ignore comment lines
    if '//' in line:
      continue

    # Remove end of line
    if '\n' in line:
      line = line[:-1]

    # Ignore empty lines
    if len(line) == 0:
      continue

    # Extract mnemonic and operand group
    if ' ' in line:
      try:
        mnemonic, operands = line.split(' ')
      except:
        mnemonic = line.split(' ')
        operands = []
    else:
      mnemonic = line
      operands = []

    if operands:
      operands = operands.split(',')

    # Pipe the source line in the workspace
    work.append((mnemonic, operands))
  source.close()

  # Translate
  for mnemonic, operands in work:
    
    # Search if the mnemonic exists
    descriptor = None
    for instruction in instructions:
      if instruction['mnemonic'] == mnemonic:
        descriptor = instruction
        break
    
    # If not found, compilation error
    if descriptor is None:
      raise ValueError(f'Error: Unknown mnemonic {mnemonic}')

    if descriptor['format'] == 1:
      # Check if enough amount of operands
      if len(operands) != (len(descriptor['link']) - descriptor['link'].count(-1)):
        raise ValueError(f'Error: Not enough amount of operands, received {len(operands)} and expected {len(descriptor["link"])-descriptor["link"].count(-1)}')
 
      # Extract data from the operands and translate
      a = False if descriptor['link'][2] == -1 else True
      b = False if descriptor['link'][1] == -1 else True
      c = False if descriptor['link'][0] == -1 else True
      rk = int(operands[descriptor['link'][2]]) if a else 0
      rj = int(operands[descriptor['link'][1]]) if b else 0
      ri = int(operands[descriptor['link'][0]]) if c else 0
      code = non_operand_instruction(a, b, c, descriptor['opcode'], rk, rj, ri)

      # Save the translation
      object.append(code)

    elif descriptor['format'] == 2:
      # Check if enough amount of operands
      if len(operands) != (len(descriptor['link']) - descriptor['link'].count(-1) - descriptor['link'].count(0) // 2 - descriptor['link'].count(1) // 2):
        raise ValueError(f'Error: Not enough amount of operands in {mnemonic}, received {len(operands)} and expected {len(descriptor["link"])-descriptor["link"].count(-1)}')

      # Extract data from the operands and translate
      b = False if descriptor['link'][0] == -1 else True
      c = False if descriptor['link'][2] == -1 else True
      if b and c and (operands[descriptor['link'][0]] != operands[descriptor['link'][2]]):
        raise ValueError('Error: Instruction wrongly defined. B and C cannot be different registers.')
      if b:
        ri = int(operands[descriptor['link'][0]])
      elif c:
        ri = int(operands[descriptor['link'][2]])
      else:
        ri = 0
      operand = int(operands[descriptor['link'][1]], 16)
      code = operand_instruction(b, c, descriptor['opcode'], operand, ri)

      # Save the translation
      object.append(code)

  # Save the result
  output = open(object_filepath, 'w')
  for code in object:
    # output.write("{0:032b}\n".format(code))
    output.write("instruction = 32'b{0:032b};\n".format(code))
    output.write("clk = 1'b1;\n");
    output.write("#1;\n\n");
    output.write("clk = 1'b0;\n");
    output.write("#1;\n\n");
  output.close()

if __name__ == '__main__':
  main(*sys.argv)
