using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace VotingSystem
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\USER\Desktop\VotingSystem\VotingSystem\VotingSystem\App_Data\Database1.mdf;Integrated Security=True");
        String gender = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_reg_Click(object sender, EventArgs e)
        {

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            conn.Open();
            string query = "select * from Voter where Name='" + txtName.Text+ "'";
            SqlCommand cmd = new SqlCommand(query, conn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())

            {
                Response.Write(txtName.Text);
                Response.Redirect("menuPage.aspx");

            }
            else
            {

                Response.Redirect("LoginForm.aspx");
            }
            conn.Close();


        }
    }
}