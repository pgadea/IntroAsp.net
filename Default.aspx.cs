using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void applicationstateclick_Click(object sender, EventArgs e)
    {
        Application.Lock();
        Application["number"] = Convert.ToInt32(Application["number"]) + 1;
        Application.UnLock();

        applicationstate.Text = Application["number"].ToString();

        Session["number1"] = Convert.ToInt32(Session["number"]) + 1;

        sessionstate.Text = Session["number1"].ToString();
    }
}