using System;
using System.IO;

namespace ZW7DOR_3._2
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Adatok száma: ");
            int adatokSzama = Convert.ToInt32(Console.ReadLine());
            int[] adat = new int[adatokSzama];

            for (int i = 0; i < adatokSzama; i++)
            {
                Console.Write($"{i + 1}.adat = ");
                adat[i] = Convert.ToInt32(Console.ReadLine());
            }

            Console.WriteLine("Adatok kiírása: Palko.txt állományba");
            using (FileStream fs = File.Open("Palko.txt", FileMode.Create))
            {
                using (StreamWriter sw = new StreamWriter(fs))
                {
                    for (int i = 0; i < adatokSzama; i++)
                    {
                        sw.WriteLine(adat[i]);
                        Console.WriteLine(adat[i]);
                    }
                }
            }
        }
    }
}
