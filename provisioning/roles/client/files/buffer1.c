#include <stdio.h>

int main()
{
   char name[10];
   printf("What is your name?");
   scanf("%s", name);
   printf("Hi, %s\n\n", name);
   return 0;
}