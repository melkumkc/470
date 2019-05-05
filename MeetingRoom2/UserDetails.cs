using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace MeetingRoom2
{
    public class UserDetails
    {
        private string m_UserName;
        private string m_Password;
        private string m_FirstName;
        private string m_LastName;
        private string m_PhoneNo;
        private string m_Email;
        private string m_ReservationID;


        public string UserName { get => m_UserName; set => m_UserName = value; }
        public string Password { get => m_Password; set => m_Password = value; }
        public string FirstName { get => m_FirstName; set => m_FirstName = value; }
        public string LastName { get => m_LastName; set => m_LastName = value; }
        public string PhoneNo { get => m_PhoneNo; set => m_PhoneNo = value; }
        public string Email { get => m_Email; set => m_Email = value; }
        public string ReservationID { get => m_ReservationID; set => m_ReservationID = value; }

        public int CheckCredentials()
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
                cmd.CommandText = "[USP_checkCredentials]";

                cmd.Parameters.AddWithValue("@UserName", UserName);
                cmd.Parameters.AddWithValue("@Password", Password);


                cn.Open();
                counter = Convert.ToInt32(cmd.ExecuteScalar().ToString());
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
        public int insert_people()
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
                cmd.CommandText = "[USP_People_Insert]";

                cmd.Parameters.AddWithValue("@FirstName", FirstName);
                cmd.Parameters.AddWithValue("@LastName", LastName);
                cmd.Parameters.AddWithValue("@PhoneNo", PhoneNo);
                cmd.Parameters.AddWithValue("@Email", Email);
                cmd.Parameters.AddWithValue("@ReservatinID", ReservationID);


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