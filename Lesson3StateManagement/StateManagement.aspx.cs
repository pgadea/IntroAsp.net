using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Lesson3StateManagement_StateManagement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        HttpCookie acookie = new HttpCookie("Firstcookie");
        acookie.Value = "Hello First Cookie";
        acookie.Expires = DateTime.Now.AddHours(1.25);
        Response.Cookies.Add(acookie);
        int Count = 15;
        string Text2 = "Our First Hidden Field Value!";
        double adouble = 12.50;
        HiddenField1.Value = adouble.ToString();

        ViewState["firstviewstate"] = Count;
        viewstatecontrol.Text = HiddenField1.Value;




    }
    protected void Unnamed_Click(object sender, EventArgs e)
    {
        //viewstatecontrol.Text = ViewState["firstviewstate"].ToString();
        //Response.Redirect("TestRedirect?" +
        //"HiddenValue1=" + Server.UrlEncode(this.HiddenField1.Value) +
        //"&ViewStateValue=" + Server.UrlEncode(this.viewstatecontrol.Text));
        Session["number1"] = Convert.ToInt32(Session["number1"]) + 1;
        sessionvalue.Text = "Session State:" + Session["number1"].ToString();

        Application.Lock();
        Application["number"] = Convert.ToInt32(Application["number"]) + 1;
        Application.UnLock();

        applicationvalue.Text ="Application State:" +  Application["number"].ToString();
    }
}