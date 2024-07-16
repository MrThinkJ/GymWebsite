using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Website_Gym
{
    public partial class admin_profile : System.Web.UI.Page
    {
        Connect connect;
        protected void Page_Load(object sender, EventArgs e)
        {
            connect = new Connect();
            populateInfo();
        }

        protected void btnUpdateProfile_Click(object sender, EventArgs e)
        {
            //string username = Application["user"].ToString();
            string username = "test";
            string password = txtPassword.Text;

            string updateProfileSql = string.Format("update admin set password = '{0}' where username = '{1}'",
                password, username);
            int kq = connect.executeNonQuery(updateProfileSql);
            populateInfo();
        }

        private void populateInfo()
        {
            //string username = Application["user"].ToString();
            string username = "test";
            string getInfoSql = string.Format("select * from admin where username = '{0}'", username);
            DataTable dt = connect.getData(getInfoSql);
            DataRow userRow = dt.Rows[0];

            litUsername.Text = userRow["username"].ToString();
            litPassword.Text = userRow["password"].ToString();
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtPassword.Text = string.Empty;
        }
    }
}