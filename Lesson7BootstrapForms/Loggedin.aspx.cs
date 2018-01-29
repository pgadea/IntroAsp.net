using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Lesson7BootstrapForms_Loggedin : System.Web.UI.Page
{
    DataTable data1;

    EntityFrameworkTestEntities context = new EntityFrameworkTestEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {

            username.Text = "Hello " + Session["loginusername"].ToString();

        }
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        using (var entity = new EntityFrameworkTestEntities())
        {
            if (e.CommandName.Equals("detail"))

            {

                int index = Convert.ToInt32(e.CommandArgument);

                string personid = GridView1.DataKeys[index].Value.ToString();

                hiddenprimary.Value = personid;
                var query = from i in entity.PersonCRUDs
                            where i.PersonID == personid
                            select i
                            ;
                foreach (var x in query)
                {
                    personprimary.Value = personid;
                    personlast.Value = x.LastName;
                    personfirst.Value = x.FirstName;
                    personaddress.Value = x.Address;
                    personcity.Value = x.City;
                }


                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "step1confirm", "$('#myModal').modal();", true);



            }
        }
    }

    protected void Unnamed_ServerClick(object sender, EventArgs e)
    {
        using (context)
        {
            var MaxPersonID = (from d in context.PersonCRUDs select d.PersonID).Max();

            int Max1 = int.Parse(MaxPersonID) + 1;

            PersonCRUD aperson = new PersonCRUD
            {

                PersonID = Max1.ToString(),
                LastName = personlast1.Value,
                FirstName = personfirst1.Value,
                Address = personaddress1.Value,
                City = personcity1.Value
            };

            context.PersonCRUDs.Add(aperson);
            context.SaveChanges();

            GridView1.DataSourceID = "sqldatasource1";
            GridView1.DataBind();

            Response.Redirect("Loggedin.aspx");

        }
    }

    protected void Update_Click(object sender, EventArgs e)
    {
        using (context)
        {
            PersonCRUD aperson = context.PersonCRUDs.First(i => i.PersonID == hiddenprimary.Value);

            aperson.LastName = personlast.Value;
                aperson.FirstName = personfirst.Value;
                aperson.Address = personaddress.Value;
                aperson.City = personcity.Value;



            context.SaveChanges();

            GridView1.DataSourceID = "sqldatasource1";
            GridView1.DataBind();

            Response.Redirect("Loggedin.aspx");

        }
    }

    protected void Delete_Click(object sender, EventArgs e)
    {
        using (context)
        {
            PersonCRUD aperson = context.PersonCRUDs.First(i => i.PersonID == hiddenprimary.Value);

            context.PersonCRUDs.Remove(aperson);
            context.SaveChanges();

            GridView1.DataSourceID = "sqldatasource1";
            GridView1.DataBind();

            Response.Redirect("Loggedin.aspx");

        }
    }
}