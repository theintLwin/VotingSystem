using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;
using System.Data;
using System.IO;
using System.Configuration;

namespace VotingSystem
{
    public partial class BestCouplePage : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\USER\Desktop\VotingSystem\VotingSystem\VotingSystem\App_Data\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();
            string vote = Session["vote_btn_couple"] as String;
            string Success = Session["Success_Couple"] as String;
            if (vote == "click")
            {
                CoupleVote.Visible = false;
                Label6.Text = Success;
            }
            

            string query = "select * from Couple ";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.CommandType = CommandType.Text;
            SqlDataReader rdr = cmd.ExecuteReader();
            if (rdr.HasRows == true)
            {
                DataList1.DataSource = rdr;
                DataList1.DataBind();
            }
            rdr.Close();
            conn.Close();


             

        }

         
            

        

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            
            
            
        }

        protected void KingVote_Click(object sender, EventArgs e)
        {

        }

        protected void CoupleVote_Click(object sender, EventArgs e)
        {
            conn.Open();
            String name = ListBox1.SelectedItem.ToString();

            int count = 0;
            string query = "select Count from Couple where Name = '" + name + "' ";

            SqlCommand cmd = new SqlCommand(query, conn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                string result = dr["Count"].ToString();
                count = int.Parse(result);
                count++;



            }
            conn.Close();


            String upd = "update Couple set Count= '" + count + "'  where Name = '" + name + "' ";
            SqlCommand cmd1 = new SqlCommand(upd, conn);
            try
            {
                conn.Open();

                cmd1.ExecuteNonQuery();
            }
            finally
            {
                conn.Close();
            }



            Session["vote_btn_couple"] = "click";
            Session["Success_Couple"] = "You Voted " + name + " as a Couple.";
            Label6.Text = "You Voted " + name + " as a Couple.";
            CoupleVote.Visible = false;
        }
        }
    }
