using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MeetingRoom2
{
    public partial class MyMeetings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label1.Text = Session["UserName"].ToString();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label2.Text = GridView1.SelectedRow.Cells[1].Text.ToString();
            Session["ReservationID"] = Label2.Text;
            Response.Redirect("AddPeople.aspx");
        }
    }
}