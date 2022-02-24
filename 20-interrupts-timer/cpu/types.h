#ifndef TYPES_H
#define TYPES_H

typedef unsigned int u32;
typedef signed int s32;

typedef unsigned short u16;
typedef signed short s16;

typedef unsigned char u8;
typedef signed char s8;

//in-line macro functions
#define low_16(address) (u16) ((address) & 0xFFFF);
#define high_16(address) (u16) ((address >> 16) & 0xFFFF);

#endif
