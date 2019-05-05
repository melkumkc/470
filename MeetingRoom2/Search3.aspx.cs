using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MeetingRoom2
{
    public partial class Search3 : System.Web.UI.Page
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
            Session["numberOfPeople"] = Label5.Text;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label6.Text = "<h5> Meeting Room: </h5>";
            Label7.Text = GridView1.SelectedRow.Cells[1].Text;
            Session["RoomID"] = Label7.Text;
            Calendar1.Visible = true;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            DateTime now = DateTime.Now.Date;
            Label8.Text = " <h5>Date: <h5>";
            if (now > Calendar1.SelectedDate)
            {
                Label9.Text = "Please enter a valid date!";
            }
            else
            {
                Label9.Text = Calendar1.SelectedDate.ToShortDateString();
                Button2.Visible = true;
                Session["ReservationDate"] = Label9.Text;
               
                Reservations x = new Reservations();
                int counter = 0;
                try
                {
                    x.Date = Label9.Text;
                    x.RoomID = Label7.Text;

                    counter = x.insert_available();
                    if (counter == 1)
                    {
                        Label10.Text = "Updated!!";
                    }
                }
                catch (Exception ex)
                {

                    Label10.Text = ex.Message;
                }

                Response.Redirect("Reservation.aspx");

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           
        }
    }
}