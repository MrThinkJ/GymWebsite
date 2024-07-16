using System;
using System.Data;
using System.Data.SqlClient;

namespace Website_Gym
{
    public class Connect
    {
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Study\TMDT\GymWebsiteProject\Website_Gym\App_Data\QLGym.mdf;Integrated Security=True";
        private SqlConnection conn;

        public void openConnection()
        {
            conn = new SqlConnection(connectionString);
            conn.Open(); // Mở kết nối ở đây
        }

        public void closeConnection()
        {
            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }
        }

        public int executeNonQuery(string sql, SqlParameter[] parameters)
        {
            int kq = 0;
            try
            {
                openConnection(); // Đảm bảo kết nối được mở ở đây
                using (SqlCommand command = new SqlCommand(sql, conn))
                {
                    command.Parameters.AddRange(parameters);
                    kq = command.ExecuteNonQuery();
                }
            }
            catch (Exception e)
            {
                // Log exception
                throw new Exception("Database error: " + e.Message);
            }
            finally
            {
                closeConnection();
            }
            return kq;
        }

        public DataTable getData(string sql)
        {
            DataTable dt = new DataTable();
            try
            {
                openConnection();
                SqlDataAdapter da = new SqlDataAdapter(sql, conn);
                da.Fill(dt);
            }
            catch (Exception e)
            {
                dt = null;
            }
            finally
            {
                closeConnection();
            }
            return dt;
        }
    }
}