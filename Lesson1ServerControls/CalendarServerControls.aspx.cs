using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CalendarServerControls : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        submit1text.Text = "";
        Label2.Text = "";
    }


    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        foreach (DateTime selecteddate in Calendar1.SelectedDates)
        {
            submit1text.Text += selecteddate.ToString("MMM dd, yyyy") + "<br />";
        }

        BulletedList1.DataSource = Calendar1.SelectedDates;
        BulletedList1.DataBind();
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        Label2.Text = CheckBox1.Checked.ToString();
    }
}