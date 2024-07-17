using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Website_Gym
{
    public partial class login_admin : System.Web.UI.Page
    {
        Connect connect;

        protected void Page_Load(object sender, EventArgs e)
        {
            connect = new Connect();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (connect == null)
                connect = new Connect();
            connect.openConnection();

            string username = txtUsername.Text;
            string password = txtPassword.Text;

            string sql = string.Format("SELECT COUNT(*) FROM admin WHERE username = '{0}' AND password = '{1}'", username, password);
            int execute = connect.executeOrGetSingleData(sql);

            if (execute <= 0)
            {
                lblMessage.Text = "Invalid username or password!";
            }
            else
            {
                Session["user"] = username;
                Response.Redirect("admin_index.aspx");
            }
        }
    }
}
