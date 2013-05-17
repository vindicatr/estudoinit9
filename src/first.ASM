zxcvbnm = 0
include 'encoding/utf8.inc'
include 'win32wxp.inc'

.code
  start:
   invoke GetModuleHandle,0
   mov [hInstance],eax

   invoke MessageBox,HWND_DESKTOP,msgMessage,msgMessage,MB_OK
   invoke ExitProcess,0
  .end start


section '.data' data readable
  className db 0xc6,0x30,0xb9,0x30,0xc8,0x30,0,0
  msgMessage du 'Message',0,0

section '.bss' data readable writeable
hInstance dd ?
hwnd dd ?
wc WNDCLASS
msg MSG
