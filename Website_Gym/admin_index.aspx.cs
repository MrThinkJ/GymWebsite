using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace Website_Gym
{
    public partial class admin_index : System.Web.UI.Page
    {
        Connect db; // Biến để lưu trữ đối tượng Connect

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                db = new Connect(); // Khởi tạo Connect nếu chưa tồn tại
                LoadClassData();
                LoadData();
            }
        }

        private void LoadClassData()
        {
            string sql = "SELECT class.name AS ClassName, COUNT(customer.customer_id) AS StudentCount " +
                         "FROM class " +
                         "LEFT JOIN customer ON class.class_id = customer.class_id " +
                         "GROUP BY class.name";
            DataTable dt = db.getData(sql);

            ClassRepeater.DataSource = dt;
            ClassRepeater.DataBind();

            int totalUsers = 0;
            foreach (DataRow row in dt.Rows)
            {
                totalUsers += Convert.ToInt32(row["StudentCount"]);
            }
            TotalUsers.Text = totalUsers.ToString();
        }

        private void LoadData()
        {
            try
            {
                // Đọc số lượng người dùng mục tiêu từ file Dem.txt
                string path = Server.MapPath("~/Dem.txt");
                if (File.Exists(path))
                {
                    string content = File.ReadAllText(path);
                    if (int.TryParse(content, out int targetUsers))
                    {
                        TargetUsersLiteral.Text = targetUsers.ToString();
                    }
                    else
                    {
                        TargetUsersLiteral.Text = "0";
                    }
                }
                else
                {
                    TargetUsersLiteral.Text = "0";
                }

                // Các phần còn lại của phương thức LoadData()
                string sqlNumberUsers = "SELECT COUNT(*) FROM customer";
                int numberUsers = db.executeOrGetSingleData(sqlNumberUsers);
                NumberUsersLiteral.Text = "100";

                if (Application["SLOnline"] != null)
                {
                    OnlineUsersLiteral.Text = Application["SLOnline"].ToString();
                }
                else
                {
                    OnlineUsersLiteral.Text = "0";
                }
                PercentageChangeLiteral.Text = numberUsers.ToString();
            }
            catch (Exception ex)
            {
                // Ghi log hoặc xử lý ngoại lệ một cách thích hợp
                System.Diagnostics.Debug.WriteLine("Lỗi trong LoadData: " + ex.Message);
            }
        }
    }
}