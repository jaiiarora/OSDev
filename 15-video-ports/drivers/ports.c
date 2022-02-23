//read byte from specified port

unsigned port_byte_in (unsigned short port)
{
  unsigned char result;
  //syntax opposit to nasm
  /*
  "=a(result)" (output operand) map the value of eax  output into a
  "d(port) map the value of port into edx fro input"
  */
  __asm__("in %%dx, %%al":"=a" (result):"d"(port));
  return result;
}


unsigned port_word_in (unsigned short port)
{
  unsigned short result;
  //syntax opposit to nasm
  /*
  "=a(result)" (output operand) map the value of eax  output into a
  "d(port) map the value of port into edx fro input"
  */
  __asm__("in %%dx, %%al":"=a" (result):"d"(port));
  return result;
}

//writing byte from specified port

void port_byte_out(unsigned short port, unsigned char data)
{
  __asm__("out %%al,%%dx" : : "a"(data), "d"(port));
}

void port_word_out(unsigned short port, unsigned char data)
{
  __asm__("out %%ax,%%dx" : : "a"(data), "d"(port));
}
