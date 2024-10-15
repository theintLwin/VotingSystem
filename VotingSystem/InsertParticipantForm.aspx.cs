using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Data;

namespace VotingSystem
{
    public partial class InsertParticipantForm : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\USER\Desktop\VotingSystem\VotingSystem\VotingSystem\App_Data\Database1.mdf;Integrated Security=True");
        String gender = string.Empty;
        String str = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            if (male.Checked)
            {
                gender = "Male";
            }
            else if (female.Checked)
            {
                gender = "Female";
            }

            
        string filename = Path.GetFileName(fileuploadimages.FileName); ;
       
        fileuploadimages.SaveAs(Server.MapPath("~/images/" + filename));
        

        conn.Open();
       

                        try
            {
                if (gender == "Male")
                {
                    string str = "INSERT INTO Participant(Photo,Name,Section,Height,Favourite_color,Hobby) VALUES('" + filename + "','" + txtName.Text + "','" + txtSection.Text + "','" + txtHeight.Text + "','" + txtFavourite.Text + "','" + txtHobby.Text + "'); ";
                    SqlCommand cmd = new SqlCommand(str, conn);
                    cmd.ExecuteNonQuery();
                }
                else if(gender == "Female"){
                    string str = "INSERT INTO Queen(Photo,Name,Section,Height,Favourite_color,Hobby) VALUES('" + filename + "','" + txtName.Text + "','" + txtSection.Text + "','" + txtHeight.Text + "','" + txtFavourite.Text + "','" + txtHobby.Text + "'); ";
                    SqlCommand cmd = new SqlCommand(str, conn);
                    cmd.ExecuteNonQuery();
                }
               
                //SqlCommand cmd = new SqlCommand(str, conn);
                
                Response.Redirect("Participant.aspx");
       
            }
            catch (SqlException excep)
            {
                Response.Write(excep.Message);
               
            }
            conn.Close();
        }


       
        }
    }
