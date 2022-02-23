#include "util.h"

//sets a destination location with sorc location val
void memory_copy(u8* source, u8* dest, int nbytes)
{
  int i;
  for (i=0;i<nbytes;i++)
  {
    *(dest+i)=*(source+i);
  }
}


//sets continuous memory location with a value
void memory_set(u8* dest, u8 val, u32 len){
  int i;
  for (i=0;i<len;i++)
  {
    *(dest+i)=val;
  }
}

//change it later
void int_to_ascii(int n,  char str[]){
  int i;
  int sign;
  if ((sign=n)<0)n=-n;
  i=0;
  do{
    str[i++]=n%10+'0';
  }while ((n/=10)>0);

  if (sign<0)str[i++]='-';
  str[i]='\0';
}
