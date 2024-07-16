using System;
using System.Data;
using System.Web.UI;

namespace Website_Gym
{
    public partial class index : System.Web.UI.Page
    {
        private Connect connect;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadClasses();
            }
        }

        private void LoadClasses()
        {
            connect = new Connect();
            string sql = "SELECT name, image, position FROM classes";
            DataTable dt = connect.getData(sql);

            if (dt != null && dt.Rows.Count > 0)
            {
                ClassesRepeater.DataSource = dt;
                ClassesRepeater.DataBind();
            }
        }
    }
}