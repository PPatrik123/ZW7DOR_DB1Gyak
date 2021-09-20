#include <stdio.h>
#include <stdlib.h>

#include <ctype.h>

int main()
{
    printf("Fajl neve: ");
    char fileName[50];
    scanf("%s", fileName);

    FILE* file = fopen(fileName, "w");
    printf("Uzenet: ");
    char ch;
    while((ch = getchar()) != '#')
    {
        putc(ch, file);
    }

    fclose(file);

    file = fopen(fileName, "r");
    while((ch = getc(file)) != EOF)
    {
        printf("%c", toupper(ch));
    }

    fclose(file);
    return 0;
}