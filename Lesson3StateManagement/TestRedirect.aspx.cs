using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Lesson3StateManagement_TestRedirect : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        getcookie.Text = Request.Cookies["Firstcookie"].Value;
        getquerystringvalues.Text = Request.QueryString["HiddenValue1"] + "   " + Request.QueryString["ViewStateValue"];
      
    }
}