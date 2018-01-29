using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace FirstClassme
{
    public class FirstClass
    {
        public int Firstint { get; set; }
        public string Firststring { get; set; }
        public double Firstdouble { get; set; }
        public char Firstchar { get; set; }
    
        public FirstClass()
        {
           
        }

        public FirstClass(int first, string second, double third, char fourth)
        {
            first = Firstint;
            second = Firststring;
            third = Firstdouble;
            fourth = Firstchar;

        }


        public void Firstmethod()
        {

            Console.WriteLine("Hello");

        }

        public string Firstmethod1()
        {

            return this.Firststring;

        }

    }
}