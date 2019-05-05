using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MeetingRoom2
{
    public partial class EditPeopleList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label3.Text = "";
            if (!IsPostBack)
            {
                Label1.Text = Session["UserName"].ToString();
               
            }
            

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label2.Text = GridView1.SelectedRow.Cells[1].Text;
            if (GridView2.Rows.Count == 0)
            {
                Label3.Text = "<h3> List is empty</h3>";
            }
            if (GridView2.Rows.Count != 0)
            {
                Label3.Text = "";
            }
        }
    }
}