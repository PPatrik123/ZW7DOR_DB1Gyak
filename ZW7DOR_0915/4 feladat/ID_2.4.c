#include <stdio.h>
#include <stdlib.h>

typedef struct
{
    char Rendszam[10];
    char Tipus[32];
    int Ar;
} Car;

void readCar(FILE*, int, Car*);

int main()
{
    FILE* file = fopen("cars.txt", "r");

    printf("Adja meg az auto sorszamat: ");
    int sorszam;
    scanf("%d", &sorszam);

    Car car;
    readCar(file, sorszam, &car);
    printf("%d. auto adatai:\nRendszam: %s\nTipus: %s\nAr: %i\n", sorszam, car.Rendszam, car.Tipus, car.Ar);

    fclose(file);
    return 0;
}

void readCar(FILE* file, int index, Car* output)
{
    rewind(file);

    int i;
    for(i = 0; i < index; i++)
    {
        if(i == (index - 1))
            fscanf(file, "%s %s %i", output->Rendszam, output->Tipus, &output->Ar);
    }
}