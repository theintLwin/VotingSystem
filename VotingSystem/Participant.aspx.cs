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
    public partial class Participant : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\USER\Desktop\VotingSystem\VotingSystem\VotingSystem\App_Data\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void showbtn(object sender, EventArgs e)
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
            Response.Redirect("InsertParticipantForm.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditParticipantForm.aspx");

        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("EditParticipantForm.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("DeleteParticipantForm.aspx");
        }

        protected void showF(object sender, EventArgs e)
        {
           
        }

        protected void showF_Click(object sender, EventArgs e)
        {
            
        }

        protected void girlShow_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            SqlDataAdapter da = new SqlDataAdapter("select * from Queen", conn);
            DataSet ds = new DataSet();
            ds.Clear();
            da.Fill(ds, "queen");
            GridView1.DataSource = ds.Tables["queen"];
            GridView1.DataBind();


        }

        protected void btnCouple_Click(object sender, EventArgs e)
        {
            Response.Redirect("InsertCouple.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            

        }

        protected void Button5_Click1(object sender, EventArgs e)
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