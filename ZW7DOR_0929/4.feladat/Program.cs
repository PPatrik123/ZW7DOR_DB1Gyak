using System;
using System.IO;
namespace ZW7DOR_3._4
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Adja meg a fájl nevét: ");
            string fajlNev = Console.ReadLine();

            using (FileStream fs = File.Open(fajlNev, FileMode.Open))
            {
                using (StreamReader sw = new StreamReader(fs))
                {
                    while (!sw.EndOfStream)
                    {
                        Console.WriteLine(sw.ReadLine().ToUpper());
                    }
                }
            }
        }
    }
}
