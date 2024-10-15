using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace VotingSystem
{
    public partial class LoginRegister : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\USER\Desktop\VotingSystem\VotingSystem\VotingSystem\App_Data\Database1.mdf;Integrated Security=True");
        String gender = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn.Open();
            string query = "select * from Voter where Email='" + txtEmail.Text + "' and  Password='" + txtPw.Text + "' ";
            SqlCommand cmd = new SqlCommand(query, conn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Response.Redirect("menuPage.aspx");

            }
            else if (txtEmail.Text == "admin@gmail.com" && txtPw.Text == "admin123")
            {
                
                Response.Redirect("Home.aspx");
            }
            else{
                incorrect.Text = "* Incorrect Email or Password  *";
              
               
            }
             
            conn.Close();
           
        }
    }
}