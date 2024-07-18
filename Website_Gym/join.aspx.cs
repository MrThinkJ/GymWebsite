using System;
using System.Data;
using System.Web.UI.WebControls;
using Website_Gym;
using System.Web.UI;

namespace Website_Gym
{
    public partial class join : System.Web.UI.Page
    {
        Connect connect;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                connect = new Connect();
                LoadInstructors();
                LoadClasses();
            }
        }

        private void LoadInstructors()
        {
            string query = "SELECT instructor_id, name FROM instructor";
            DataTable dt = connect.getData(query);

            ddlInstructor.DataSource = dt;
            ddlInstructor.DataTextField = "name";
            ddlInstructor.DataValueField = "instructor_id";
            ddlInstructor.DataBind();

            ddlInstructor.Items.Insert(0, new ListItem("Instructor", ""));
        }

        private void LoadClasses()
        {
            string query = "SELECT class_id, name FROM class";
            DataTable dt = connect.getData(query);

            ddlClass.DataSource = dt;
            ddlClass.DataTextField = "name";
            ddlClass.DataValueField = "class_id";
            ddlClass.DataBind();

            ddlClass.Items.Insert(0, new ListItem("Class", ""));
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            String name = txtName.Text;
            String email = txtEmail.Text;
            String phone = txtPhone.Text;
            int selectedClass = ddlClass.SelectedIndex;
            int selectedInstructor = ddlInstructor.SelectedIndex;
            String day = ddlDay.SelectedValue;

            if (connect == null)
                connect = new Connect();
            string insertCustomerSql = "insert into customer(name, email, phone, class_id, instructor_id)" +
                string.Format("values ('{0}', '{1}', '{2}', '{3}', '{4}')", name, email, phone, selectedClass, selectedInstructor);
            int kq = connect.executeNonQuery(insertCustomerSql);
            if (kq >= 1)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Register Successfully!');", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Register Failed!');", true);
            }
            Reset();
        }

        protected void Reset()
        {
            txtName.Text = string.Empty;
            txtPhone.Text = string.Empty;
            txtEmail.Text = string.Empty;
            ddlClass.SelectedIndex = 0;
            ddlInstructor.SelectedIndex = 0;
        }
    }
}