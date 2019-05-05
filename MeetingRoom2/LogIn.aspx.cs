using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MeetingRoom2
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Label1.Text = "<h4>UserName</h4>";
                Label2.Text = "<h4>PassWord</h4>";
                Label4.Text = "<h3>LogIn</h3>";
                Label5.Text = "<h3>Find your meeting</h3>";
                

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            UserDetails x = new UserDetails();
            x.UserName = TextBox1.Text;
            x.Password = TextBox2.Text;
            Session["UserName"] = TextBox1.Text;
            int counter = x.CheckCredentials();
            if (counter == 1)
            {
                Response.Redirect("HomePage.aspx");
            }
            else
            {
                Label3.Text = " <h4> Incorrect password or username</h4>";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["First_find"] = TextBox3.Text;
            Session["Last_find"] = TextBox4.Text;
            Response.Redirect("Find.aspx");
        }
    }
}