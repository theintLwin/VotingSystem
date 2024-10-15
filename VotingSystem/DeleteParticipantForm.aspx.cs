using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace VotingSystem
{
    public partial class DeleteParticipantForm : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\USER\Desktop\VotingSystem\VotingSystem\VotingSystem\App_Data\Database1.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
                        SqlCommand cmd = new SqlCommand(@"Delete from Participant where Id='" + txtId.Text + "' ", conn);
   
    try
    {
        conn.Open();

        cmd.ExecuteNonQuery();

              show();
        txtId.Text = "";
       
    }

    finally
    {
        conn.Close();
    }
    Response.Redirect("Participant.aspx");
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

     protected void MaleList_Click(object sender, EventArgs e)
     {
         SqlCommand cmd = new SqlCommand();
         SqlDataAdapter da = new SqlDataAdapter("select * from Participant", conn);
         DataSet ds = new DataSet();
         ds.Clear();
         da.Fill(ds, "participant");
         GridView1.DataSource = ds.Tables["participant"];
         GridView1.DataBind();
     }

     protected void btnfDelete_Click(object sender, EventArgs e)
     {
         SqlCommand cmd = new SqlCommand(@"Delete from Queen where Id='" + txtId.Text + "' ", conn);

         try
         {
             conn.Open();

             cmd.ExecuteNonQuery();

             show();
             txtId.Text = "";

         }

         finally
         {
             conn.Close();
         }
         Response.Redirect("Participant.aspx");
     }

     protected void btncDelete_Click(object sender, EventArgs e)
     {
         SqlCommand cmd = new SqlCommand(@"Delete from Couple where Id='" + txtId.Text + "' ", conn);

         try
         {
             conn.Open();

             cmd.ExecuteNonQuery();

             show();
             txtId.Text = "";

         }

         finally
         {
             conn.Close();
         }
         Response.Redirect("Participant.aspx");
     }

     protected void FemaleList_Click(object sender, EventArgs e)
     {
         SqlCommand cmd = new SqlCommand();
         SqlDataAdapter da = new SqlDataAdapter("select * from Queen", conn);
         DataSet ds = new DataSet();
         ds.Clear();
         da.Fill(ds, "queen");
         GridView1.DataSource = ds.Tables["queen"];
         GridView1.DataBind();
     }

     protected void BCoupleList_Click(object sender, EventArgs e)
     {
         SqlCommand cmd = new SqlCommand();
         SqlDataAdapter da = new SqlDataAdapter("select * from Couple", conn);
         DataSet ds = new DataSet();
         ds.Clear();
         da.Fill(ds, "couple");
         GridView1.DataSource = ds.Tables["couple"];
         GridView1.DataBind();
     }

        }
    }

