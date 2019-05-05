using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MeetingRoom2
{
    public partial class Find : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Label1.Text = Session["First_find"].ToString();
                Label2.Text = Session["Last_find"].ToString();
                Label3.Text = "  Your meetings: ";
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
           Label4.Text =  GridView1.SelectedRow.Cells[3].Text;
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label5.Text = GridView2.SelectedRow.Cells[1].Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}