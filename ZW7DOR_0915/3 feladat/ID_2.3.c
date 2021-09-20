#include <stdio.h>
#include <stdlib.h>

int main()
{
    printf("Fajl tartalmanak masolasa\n");

    FILE* fp1;
    FILE* fp2;

    printf("innen (fajlnev): ");
    char firstFileName[50];
    scanf("%s", firstFileName);

    printf("ide (fajlnev): ");
    char secondFileName[50];
    scanf("%s", secondFileName);

    fp1 = fopen(firstFileName, "r");
    if(fp1 == NULL)
    {
        printf("A 'innen' fajl nem letezik vagy nem sikerult megnyitni (%s)\n", firstFileName);
        return 1;
    }

    fp2 = fopen(secondFileName, "w");
    if(fp2 == NULL)
    {
        printf("A 'ide' fajl nem letezik vagy nem sikerult megnyitni (%s)\n", secondFileName);
        return 1;
    }

    char ch;
    while((ch = getc(fp1)) != EOF)
    {
        fputc(ch, fp2);
    }

    fclose(fp1);
    fclose(fp2);
    return 0;
}