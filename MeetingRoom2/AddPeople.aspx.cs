using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MeetingRoom2
{
    public partial class AddPeople : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label1.Text = Session["ReservationID"].ToString();
                
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            UserDetails u = new UserDetails();
            u.FirstName = TextBox1.Text;
            u.LastName = TextBox2.Text;
            u.PhoneNo = TextBox4.Text;
            u.Email = TextBox3.Text;
            u.ReservationID = Label1.Text;
            u.insert_people();
            // u.ReservationID =Convert.ToInt32( Label1.Text);
            
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
    }
}