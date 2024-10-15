using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;



namespace VotingSystem
{
    public partial class EditParticipantForm : System.Web.UI.Page
    {
        String genders = string.Empty;
        String str = string.Empty;
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\USER\Desktop\VotingSystem\VotingSystem\VotingSystem\App_Data\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDisplay_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            SqlDataAdapter da = new SqlDataAdapter("select * from Participant", conn);
            DataSet ds = new DataSet();
            ds.Clear();
            da.Fill(ds, "participant");
            GridView1.DataSource = ds.Tables["participant"];
            GridView1.DataBind();

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            conn.Open();
            if (male.Checked)
            {
                genders = "Male";
            }
           if(female.Checked)
            {
                genders = "Female";
            }
            if (genders == "Male")
            {                       
                string upd = "update Participant set Section='" + txtSection.Text + "',Height='" + txtHeight.Text + "',Favourite_color='" + txtFavourite.Text +"',Hobby='" + txtHobby.Text + "' where Id='" + int.Parse(txtId.Text) + "'";
                SqlCommand cmd = new SqlCommand(upd, conn);
                cmd.ExecuteNonQuery();
               
            }
            else if (genders == "Female")
            {
                string upd = "update Queen set Section='" + txtSection.Text + "',Height='" + txtHeight.Text + "',Favourite_color='" + txtFavourite.Text + "',Hobby='" + txtHobby.Text + "' where Id='" + int.Parse(txtId.Text) + "'";
                SqlCommand cmd = new SqlCommand(upd, conn);
                cmd.ExecuteNonQuery();
            }

            conn.Close();
            txtId.Text = " ";
            txtSection.Text = " ";
            txtHeight.Text = " ";
            txtFavourite.Text = " ";
            txtHobby.Text = " ";
            //male.Checked = false;
            //female.Checked = false;
}
     void show()
        {
            SqlCommand cmd = new SqlCommand();
            SqlDataAdapter da = new SqlDataAdapter("select * from Participant", conn);
            DataSet ds = new DataSet();
            ds.Clear();
            da.Fill(ds, "participant");
            GridView1.DataSource = ds.Tables["participant"];
            GridView1.DataBind();
     }

     protected void Button1_Click(object sender, EventArgs e)
     {
         Response.Redirect("Participant.aspx");
     }

     protected void femaleShowDisplay_Click(object sender, EventArgs e)
     {
         SqlCommand cmd = new SqlCommand();
         SqlDataAdapter da = new SqlDataAdapter("select * from Queen", conn);
         DataSet ds = new DataSet();
         ds.Clear();
         da.Fill(ds, "queen");
         GridView1.DataSource = ds.Tables["queen"];
         GridView1.DataBind();
     }


        }
    }
