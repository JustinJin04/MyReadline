#include <iostream>
#include <string>
#include <termios.h>
#include <unistd.h>

#define CURSOR_RIGHT "\033[C"
#define CURSOR_LEFT "\033[D"
//#define CURSOR_SAVE "\033[s"
//#define CURSOR_RESTORE "\033[u"
#define COLOR_RESET "\033[m"
#define COLOR_RED "\033[31m"
#define COLOR_GREEN "\033[32m"
#define COLOR_YELLOW "\033[33m"
#define COLOR_BLUE "\033[34m"
#define COLOR_CYAN "\033[36m"

class MyReadline{

private:
    termios old_termios;
    termios new_termios;

public:
    MyReadline(){
        tcgetattr(STDIN_FILENO,&old_termios);
        new_termios=old_termios;
        new_termios.c_lflag &= ~(ICANON | ECHO);
	    new_termios.c_cc[VMIN] = 0;
	    new_termios.c_cc[VTIME] = 0;
	    tcsetattr(STDIN_FILENO,TCSANOW,&new_termios);
    }
    ~MyReadline(){
    	std::cout<<COLOR_RESET<<"\033[?25h";
        std::cout.flush();
	    tcsetattr(STDIN_FILENO, TCSANOW, &old_termios);
    }

    std::string readline(const std::string& prompt) {
        std::cout<<COLOR_GREEN << prompt << COLOR_RESET;
        std::cout.flush();

        std::string line;
        size_t cursor=0;
        char ch[3];
        while (read(STDIN_FILENO, &ch, 3) > 0) {

            if (ch[0] == '\n') {
                std::cout << std::endl;
                break;
            }
            else if (ch[0] == '\033') {
                //arrow keys
                if (ch[1] == '[') {
                    if (ch[2] == 'D') {
                        // left
                        if (cursor > 0) {
                            cursor--;
                            std::cout<<CURSOR_LEFT;
                        }
                    }
                    else if (ch[2] == 'C') {
                        // right
                        if (cursor < line.size()) {
                            cursor++;
                            std::cout<<CURSOR_RIGHT;
                        }
                    }
                }
            }
            else if (ch[0] == '\177') {
                // del
                if (cursor > 0) {
                    cursor--;
                    line.erase(cursor, 1);
                    std::cout <<CURSOR_LEFT<<"\033[K";
                    int l=line.size()-cursor;
                    if(l>0){
                        std::cout << line.substr(cursor) << "\033[" << l<< "D";
                    }
                }
            }
            else {
                line.insert(cursor, 1, ch[0]);
                std::cout<<"\033[K";
                std::cout << line.substr(cursor) << "\033[" << line.size() - cursor<< "D";
                cursor++;
                std::cout<<CURSOR_RIGHT;
            }
            std::cout.flush();
        }
        return line;
    }
};

int main(){
    std::string prompt = "> ";
    MyReadline rl;
    while(true){
        std::string line=rl.readline(prompt);
        if(line=="exit")break;
        std::cout<<COLOR_RED<<"echo: "<< line << std::endl;
    }
    return 0;
}

