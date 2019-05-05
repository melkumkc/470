using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MeetingRoom2
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         if(!Page.IsPostBack)
            {
                
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string noPeople = TextBox1.Text;
            Label2.Text = (Convert.ToInt32(noPeople) + 10).ToString();
            Label4.Text = TextBox1.Text;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label7.Text = GridView1.SelectedRow.Cells[1].Text;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            GridView1.Visible = false;

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label5.Text = "1";
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            for (int i = 0; i < 2;i++)
            {
                CheckBox ch = (CheckBox)GridView2.Rows[0].FindControl("CheckBox1");
                if (ch.Checked==true)
                {
                    Label5.Text = "6";
                }
                CheckBox ch1 = (CheckBox)GridView2.Rows[0].FindControl("CheckBox2");
                if (ch1.Checked == true)
                {
                    Label6.Text = "7";
                }
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            Label8.Text = Calendar1.SelectedDate.ToShortDateString();
        }
    }
}