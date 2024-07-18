using System;
using System.Data;
using System.Data.SqlClient;

namespace Website_Gym
{
    public class Connect
    {
        SqlConnection conn;

        public Connect()
        {
            // Khởi tạo kết nối trong constructor
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\QLGym.mdf;Integrated Security=True";
            conn = new SqlConnection(connectionString);
        }

        public void openConnection()
        {
            try
            {
                if (conn.State != ConnectionState.Open)
                {
                    conn.Open();
                }
            }
            catch (Exception e)
            {
                // Log exception
                throw new Exception("Error opening connection: " + e.Message);
            }
        }

        public void closeConnection()
        {
            try
            {
                if (conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
            }
            catch (Exception e)
            {
                // Log exception
                throw new Exception("Error closing connection: " + e.Message);
            }
        }

        public int executeNonQuery(string sql)
        {
            int result = 0;
            try
            {
                openConnection();
                using (SqlCommand command = new SqlCommand(sql, conn))
                {
                    result = command.ExecuteNonQuery();
                }
            }
            catch (Exception e)
            {
                // Log exception
                throw new Exception("Error executing non-query: " + e.Message);
            }
            finally
            {
                closeConnection();
            }
            return result;
        }

        public int executeOrGetSingleData(string sql)
        {
            int result = 0;
            try
            {
                openConnection();
                SqlCommand comm = new SqlCommand(sql, conn);
                object scalarResult = comm.ExecuteScalar();
                if (scalarResult != null && scalarResult != DBNull.Value)
                {
                    result = Convert.ToInt32(scalarResult);
                }
            }
            catch (Exception e)
            {
                // Log exception or handle as needed
                throw new Exception("Error executing or getting single data: " + e.Message);
            }
            finally
            {
                closeConnection();
            }
            return result;
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
                // Log exception or handle as needed
                throw new Exception("Error getting data: " + e.Message);
            }
            finally
            {
                closeConnection();
            }
            return dt;
        }
    }
}
