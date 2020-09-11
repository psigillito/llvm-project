#include <stdio.h>
#include <vector>
#include <string>

/*class test_1
{
  private:
      unsigned int val = 1;
  public:
      test_1(int arg_val):val(arg_val){};
      void print_val() const {printf("%u\n", val);}
};

class test_2
{
  private:
      std::string name = "phil";
  public:
      test_2(std::string arg_val):name(arg_val){};
      void set_name(std::string new_val) { name = new_val;}
};*/

void test_loop(std::vector<char>& vals)
{
  for( auto iter : vals)
  {
      printf("%c\n", iter);
  }
}

void our_testy_empty_function () {};

int global1 = 1;
int global2 = 2;

typedef int alias1;
typedef std::string alias2;
alias1 global_alias_int = 1;

int main() {

  //test_1 a(402);
  //test_2 b("our_name");

  //a.print_val();
  //b.set_name("new_name");
 alias2 var = "alias string";
 printf("%s",var.c_str());

 std::vector<char> test_chars {'a','b','c','d'};
 test_loop(test_chars);
 //printf("Hello World");
 our_testy_empty_function();
  return 0;
}
