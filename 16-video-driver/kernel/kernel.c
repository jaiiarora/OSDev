#include "../drivers/screen.h"
void main()
{
  clear_screen();
  kprint_at("X", 1, 6);
  kprint_at("Trust the Process", 75, 10);
  kprint_at("Build new habits", 0, 20);
  kprint("Work Hard \n");
  kprint_at("Play Hard \n", 45, 24);
  kprint_at("Random Gibberish \n", 47, 24);
}
