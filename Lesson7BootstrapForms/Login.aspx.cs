using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Lesson7BootstrapForms_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Unnamed_ServerClick(object sender, EventArgs e)
    {
        string username = "user";
        string password = "pass";

        if (inputusername.Value == username.ToString() && inputpassword.Value == password.ToString())
        {
            Session["loginusername"] = inputusername.Value;
            Response.Redirect("Loggedin",false);
        }else{

            Response.Redirect("Login", false);

        }

    }


}