include 'win32wxp.inc'

.code
  start:
	invoke	MessageBox,HWND_DESKTOP,"Hello World!",invoke GetCommandLine,MB_OK
	invoke	ExitProcess,0
  .end start
