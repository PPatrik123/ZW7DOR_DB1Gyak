using System;
using System.IO;

namespace ZW7DOR_3._1
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Adatok száma: ");
            int adat = Convert.ToInt32(Console.ReadLine());

            using (FileStream fs = File.Open("Palko.txt", FileMode.Open))
            {
                using (StreamReader sr = new StreamReader(fs))
                {
                    string[] adatok = sr.ReadLine().Split(',');
                    if (adatok.Length < adat)
                    {
                        Console.WriteLine("A nincs ennyi adat.");
                        return;
                    }

                    int[] szamok = new int[adat];
                    int osszeg = 0;

                    for (int i = 0; i < adat; i++)
                    {
                        szamok[i] = Convert.ToInt32(adatok[i]);
                        osszeg += szamok[i];

                        Console.WriteLine($"{i + 1}.adat = {szamok[i]}");
                    }

                    Console.WriteLine($"Összeg: {osszeg}");
                }
            }
        }
    }
}
