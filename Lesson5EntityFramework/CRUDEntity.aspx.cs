using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Lesson5EntityFramework_CRUDEntity : System.Web.UI.Page
{
    EntityFrameworkTestEntities context = new EntityFrameworkTestEntities();

    protected void Page_Load(object sender, EventArgs e)
    {
        
        using (var entity = new EntityFrameworkTestEntities())
        {

            var first = (from r in entity.People
                        select new { r.PersonID, r.FirstName,r.LastName,r.City, r.Address}).ToList();

            GridView1.DataSource = first;
            GridView1.DataBind();

            var second = (from r in entity.OrderProducts
                         select new { r.OrderId, r.OrderNumber, r.PersonID}).ToList();

            GridView2.DataSource = second;
            GridView2.DataBind();
        }
    }


    protected void Delete_Click(object sender, EventArgs e)
    {
        using (context)
        {
            var order = 2;
            OrderProduct aorder = context.OrderProducts.First(i => i.PersonID == order);
            context.OrderProducts.Remove(aorder);
            context.SaveChanges();


            Person aperson = context.People.First(i => i.PersonID == order);
            context.People.Remove(aperson);
            context.SaveChanges();


            var first = (from r in context.People
                         select new { r.PersonID, r.FirstName, r.LastName, r.City, r.Address }).ToList();

            GridView1.DataSource = first;
            GridView1.DataBind();

            var second = (from r in context.OrderProducts
                          select new { r.OrderId, r.OrderNumber, r.PersonID }).ToList();

            GridView2.DataSource = second;
            GridView2.DataBind();

        }
    }

    protected void Insert_Click(object sender, EventArgs e)
    {
        using (context)
        {

            Person aperson = new Person
            {

                PersonID = 2,
                LastName = "GG",
                FirstName = "GG",
                Address = "Today Street 1234",
                City = "Dallas"
            };

            context.People.Add(aperson);
            context.SaveChanges();

            OrderProduct aproduct = new OrderProduct
            {
                OrderId = 2,
                OrderNumber = 33333,
                PersonID = 2

            };

            context.OrderProducts.Add(aproduct);
            context.SaveChanges();

            var first = (from r in context.People
                         select new { r.PersonID, r.FirstName, r.LastName, r.City, r.Address }).ToList();

            GridView1.DataSource = first;
            GridView1.DataBind();



            var second = (from r in context.OrderProducts
                          select new { r.OrderId, r.OrderNumber, r.PersonID }).ToList();

            GridView2.DataSource = second;
            GridView2.DataBind();

        }
    }


    protected void Update_Click(object sender, EventArgs e)
    {
        using (context)
        {
            var order = 3;
            OrderProduct aorder = context.OrderProducts.First(i => i.PersonID == order);
            aorder.OrderNumber = 1265;
            context.SaveChanges();


            Person aperson = context.People.First(i => i.PersonID == order);
            aperson.FirstName = TextBox1.Text;
            context.SaveChanges();


            var first = (from r in context.People
                         select new { r.PersonID, r.FirstName, r.LastName, r.City, r.Address }).ToList();

            GridView1.DataSource = first;
            GridView1.DataBind();

            var second = (from r in context.OrderProducts
                          select new { r.OrderId, r.OrderNumber, r.PersonID }).ToList();

            GridView2.DataSource = second;
            GridView2.DataBind();

        }
    }
}