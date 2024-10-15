﻿using System;
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
    public partial class QueenPage : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\USER\Desktop\VotingSystem\VotingSystem\VotingSystem\App_Data\Database1.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            string vote = Session["vote_btn_queen"] as String;
            string Success = Session["Success_queen"] as String;
            if (vote == "click")
            {
                QueenVote.Visible = false;
                Label6.Text = Success;
            }
            conn.Open();
           
            string query = "select * from Queen ";
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

         
            

        

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            
            
            
        }

       

        protected void QueenVote_Click(object sender, EventArgs e)
        {
             conn.Open();
            String name=ListBox1.SelectedItem.ToString();

            int count=0;
            string query = "select QueenResult from Queen where Name = '" + name + "' ";

            SqlCommand cmd = new SqlCommand(query, conn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                string result = dr["QueenResult"].ToString();
                 count = int.Parse(result);
                count++;

                    

            }
            conn.Close();
           
                
            String upd = "update Queen set QueenResult= '"+ count +"'  where Name = '" + name + "' ";
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



    Session["vote_btn_queen"] = "click";
    Session["Success_queen"] = "You Voted " + name + " as a Queen.";
    Label6.Text = "You Voted " + name + " as a Queen.";
    QueenVote.Visible = false;
        }
    }
        }


    
