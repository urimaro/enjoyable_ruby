def bits(i)
  printf("%08b\n", i & 0b11111111)
end

i = 0b11110000
bits(i)
bits(~i)
bits(i & 0b00010001)
bits(i | 0b00010001)
bits(i ^ 0b00010001)
bits(i >> 3)
bits(i << 3)
