using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace MeetingRoom2
{
    public class Reservations
    {
        private string m_date;
        private string m_roomID;
        private string m_six;
        private string m_seven;
        private string m_eight;
        private string m_nine;
        private string m_ten;
        private string m_eleven;
        private string m_twelve;
        private string m_thirteen;
        private string m_fourteen;
        private string m_fifteen;
        private string m_sixteen;
        private string m_seventeen;
        private string m_eighteen;
        private string m_ninteen;
        private string m_meetingName;
        private string m_firstName;
        private string m_lastName;
        private string m_companyName;
        private int m_ReservationID;
        private string m_UserName;

        public string Date { get => m_date; set => m_date = value; }
        public string RoomID { get => m_roomID; set => m_roomID = value; }
        public string Six { get => m_six; set => m_six = value; }
        public string Seven { get => m_seven; set => m_seven = value; }
        public string Eight { get => m_eight; set => m_eight = value; }
        public string Nine { get => m_nine; set => m_nine = value; }
        public string Ten { get => m_ten; set => m_ten = value; }
        public string Eleven { get => m_eleven; set => m_eleven = value; }
        public string Twelve { get => m_twelve; set => m_twelve = value; }
        public string Thirteen { get => m_thirteen; set => m_thirteen = value; }
        public string Fourteen { get => m_fourteen; set => m_fourteen = value; }
        public string Fifteen { get => m_fifteen; set => m_fifteen = value; }
        public string Sixteen { get => m_sixteen; set => m_sixteen = value; }
        public string Seventeen { get => m_seventeen; set => m_seventeen = value; }
        public string Eighteen { get => m_eighteen; set => m_eighteen = value; }
        public string Ninteen { get => m_ninteen; set => m_ninteen = value; }
        public string MeetingName { get => m_meetingName; set => m_meetingName = value; }
        public string FirstName { get => m_firstName; set => m_firstName = value; }
        public string LastName { get => m_lastName; set => m_lastName = value; }
        public string CompanyName { get => m_companyName; set => m_companyName = value; }
        
        public string UserName { get => m_UserName; set => m_UserName = value; }
        public int ReservationID { get => m_ReservationID; set => m_ReservationID = value; }

        public int insert_available()
        {
            SqlConnection cn = null;
            SqlCommand cmd = null;
            int counter = 0;
            try
            {
                cn = new SqlConnection();
                cn.ConnectionString = "data source=.;initial catalog=MeetingRoom;integrated security=true;";

                cmd = new SqlCommand();
                cmd.Connection = cn;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "[USP_Available_Insert]";

                cmd.Parameters.AddWithValue("@Date", Date);
                cmd.Parameters.AddWithValue("@RoomID", RoomID);


                cn.Open();
                counter = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);

            }
            finally
            {
                if (cn != null)
                {
                    cn.Close();
                    cn.Dispose();
                    cn = null;
                }

            }
            return (counter);
        }
        public int update_available()
        {
            SqlConnection cn = null;
            SqlCommand cmd = null;
            int counter = 0;
            try
            {
                cn = new SqlConnection();
                cn.ConnectionString = "data source=.;initial catalog=MeetingRoom;integrated security=true;";

                cmd = new SqlCommand();
                cmd.Connection = cn;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "[USP_Available_Update2]";

               


                cn.Open();
                counter = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);

            }
            finally
            {
                if (cn != null)
                {
                    cn.Close();
                    cn.Dispose();
                    cn = null;
                }

            }
            return (counter);
        }
        public int insert_Reservation()
        {
            SqlConnection cn = null;
            SqlCommand cmd = null;
            int counter = 0;
            try
            {
                cn = new SqlConnection();
                cn.ConnectionString = "data source=.;initial catalog=MeetingRoom;integrated security=true;";

                cmd = new SqlCommand();
                cmd.Connection = cn;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "[USP_Reservation_Insert]";
                cmd.Parameters.AddWithValue("@Date", Date);
                cmd.Parameters.AddWithValue("@RoomID", RoomID);
                cmd.Parameters.AddWithValue("@UserName", UserName);
                if (Six == "")
                {
                    cmd.Parameters.AddWithValue("@Six", DBNull.Value);
                }
                else
                {
                    cmd.Parameters.AddWithValue("@Six", Six);
                }
                if (Seven == "")
                {
                    cmd.Parameters.AddWithValue("@Seven", DBNull.Value);
                }
                else
                {
                    cmd.Parameters.AddWithValue("@Seven", Seven);
                }
                if (Eight == "")
                {
                    cmd.Parameters.AddWithValue("@Eight", DBNull.Value);
                }
                else
                {
                    cmd.Parameters.AddWithValue("@Eight", Eight);
                }
                if (Nine == "")
                {
                    cmd.Parameters.AddWithValue("@Nine", DBNull.Value);
                }
                else
                {
                    cmd.Parameters.AddWithValue("@Nine", Nine);
                }
                if (Ten == "")
                {
                    cmd.Parameters.AddWithValue("@Ten", DBNull.Value);
                }
                else
                {
                    cmd.Parameters.AddWithValue("@Ten", Ten);
                }
                if (Eleven == "")
                {
                    cmd.Parameters.AddWithValue("@Eleven", DBNull.Value);
                }
                else
                {
                    cmd.Parameters.AddWithValue("@Eleven", Eleven);
                }
                if (Twelve == "")
                {
                    cmd.Parameters.AddWithValue("@Tweleve", DBNull.Value);
                }
                else
                {
                    cmd.Parameters.AddWithValue("@Tweleve", Twelve);
                }
                if (Thirteen == "")
                {
                    cmd.Parameters.AddWithValue("@Thirteen", DBNull.Value);
                }
                else
                {
                    cmd.Parameters.AddWithValue("@Thirteen", Thirteen);
                }
                if (Fourteen == "")
                {
                    cmd.Parameters.AddWithValue("@Fourteen", DBNull.Value);
                }
                else
                {
                    cmd.Parameters.AddWithValue("@Fourteen", Fourteen);
                }
                if (Fifteen == "")
                {
                    cmd.Parameters.AddWithValue("@Fifteen", DBNull.Value);
                }
                else
                {
                    cmd.Parameters.AddWithValue("@Fifteen", Fifteen);
                }
                if (Sixteen == "")
                {
                    cmd.Parameters.AddWithValue("@Sixteen", DBNull.Value);
                }
                else
                {
                    cmd.Parameters.AddWithValue("@Sixteen", Sixteen);
                }
                if (Seventeen == "")
                {
                    cmd.Parameters.AddWithValue("@Seventeen", DBNull.Value);
                }
                else
                {
                    cmd.Parameters.AddWithValue("@Seventeen", Seventeen);
                }
                if (Eighteen == "")
                {
                    cmd.Parameters.AddWithValue("@Eighteen", DBNull.Value);
                }
                else
                {
                    cmd.Parameters.AddWithValue("@Eighteen", Eighteen);
                }
                if (Ninteen == "")
                {
                    cmd.Parameters.AddWithValue("@Ninteen", DBNull.Value);
                }
                else
                {
                    cmd.Parameters.AddWithValue("@Ninteen", Ninteen);
                }
                cmd.Parameters.AddWithValue("@meetingName", MeetingName);
                cmd.Parameters.AddWithValue("@firstName", FirstName);
                cmd.Parameters.AddWithValue("@lastName", LastName);
                cmd.Parameters.AddWithValue("@companyName", CompanyName); 



                cn.Open();
                counter = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);

            }
            finally
            {
                if (cn != null)
                {
                    cn.Close();
                    cn.Dispose();
                    cn = null;
                }

            }
            return (counter);
        }
       

    }
}
