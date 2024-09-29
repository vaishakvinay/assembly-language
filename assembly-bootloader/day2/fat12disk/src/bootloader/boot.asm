org 0x7c00
bits 16

JMP SHORT main
NOP
bdb_oem:                 DB 'MSWIN4.1'
bdb_bytes_per_sector:    DW 512
bdb_sectors_per_cluster: DB 1
bdb_reserved_sectors:    DW 1
bdb_fat_count:           DB 2
bdb_dir_entries_count:   DW 0e0h
bdb_total_sectors:       DW 2880
bdb_media_descriptor_type: DB 0f0h
bdb_sectors_per_fat:     DW 9
bdb_sectors_per_track:   DW 18
bdb_heads:               DW 2
bdb_hidden_sectors:      DD 0
bdb_large_sector_count:  DD 0

ebr_drive_number: DB 0
                  DB 0
ebr_signature:    DB 29h
ebr_volume_id:    DB 12h,34h,56h,78h
ebr_volume_label: DB '8664 os'
ebr_system_id:    DB 'fat12'

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