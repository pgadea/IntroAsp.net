using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Lesson1ServerControls_TextboxButton : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        submit1text.Text = TextBox1.Text;
    }
    protected void button2_ServerClick(object sender, EventArgs e)
    {
        submit2text.InnerText = Text1.Value;
    }
}