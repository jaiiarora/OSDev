#ifndef PORTS_H
#define PORTS_H

#include "../cpu/types.h"


//ports are 16 bit, 2byte
//reading byte from port
u8 port_byte_in(u16 port);
//writing byte to port
void port_byte_out(u16 port, u8 data);

//reading byte from port
u16 port_word_in(u16 port);
//writing byte to port
void port_word_out(u16 port, u16 data);

#endif
