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
    public partial class Result : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\USER\Desktop\VotingSystem\VotingSystem\VotingSystem\App_Data\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void KingResult_Click(object sender, EventArgs e)
        {
            conn.Open();
  
                SqlCommand cmd = new SqlCommand();
                SqlDataAdapter da = new SqlDataAdapter("select Name,KingResult from Participant where KingResult=(SELECT MAX(KingResult) FROM Participant)", conn);
                DataSet ds = new DataSet();
                ds.Clear();
                da.Fill(ds, "participant");
                GridView1.DataSource = ds.Tables["participant"];
                GridView1.DataBind();
       conn.Close();
        }

        protected void declareKing_Click(object sender, EventArgs e)
        {
            Response.Redirect("Winner.aspx");
        }

        protected void PrinceResult_Click(object sender, EventArgs e)
        {
            conn.Open();

            SqlCommand cmd = new SqlCommand();
            SqlDataAdapter da = new SqlDataAdapter("select Name,PrinceResult from Participant where PrinceResult=(SELECT MAX(PrinceResult) FROM Participant)", conn);
            DataSet ds = new DataSet();
            ds.Clear();
            da.Fill(ds, "participant");
            GridView1.DataSource = ds.Tables["participant"];
            GridView1.DataBind();
            conn.Close();
        }

        protected void PopularResult_Click(object sender, EventArgs e)
        {
            conn.Open();

            SqlCommand cmd = new SqlCommand();
            SqlDataAdapter da = new SqlDataAdapter("select Name,PopularResult from Participant where PopularResult=(SELECT MAX(PopularResult) FROM Participant)", conn);
            DataSet ds = new DataSet();
            ds.Clear();
            da.Fill(ds, "participant");
            GridView1.DataSource = ds.Tables["participant"];
            GridView1.DataBind();
            conn.Close();
        }

        protected void SmartResult_Click(object sender, EventArgs e)
        {
            conn.Open();

            SqlCommand cmd = new SqlCommand();
            SqlDataAdapter da = new SqlDataAdapter("select Name,SmartResult from Participant where SmartResult=(SELECT MAX(SmartResult) FROM Participant)", conn);
            DataSet ds = new DataSet();
            ds.Clear();
            da.Fill(ds, "participant");
            GridView1.DataSource = ds.Tables["participant"];
            GridView1.DataBind();
            conn.Close();
        }

        protected void QueenResult_Click(object sender, EventArgs e)
        {
            conn.Open();

            SqlCommand cmd = new SqlCommand();
            SqlDataAdapter da = new SqlDataAdapter("select Name,QueenResult from Queen where QueenResult=(SELECT MAX(QueenResult) FROM Queen)", conn);
            DataSet ds = new DataSet();
            ds.Clear();
            da.Fill(ds, "queen");
            GridView1.DataSource = ds.Tables["queen"];
            GridView1.DataBind();
            conn.Close();
        }

        protected void PrincessResult_Click(object sender, EventArgs e)
        {
            conn.Open();

            SqlCommand cmd = new SqlCommand();
            SqlDataAdapter da = new SqlDataAdapter("select Name,PrincessResult from Queen where PrincessResult=(SELECT MAX(PrincessResult) FROM Queen)", conn);
            DataSet ds = new DataSet();
            ds.Clear();
            da.Fill(ds, "queen");
            GridView1.DataSource = ds.Tables["queen"];
            GridView1.DataBind();
            conn.Close();
        }

        protected void PopularPageResult_Click(object sender, EventArgs e)
        {
            conn.Open();

            SqlCommand cmd = new SqlCommand();
            SqlDataAdapter da = new SqlDataAdapter("select Name,PopularResult from Queen where PopularResult=(SELECT MAX(PopularResult) FROM Queen)", conn);
            DataSet ds = new DataSet();
            ds.Clear();
            da.Fill(ds, "queen");
            GridView1.DataSource = ds.Tables["queen"];
            GridView1.DataBind();
            conn.Close();
        }

        protected void SmileResult_Click(object sender, EventArgs e)
        {
            conn.Open();

            SqlCommand cmd = new SqlCommand();
            SqlDataAdapter da = new SqlDataAdapter("select Name,SmileResult from Queen where SmileResult=(SELECT MAX(SmileResult) FROM Queen)", conn);
            DataSet ds = new DataSet();
            ds.Clear();
            da.Fill(ds, "queen");
            GridView1.DataSource = ds.Tables["queen"];
            GridView1.DataBind();
            conn.Close();
        }

        protected void CoupleResult_Click(object sender, EventArgs e)
        {
            conn.Open();

            SqlCommand cmd = new SqlCommand();
            SqlDataAdapter da = new SqlDataAdapter("select Name,Count from Couple where Count=(SELECT MAX(Count) FROM Couple)", conn);
            DataSet ds = new DataSet();
            ds.Clear();
            da.Fill(ds, "couple");
            GridView1.DataSource = ds.Tables["couple"];
            GridView1.DataBind();
            conn.Close();
        }
    }
}