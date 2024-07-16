using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Website_Gym
{
    public partial class admin_instructor : System.Web.UI.Page
    {
        Connect connect;
        protected void Page_Load(object sender, EventArgs e)
        {
            connect = new Connect();
            if (!IsPostBack)
            {
                loadAllComponent();
                PopulateTable();
            }
        }

        private void loadAllComponent()
        {
            connect = new Connect();
            string getClassSql = "select * from class";
            DataTable classDt = connect.getData(getClassSql);
            ddlClasses.DataSource = classDt;
            ddlClasses.DataTextField = "name";
            ddlClasses.DataValueField = "class_id";
            ddlClasses.DataBind();
            ddlClasses.Items.Insert(0, new ListItem("Select a Class", ""));
        }

        protected void ActionButton_Command(object sender, CommandEventArgs e)
        {
            string instructorId = e.CommandArgument.ToString();

            if (e.CommandName == "Delete")
            {
                DeleteInstructor(instructorId);
            }
            else if (e.CommandName == "Edit")
            {
                EditInstructor(instructorId);
            }
            PopulateTable();
        }

        private void DeleteInstructor(string instructorId)
        {
            string deleteInstructorSql = string.Format("delete from instructor where instructor_id = '{0}'", instructorId);
            string setInstructorCustomerToNullSql = string.Format("update customer set instructor_id = null where instructor_id = '{0}'", instructorId);
            int kq = connect.executeNonQuery(setInstructorCustomerToNullSql);
            kq = connect.executeNonQuery(deleteInstructorSql);
            PopulateTable();
        }

        private void EditInstructor(string instructorId)
        {
            
        }

        private void PopulateTable()
        {
            connect = new Connect();
            string sql = "select i.*, c.name as class_name from instructor i inner join class c on i.class_id = c.class_id";
            DataTable dt = connect.getData(sql);
            InstructorGridView.DataSource = dt;
            InstructorGridView.DataBind();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            string phone = txtPhone.Text;
            string email = txtEmail.Text;
            string day = txtDay.Text;
            string selectedClass = ddlClasses.SelectedValue;
            string address = txtAddress.Text;

            string addInstructorSql =
                string.Format("insert into instructor(name, phone, email, day, class_id, address) values ('{0}', '{1}', '{2}', '{3}', '{4}', '{5}')",
                name, phone, email, day, selectedClass, address);
            int kq = connect.executeNonQuery(addInstructorSql);
            PopulateTable();
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtName.Text = string.Empty;
            txtPhone.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtDay.Text = string.Empty;
            ddlClasses.SelectedIndex = 0;
            txtAddress.Text = string.Empty;
        }
    }
}