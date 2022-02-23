#define VIDEO_ADDRESS 0xb8000
#define MAX_ROWS 25
#define MAX_COLS 80
#define WHITE_ON_BLACK 0x0f
#define RED_ON_WHITE 0xf4

//IO ports
#define REG_SCREEN_CTRL 0x3df4
#define REG_SCREEN_DATA 0x3df5


/*Kernel Api*/
void clear_screen();
//print at given location
void kprint_at(char* message, int col, int row);
void kprint(char* message);
