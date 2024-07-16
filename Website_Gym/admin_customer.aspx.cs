using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Website_Gym
{
    public partial class admin_customer : System.Web.UI.Page
    {
        Connect connect;
        protected void Page_Load(object sender, EventArgs e)
        {
            connect = new Connect();
            if (!IsPostBack)
            {
                LoadAllComponent();
                PopulateTable();
            }
        }

        private void LoadAllComponent()
        {
            string getClassSql = "select * from class";
            string getInstructorSql = "select instructor_id, name from instructor";
            DataTable classDt = connect.getData(getClassSql);
            ddlClasses.DataSource = classDt;
            ddlClasses.DataTextField = "name";
            ddlClasses.DataValueField = "class_id";
            ddlClasses.DataBind();
            ddlClasses.Items.Insert(0, new ListItem("Select a Class", ""));
            DataTable instructorDt = connect.getData(getInstructorSql);
            ddlInstructors.DataSource = instructorDt;
            ddlInstructors.DataTextField = "name";
            ddlInstructors.DataValueField = "instructor_id";
            ddlInstructors.DataBind();
            ddlInstructors.Items.Insert(0, new ListItem("Select an Instructor", ""));

        }

        protected void ActionButton_Command(object sender, CommandEventArgs e)
        {
            string customerId = e.CommandArgument.ToString();

            if (e.CommandName == "Delete")
            {
                DeleteCustomer(customerId);
            }
            else if (e.CommandName == "Edit")
            {
                EditCustomer(customerId);
            }
            PopulateTable();
        }

        private void DeleteCustomer(string customerId)
        {
            if (connect == null)
                connect = new Connect();
            string deleteSql = string.Format("delete from customer where customer_id = '{0}'", customerId);
            int kq = connect.executeNonQuery(deleteSql);
            PopulateTable();
        }

        private void EditCustomer(string customerId)
        {

        }

        private void PopulateTable()
        {
            connect = new Connect();
            string sql = "select u.*, c.name as class_name, i.name as instructor_name from customer u" +
                " inner join class c on u.class_id = c.class_id" +
                " inner join instructor i on u.instructor_id = i.instructor_id";
            DataTable dt = connect.getData(sql);
            gvStudents.DataSource = dt;
            gvStudents.DataBind();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            string phone = txtPhone.Text;
            string email = txtEmail.Text;
            string selectedClass = ddlClasses.SelectedValue;
            string selectedInstructor = ddlInstructors.SelectedValue;
            if (connect == null)
                connect = new Connect();
            string insertCustomerSql = "insert into customer(name, email, phone, class_id, instructor_id)" +
                string.Format("values ('{0}', '{1}', '{2}', '{3}', '{4}')", name, email, phone, selectedClass, selectedInstructor);
            int kq = connect.executeNonQuery(insertCustomerSql);
            PopulateTable();
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtName.Text = string.Empty;
            txtPhone.Text = string.Empty;
            txtEmail.Text = string.Empty;
            ddlClasses.SelectedIndex = 0;
            ddlInstructors.SelectedIndex = 0;
        }
    }
}