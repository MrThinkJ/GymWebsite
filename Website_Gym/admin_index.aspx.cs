using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Website_Gym
{
    public partial class admin_index : System.Web.UI.Page
    {
        Connect connect;
        protected void Page_Load(object sender, EventArgs e)
        {
            connect = new Connect();
            if (!IsPostBack)
            {
                Bind_Data();
            }
        }

        private void Bind_Data()
        {
            // Get the total number of users
            string userCountSql = "SELECT COUNT(*) FROM customer";
            int userCountResult = connect.executeOrGetSingleData(userCountSql);
            totalUsers1.Text = userCountResult.ToString();
            totalUsers2.Text = userCountResult.ToString();
            totalUsers3.Text = userCountResult.ToString();
            userOnline.Text = Application["SLOnline"].ToString();

            // Get the number of customers per class, excluding classes with zero customers
            string classCountSql = @"
                SELECT 
                    c.name AS ClassName, 
                    COUNT(cust.customer_id) AS CustomerCount
                FROM 
                    classes c
                LEFT JOIN 
                    customer cust ON c.classes_id = cust.class_id
                GROUP BY 
                    c.name
                HAVING 
                    COUNT(cust.customer_id) > 0
                ORDER BY 
                    c.name";

            DataTable dt = connect.getData(classCountSql);
            if (dt != null && dt.Rows.Count > 0)
            {
                classRepeater.DataSource = dt;
                classRepeater.DataBind();
            }
        }
    }
}