using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace VotingSystem
{
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\USER\Desktop\VotingSystem\VotingSystem\VotingSystem\App_Data\Database1.mdf;Integrated Security=True");
        String gender = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       
        protected void btn_reg_Click1(object sender, EventArgs e)
        {
            conn.Open();
            if (male.Checked)
            {
                gender = "Male";
            }
            else if (female.Checked)
            {
                gender = "Female";
            }

            try
            {
                string str = "INSERT INTO Voter(Name,Email,Gender,Password,Year) VALUES('" + txtName.Text + "','" + txtEmail.Text + "','" + gender + "','" + txtPw.Text + "','" + YearBox.SelectedItem.ToString() + "'); ";
                SqlCommand cmd = new SqlCommand(str, conn);
                cmd.ExecuteNonQuery();
               
                Response.Redirect("LoginRegister.aspx");
               
               
              

            }


            catch (SqlException excep)
            {
                Response.Write(excep.Message);

            }
            conn.Close();
        }

        }
    }


