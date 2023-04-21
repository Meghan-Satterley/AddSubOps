TITLE AddSubOps (Meghan-Satterley_AddSubOps.asm)

;Meghan Satterley
;Spring 2022
;This program implements addition and subtraction operations for different bit sizes on all registers


INCLUDE Irvine32.inc

;preset three values 64, 32, 16 to 8 bit, 16 bit and 32 bit variables
;declare sum, diff, and result variables for 8 bit, 16 bit and 32 bit values
;declare a 32 bit variable to hold the total of all vaules

.data
bNum01     BYTE   64 
bNum02     BYTE   32 
bNum03     BYTE   16 
bSum       BYTE   ?  
bDiff      BYTE   ?  
bResult    BYTE   ?  

wNum01     WORD   64 
wNum02     WORD   32 
wNum03     WORD   16 
wSum       WORD   ?  
wDiff      WORD   ?  
wResult    WORD   ?  

dwNum01    DWORD  64 
dwNum02    DWORD  32 
dwNum03    DWORD  16 
dwSum      DWORD  ?  
dwDiff     DWORD  ?  
dwResult   DWORD  ?  

dwTotal    DWORD  ?  

.code
main PROC

;operations to perform using MOV, ADD, SUB with 8 bit variables
;bSum    =  bNum01 + bNum02  + bNum03
;bDiff   = (bNum02 + bNum03) - bNum01
;bResult =  bSum   + bDiff

;bSum operations
	mov  al,bNum01 
	add  al,bNum02 
	add  al,bNum03 
	mov  bSum,al   

	mov  esi,OFFSET   bSum 
	mov  ebx,TYPE     bSum
	mov  ecx,LENGTHOF bSum	
	call DumpMem 

;bDiff operations
	mov  al,bNum02
	add  al,bNum03
	sub  al,bNum01
	mov  bDiff,al


	mov  esi,OFFSET   bDiff
	mov  ebx,TYPE     bDiff
	mov  ecx,LENGTHOF bDiff
	call DumpMem

;bResult operations
	mov  al,bSum
	add  al,bDiff
	mov  bResult,al
	
	mov  esi,OFFSET   bResult
	mov  ebx,TYPE     bResult
	mov  ecx,LENGTHOF bResult
	call DumpMem

;operations to perform using MOV, ADD, SUB with 16 bit variables
;wSum    =  wNum01 + wNum02  + wNum03
;wDiff   = (wNum02 + wNum03) - wNum01
;wResult =  wSum   + wDiff

;wSum operations
	mov  ax,wNum01
	add  ax,wNum02
	add  ax,wNum03
	mov  wSum,ax

	mov  esi,OFFSET   wSum
	mov  ebx,TYPE     wSum
	mov  ecx,LENGTHOF wSum	
	call DumpMem

;wDiff operations
	mov  ax,wNum02
	add  ax,wNum03
	sub  ax,wNum01
	mov  wDiff,ax

	mov  esi,OFFSET   wDiff
	mov  ebx,TYPE     wDiff
	mov  ecx,LENGTHOF wDiff
	call DumpMem

;wResult operations
	mov  ax,wSum
	add  ax,wDiff
	mov  wResult,ax
	
	mov  esi,OFFSET   wResult
	mov  ebx,TYPE     wResult
	mov  ecx,LENGTHOF wResult
	call DumpMem

;operations to perform using MOV, ADD, SUB with 32 bit variables
;dwSum    =  dwNum01 + dwNum02  + dwNum03
;dwDiff   = (dwNum02 + dwNum03) - dwNum01
;dwResult =  dwSum   + dwDiff

;dwSum operations
	mov  eax,dwNum01
	add  eax,dwNum02
	add  eax,dwNum03
	mov  dwSum,eax

	mov  esi,OFFSET   dwSum
	mov  ebx,TYPE     dwSum
	mov  ecx,LENGTHOF dwSum	
	call DumpMem

;dwDiff operations
	mov  eax,dwNum02
	add  eax,dwNum03
	sub  eax,dwNum01
	mov  dwDiff,eax


	mov  esi,OFFSET   dwDiff
	mov  ebx,TYPE     dwDiff
	mov  ecx,LENGTHOF dwDiff
	call DumpMem

;dwResult operations
	mov  eax,dwSum
	add  eax,dwDiff
	mov  dwResult,eax
	
	mov  esi,OFFSET   dwResult
	mov  ebx,TYPE     dwResult
	mov  ecx,LENGTHOF dwResult
	call DumpMem

;operations to perform using MOV, ADD, with 8 bit, 16 bit and 32 bit variables
;dwTotal = bSum + wSum + dwSum

	mov eax,0

	mov  al,bSum
	mov  ax,wSum
	mov  eax,dwSum
	add  al,bSum
	add  ax,wSum
	mov  dwTotal,eax

	mov  esi,OFFSET   dwTotal
	mov  ebx,TYPE     dwTotal
	mov  ecx,LENGTHOF dwTotal
	call DumpMem

	call WaitMsg

	exit
main ENDP
END main

