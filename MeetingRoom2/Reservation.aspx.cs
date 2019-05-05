using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MeetingRoom2
{
    public partial class Reservation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
            if (!IsPostBack)
            {
                Label1.Text = Session["RoomID"].ToString();
                Label2.Text = Session["numberOfPeople"].ToString();
                Label3.Text = Session["ReservationDate"].ToString();
                Label4.Text = "<h4> RoomID</h4>";
                Label5.Text = "<h4>   Number of people</h4>";
                Label6.Text = "<h4>   Date</h4>";
                Label30.Text = Session["UserName"].ToString();
                GridView1.Visible = false;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Search3.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            Reservations y = new Reservations();
            y.update_available();
            Button1.Visible = false;
            Button2.Visible = false;
            Button3.Visible = true;
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {


            
                CheckBox ch = (CheckBox)GridView1.Rows[0].FindControl("CheckBox8");
            

                if (ch.Checked == true)
                {
                if (GridView1.Rows[0].Cells[1].Text == "R")
                    Label7.Text = "600-700 is not available; ";
                else
                    Label7.Text = "600-700; ";
                }
                if (ch.Checked == false)
                {
                    Label7.Text = "";
                }

                CheckBox ch1 = (CheckBox)GridView1.Rows[0].FindControl("CheckBox9");
                if (ch1.Checked == true)
                {
                if (GridView1.Rows[0].Cells[3].Text == "R")
                    Label8.Text = "700-800 is not available; ";
                else
                    Label8.Text = "700-800; ";
                }
        
                if (ch1.Checked == false)
                {
                    Label8.Text = "";
                }
                CheckBox ch2 = (CheckBox)GridView1.Rows[0].FindControl("CheckBox10");
                if (ch2.Checked == true)
                {
                if (GridView1.Rows[0].Cells[5].Text == "R")
                    Label9.Text = "800-900 is not available; ";
                else
                    Label9.Text = "800-900; ";
            
                }
                if (ch2.Checked == false)
                {
                Label9.Text = DBNull.Value.ToString();
                }
                CheckBox ch3 = (CheckBox)GridView1.Rows[0].FindControl("CheckBox11");
                if (ch3.Checked == true)
                {
                if (GridView1.Rows[0].Cells[7].Text == "R")
                    Label10.Text = "900-1000 is not available; ";
                else
                    Label10.Text = "900-1000; ";
                }
                if (ch3.Checked == false)
                {
                    Label10.Text = "";
                }
                CheckBox ch4 = (CheckBox)GridView1.Rows[0].FindControl("CheckBox12");
                if (ch4.Checked == true)
                {
                if (GridView1.Rows[0].Cells[9].Text == "R")
                    Label11.Text = "1000-1100 is not available; ";
                else
                    Label11.Text = "1000-1100; ";
                }
                if (ch4.Checked == false)
                {
                    Label11.Text = "";
                }
                CheckBox ch5 = (CheckBox)GridView1.Rows[0].FindControl("CheckBox13");
                if (ch5.Checked == true)
                {
                if (GridView1.Rows[0].Cells[11].Text == "R")
                    Label12.Text = "1100-1200 is not available; ";
                else
                    Label12.Text = "1100-1200; ";
                }
                if (ch5.Checked == false)
                {
                    Label12.Text = "";
                }
                CheckBox ch6 = (CheckBox)GridView1.Rows[0].FindControl("CheckBox14");
                if (ch6.Checked == true)
                {
                if (GridView1.Rows[0].Cells[13].Text == "R")
                    Label13.Text = "1200-1300 is not available; ";
                else
                    Label13.Text = "1200-1300; ";
                }
                if (ch6.Checked == false)
                {
                    Label13.Text = "";
                }
                CheckBox ch7 = (CheckBox)GridView1.Rows[0].FindControl("CheckBox15");
                if (ch7.Checked == true)
                {
                if (GridView1.Rows[0].Cells[15].Text == "R")
                    Label14.Text = "1300-1400 is not available; ";
                else
                    Label14.Text = "1300-1400; ";
            }
                if (ch7.Checked == false)
                {
                    Label14.Text = "";
                }
                CheckBox ch8 = (CheckBox)GridView1.Rows[0].FindControl("CheckBox16");
                if (ch8.Checked == true)
                {
                if (GridView1.Rows[0].Cells[17].Text == "R")
                    Label15.Text = "1400-1500 is not available; ";
                else
                    Label15.Text = "1400-1500; ";
            }
                if (ch8.Checked == false)
                {
                    Label15.Text = "";
                }
                CheckBox ch9 = (CheckBox)GridView1.Rows[0].FindControl("CheckBox17");
                if (ch9.Checked == true)
                {
                if (GridView1.Rows[0].Cells[19].Text == "R")
                    Label16.Text = "1500-1600 is not available; ";
                else
                    Label16.Text = "1500-1600; ";
            }
                if (ch9.Checked == false)
                {
                    Label16.Text = "";
                }
                CheckBox ch10 = (CheckBox)GridView1.Rows[0].FindControl("CheckBox18");
                if (ch10.Checked == true)
                {
                if (GridView1.Rows[0].Cells[21].Text == "R")
                    Label17.Text = "1600-1700 is not available; ";
                else
                    Label17.Text = "1600-1700; ";
                 }
                if (ch10.Checked == false)
                {
                    Label17.Text = "";
                }
                CheckBox ch11 = (CheckBox)GridView1.Rows[0].FindControl("CheckBox19");
                if (ch11.Checked == true)
                {
                if (GridView1.Rows[0].Cells[23].Text == "R")
                    Label18.Text = "1700-1800 is not available; ";
                else
                    Label18.Text = "1700-1800; ";
                 }
                if (ch11.Checked == false)
                {
                    Label18.Text = "";
                }
                CheckBox ch12 = (CheckBox)GridView1.Rows[0].FindControl("CheckBox20");
                if (ch12.Checked == true)
                {
                if (GridView1.Rows[0].Cells[25].Text == "R")
                    Label19.Text = "1800-1900 is not available; ";
                else
                    Label19.Text = "1800-1900; ";
            }
                if (ch12.Checked == false)
                {
                    Label19.Text = "";
                }
                CheckBox ch13 = (CheckBox)GridView1.Rows[0].FindControl("CheckBox21");
                if (ch13.Checked == true)
                {
                if (GridView1.Rows[0].Cells[27].Text == "R")
                    Label20.Text = "1900-2000 is not available; ";
                else
                    Label20.Text = "1900-2000; ";
            }
                if (ch13.Checked == false)
                {
                    Label20.Text = "";
                }


                if (Label7.Text.Contains("is not available") || Label8.Text.Contains("is not available") ||
                Label9.Text.Contains("is not available") || Label10.Text.Contains("is not available") ||
                Label11.Text.Contains("is not available") || Label12.Text.Contains("is not available") || Label13.Text.Contains("is not available") ||
                Label14.Text.Contains("is not available") || Label15.Text.Contains("is not available") ||
                Label16.Text.Contains("is not available") || Label17.Text.Contains("is not available") || Label18.Text.Contains("is not available")
                || Label19.Text.Contains("is not available") || Label20.Text.Contains("is not available"))
            {
                Label21.Text = "<h2> Please make a proper selection !</h2>";
                Button4.Visible = true;
            }
            if (Label7.Text == "" && Label8.Text == "" &&
           Label9.Text == "" && Label10.Text == "" &&
           Label11.Text == "" && Label12.Text == "" && Label13.Text == "" &&
           Label14.Text== "" && Label15.Text == "" &&
           Label16.Text == "" && Label17.Text == "" && Label18.Text== ""
           && Label19.Text == "" && Label20.Text == "")
            {
                Label21.Text = "<h2> Please make atleast one selection !</h2>";
                Button4.Visible = true;
            }
            Label22.Text = "<h4> Hours: </h4>";
            Button5.Visible = true;
            //Label1.Visible = false; Label2.Visible = false; Label3.Visible = false; Label4.Visible = false;
            // Label5.Visible = false; Label6.Visible = false;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Label21.Text = "";
            Button4.Visible = false;
            Label7.Text = ""; Label12.Text = ""; Label17.Text = "";
            Label8.Text = ""; Label13.Text = ""; Label18.Text = "";
            Label9.Text = ""; Label14.Text = ""; Label19.Text = "";
            Label10.Text = ""; Label15.Text = ""; Label20.Text = "";
            Label11.Text = ""; Label16.Text = "";
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Label21.Text = "<h3>Please enter the name of the meeting</h3>";
            TextBox1.Visible = true;
            GridView1.Visible = false;
            Button5.Visible = false;
            Button3.Visible = false;
            Button10.Visible = true;
        }

        

        protected void Button6_Click(object sender, EventArgs e)
        {
            Label21.Text = "<h3>Your Reservation was successful ....</h3>";
            Button6.Visible = false;
            
            Button9.Visible = true;
            Reservations k = new Reservations();
            k.Date = Session["ReservationDate"].ToString();
            k.RoomID = Session["RoomID"].ToString();
            k.MeetingName = Label24.Text;
            k.FirstName = Label26.Text;
            k.LastName = Label27.Text;
            k.CompanyName = Label29.Text;
            k.UserName = Label30.Text;
            if (Label7.Text == "600-700; ")
            {
                k.Six = "R";
            }
            if (Label7.Text == "")
            {
                k.Six = "";
            }
            if (Label8.Text == "700-800; ")
            {
                k.Seven = "R";
            }
            if (Label8.Text == "")
            {
                k.Seven = "";
            }
            if (Label9.Text == "800-900; ")
            {
                k.Eight = "R";
            }
            if (Label9.Text == "")
            {
                k.Eight = "";
            }
            if (Label10.Text == "900-1000; ")
            {
                k.Nine = "R";
            }
            if (Label10.Text == "")
            {
                k.Nine = "";
            }
            if (Label11.Text == "1000-1100; ")
            {
                k.Ten = "R";
            }
            if (Label11.Text == "")
            {
                k.Ten = "";
            }
            if (Label12.Text == "1100-1200; ")
            {
                k.Eleven = "R";
            }
            if (Label12.Text == "")
            {
                k.Eleven = "";
            }
            if (Label13.Text != "")
            {
                k.Twelve = "R";
            }
            if (Label13.Text == "")
            {
                k.Twelve = "";
            }
            if (Label14.Text == "1300-1400; ")
            {
                k.Thirteen = "R";
            }
            if (Label14.Text == "")
            {
                k.Thirteen = "";
            }
            if (Label15.Text == "1400-1500; ")
            {
                k.Fourteen = "R";
            }
            if (Label15.Text == "")
            {
                k.Fourteen = "";
            }
            if (Label16.Text == "1500-1600; ")
            {
                k.Fifteen = "R";
            }
            if (Label16.Text == "")
            {
                k.Fifteen = "";
            }
            if (Label17.Text == "1600-1700; ")
            {
                k.Sixteen = "R";
            }
            if (Label17.Text == "")
            {
                k.Sixteen = "";
            }
            if (Label18.Text == "1700-1800; ")
            {
                k.Seventeen = "R";
            }
            if (Label18.Text == "")
            {
                k.Seventeen = "";
            }
            if (Label19.Text == "1800-1900; ")
            {
                k.Eighteen = "R";
            }
            if (Label19.Text == "")
            {
                k.Eighteen = "";
            }
            if (Label20.Text == "1900-2000; ")
            {
                k.Ninteen = "R";
            }
            if (Label20.Text == "")
            {
                k.Ninteen = "";
            }
            k.insert_Reservation();
           k.update_available();
            Button7.Visible = false;
        }

         protected void Button7_Click(object sender, EventArgs e)
         {
            Response.Redirect("HomePage.aspx");
         }

       

        protected void Button9_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            Label23.Text = "<h3> MeetingName: </h3>";
            Label24.Text = TextBox1.Text.ToString();
            TextBox1.Text = " ";
            TextBox2.Visible = true;
            
            Button10.Visible = false;
            Button11.Visible = true;
            Label21.Text = "<h3> Please enter cordinator's First and Last name </h3>";
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            Label25.Text = "<h3> Cordinator</h3>";
            Label26.Text = TextBox1.Text;
            Label27.Text = TextBox2.Text;
            Label21.Text = "<h3> Please enter Company Name </h3>";
            TextBox1.Text = " ";
            TextBox2.Text = " ";
            TextBox2.Visible = false;
            Button11.Visible = false;
            Button12.Visible = true;
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            Label28.Text = "<h3> Company: </h3>";
            Label29.Text = TextBox1.Text;
            Label21.Text = "<h3> Please confirm your reservation </h3>";
            Button6.Visible = true;
            Button7.Visible = true;
            
            Button12.Visible = false;
            TextBox1.Visible = false;


        }
    }
}