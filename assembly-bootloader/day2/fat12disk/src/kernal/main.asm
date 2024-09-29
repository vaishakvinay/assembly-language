org 0x7c00
bits 16

main:
      mov ax,0
      mov ds,ax
      mov es,ax
      mov ss,ax
      


      mov sp,0x7c00
      mov si,os_boot_msg
      call print   
      hlt

halt: 
      jmp halt

print: 
      push si
      push ax
      push bx

print_loop:

      lodsb
      or al,al
      jz done_print
      mov ah,0x0e

      mov bh,0
      int 0x10
      jmp print_loop
      
done_print:


      pop bx 
      
      pop ax
      pop si 
      ret
os_boot_msg: db 'our os has booted!', 0x0D,0x0A,0     

      times 510-($-$$)db 0
      dw 0AA55h