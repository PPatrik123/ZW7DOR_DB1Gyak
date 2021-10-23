using System;
using System.IO;
using System.Collections.Generic;

namespace ZW7DOR_3._3
{
    class Program
    {
        static void Main(string[] args)
        {
           
            List<string> szavak = new List<string>();

            Console.Write("Adja meg a fájl nevét: ");
            string fajlNev = Console.ReadLine();

            string szo;
            while ((szo = Console.ReadLine()) != "end")
            {
                szavak.Add(szo);
            }

            using (FileStream fs = File.Open(fajlNev, FileMode.Create))
            {
                using (StreamWriter sw = new StreamWriter(fs))
                {
                    foreach (string i in szavak)
                    {
                        sw.WriteLine(i.ToUpper());
                    }
                }
            }
        }
    }
}
