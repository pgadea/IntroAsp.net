using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class FirstClass1
{

    public int Firstint { get; set; }
    public string Firststring { get; set; }
    public double Firstdouble { get; set; }
    public char Firstchar { get; set; }



    public FirstClass1()
    {

    }

    public FirstClass1(int first, string second, double third, char fourth)
    {

        Firstint = first;
        Firststring = second;
        Firstdouble = third;
        Firstchar = fourth;

    }

    public void Firstmethodnoreturn()
    {
        /*void method*/
        Console.WriteLine("Hello");

    }

    public string Firstmethodreturn()
    {
        /*return method*/

        return Firststring;

    }

    public int[] arraymethods()
    {
        /*Values By Index Number*/
        /*An array stores a fixed-size sequential collection of elements of the same type. An array is used to store a collection of data, but it is often more useful to think of an array as a collection of variables of the same type stored at contiguous memory locations*/

        double[] balanceme = new double[10];
        balanceme[0] = 4500.0;
        balanceme[1] = 5500.0;
        balanceme[2] = 6500.0;

        /*Values By Assigning at Declaration*/
        int[] marks = new int[] { 71, 55, 94, 44, 95 };
        int[] score = marks;

        /*Assign Sizing*/
        int[] hello = new int[10];


        for (int i = 0; i < 10; ++i)
        {
            hello[i] = i + 100;

        }

        foreach (int x in hello)
        {
            int i = x - 100;
            Console.WriteLine("Main[{0}] = {1}", i, x);
            ++i;
        }

        return hello;
        /* output each array element's value
         * i++              
         Main[0] = 100
         Main[1] = 101
         Main[2] = 102
         Main[3] = 103
         Main[4] = 104
         Main[5] = 105
         Main[6] = 106
         Main[7] = 107
         Main[8] = 108
         Main[9] = 109
         * 
         *    * ++i
         Main[0] = 101
         Main[1] = 102
         Main[2] = 103
         Main[3] = 104
         Main[4] = 105
         Main[5] = 106
         Main[6] = 107
         Main[7] = 108
         Main[8] = 109
         Main[9] = 110
         */

    }

    public void LoopsMethod()
    {
        //Foreach
        int[] array1 = { 0, 1, 2, 3, 4, 5 };

        foreach (int n in array1)
        {
            System.Console.WriteLine(n.ToString());
        }

        string[] array2 = { "now", "today" };

        foreach (string s in array2)
        {
            System.Console.WriteLine(s);
        }

        // For loops
        int[] array3 = { 0, 1, 2, 3, 4, 5 };

        for (int i = 0; i < 6; i++)
        {
            System.Console.WriteLine(array3[i].ToString());
        }



        string[] array4 = { "today", "now" };

        for (int i = 0; i < 2; i++)
        {
            System.Console.WriteLine(array4[i]);
        }

        // While Loops
        int[] array5 = { 0, 1, 2, 3, 4, 5 };
        int x = 0;

        while (x < 6)
        {
            System.Console.WriteLine(array5[x].ToString());
            x++;
        }



        string[] array6 = { "you", "me" };
        int y = 0;

        while (y < 2)
        {
            System.Console.WriteLine(array6[y]);
            y++;
        }

        // do loops
        int[] array7 = { 0, 1, 2, 3, 4, 5 };
        int z = 0;

        do
        {
            System.Console.WriteLine(array7[z].ToString());
            x++;
        } while (z < 6);



        string[] array8 = { "now", "today" };
        int o = 0;

        do
        {
            System.Console.WriteLine(array8[y]);
            o++;
        } while (o < 2);

    }

    public void ConditionalMethod()
    {

        int hello = 99;

        int hello2 = 88;
        string youtest;

        // if-else construction.
        if (hello > 0)
            youtest = "this value is positive";
        else
            youtest = "this value is negative";


        // ?: conditional operator.
        youtest = (hello > 0) ? "positive" : "negative";

        // if-else construction.
        if (hello > 0 || hello2 == 88)
            youtest = "this value is positive";
        else
            youtest = "this value is negative";

        // ?: conditional operator.
        youtest = (hello > 0 || hello2 == 88) ? "positive" : "negative";

        // if-else construction.
        if (hello > 0 && hello2 == 89)
            youtest = "this value is positive";
        else
            youtest = "this value is negative";

        // ?: conditional operator.
        youtest = (hello > 0 && hello2 == 89) ? "positive" : "negative";


        //Switch Case
        int mainswitch = 3;
        switch (mainswitch)
        {
            case 1:
                Console.WriteLine("mainswitch 1");
                break;
            case 2:
                Console.WriteLine("mainswitch 2");
                break;
            default:
                Console.WriteLine("Default mainswitch");
                break;
        }

    }

}