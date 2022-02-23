#include "../drivers/screen.h"
#include "util.h"
#include "../cpu/isr.h"
#include "../cpu/idt.h"

void main()
{
  //install all interrupt service routines
  isr_install();
  __asm__ __volatile("int $2");
  __asm__ __volatile("int $3");
  __asm__ __volatile("int $7");
  __asm__ __volatile("int $9");

}
