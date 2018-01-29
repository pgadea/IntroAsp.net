using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Lesson4ASPNETAjax_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void clickme_Click(object sender, EventArgs e)
    {
    
        textme.Text = "1456";
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        test.Text = DateTime.Now.ToLongTimeString();
    }
}