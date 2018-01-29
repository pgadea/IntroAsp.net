using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Lesson2ObjectOriented_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        FirstClass1 afirst = new FirstClass1();
        Listbox1.DataSource = afirst.arraymethods();
        Listbox1.DataBind();
        BulletedList1.DataSource = afirst.arraymethods();
        BulletedList1.DataBind();
        FirstClass1 asecond = new FirstClass1(3, "hello", 9.00, 'Z');
        hello.Text = asecond.Firstmethodreturn();


    }
}