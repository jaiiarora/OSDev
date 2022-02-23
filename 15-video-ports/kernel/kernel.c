#include "../drivers/ports.h"

void main()
{
  //VGA control 0x3d4
  //write 14 for  high byte of cursor, 15 for low byte
  //vga data returned in 0x3d5
  port_byte_out(0x3d4, 14);
  int position=port_byte_in(0x3d5);
  position=position<<8;
  port_byte_out(0x3d4, 15);
  position+=port_byte_in(0x3d5);
  int offset_from_vga=position*2;
  char *vga=0xb8000;
  char *str="Trust the Process!!!";
  int i=0;
  while (str[i]!='\0')
  {
    vga[offset_from_vga]=str[i];
    vga[offset_from_vga+1]=0x0f;
    offset_from_vga+=2;
    i++;
  }
}
