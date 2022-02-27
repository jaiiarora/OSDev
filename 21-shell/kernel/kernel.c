#include "../cpu/isr.h"
#include "../cpu/timer.h"
#include "../drivers/screen.h"
#include "../cpu/isr.h"
#include "kernel.h"
#include "../libc/string.h"

void main() {
    isr_install();
    irq_install();
    kprint("Type  Something inside the Kernel \n");
    kprint("Type END to halt the CPU\n>");
}

void user_input(char* input)
{
  if (strcmp(input,"END")==0)
  {
    kprint("Stopping the System. Bye!!!");
    asm volatile("hlt");
  }
  kprint("You said:");
  kprint(input);
  kprint("\n> ");
}
