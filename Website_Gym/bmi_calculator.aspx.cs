using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Website_Gym
{
    public partial class bim_calculator : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void toggleAdvice_Click(object sender, EventArgs e)
        {
            try
            {
                double height = Convert.ToDouble(Height.Text);
                double weight = Convert.ToDouble(Weight.Text);
                string gender = Gender.SelectedItem.Text;
                string desire = Want.SelectedItem.Text;
                int age = Convert.ToInt32(Age.Text);


                double bmi = BMICaculator.CalculateBMI(height, weight);
                string advice = BMICaculator.GetBMIAdvice(bmi, gender, desire, age);

                statusLabel.Text = "STATUS NOW";
                advice_des.Text = advice;
            }
            catch (Exception ex)
            {
                statusLabel.Text = "An error occurred: " + ex.Message;
            }
        }

        private void ShowAlert(string message)
        {
            string script = $"alert('{message}');";
            ScriptManager.RegisterStartupScript(this, GetType(), "ShowAlert", script, true);
        }
    }
}