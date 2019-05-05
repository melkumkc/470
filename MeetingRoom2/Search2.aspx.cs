using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MeetingRoom2
{
    public partial class Search2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Label1.Text = "<h2> Find meeting room</h2>";
                Label2.Text = " No.of persons";

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string noPeople = TextBox1.Text;
            Label3.Text = (Convert.ToInt32(noPeople) + 10).ToString();
            Label4.Visible = true;
            Label4.Text = "<h5>Meeting for: </h5>";
            Label5.Visible = true;
            Label5.Text = noPeople;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label6.Text = "<h5> Meeting Room</h5>";
            Label7.Text = GridView1.SelectedRow.Cells[1].Text;
            Label6.Visible = true;
            Label7.Visible = true;
            Calendar1.Visible = true;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            Label8.Text = " Date";
            Label9.Text = Calendar1.SelectedDate.ToShortDateString();
            Label8.Visible = true;
            Label9.Visible = true;

        }
    }
}