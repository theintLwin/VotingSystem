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
    public partial class PrincePage : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\USER\Desktop\VotingSystem\VotingSystem\VotingSystem\App_Data\Database1.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            string vote = Session["vote_btn_prince"] as String;
            string Success = Session["Success_prince"] as String;
            if (vote == "click")
            {
               PrinceVote.Visible = false;
                Label6.Text = Success;
            }
            conn.Open();

            string query = "select * from Participant ";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.CommandType = CommandType.Text;
            SqlDataReader rdr = cmd.ExecuteReader();

            if(rdr.HasRows == true)
           {
               DataList1.DataSource = rdr;
               DataList1.DataBind();
}

            rdr.Close();
            conn.Close();
}

         protected void btn2_Click(object sender, EventArgs e)
        {
            

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            
            
            
        }

        protected void PrinceVote_Click(object sender, EventArgs e)
        {
             conn.Open();
            String name=ListBox1.SelectedItem.ToString();

            int count=0;
            string query = "select PrinceResult from Participant where Name = '" + name + "' ";

            SqlCommand cmd = new SqlCommand(query, conn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                string result = dr["PrinceResult"].ToString();
                 count = int.Parse(result);
                count++;

                    

            }
            conn.Close();
           
                
            String upd = "update Participant set PrinceResult= '"+ count +"'  where Name = '" + name + "' ";
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



    Session["vote_btn_prince"] = "click";
    Session["Success_prince"] = "You Voted " + name + " as a Prince.";
    Label6.Text = "You Voted " + name + " as a Prince.";
    PrinceVote.Visible = false;
        }
    }
        }
        
    
