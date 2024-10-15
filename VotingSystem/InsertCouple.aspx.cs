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
    public partial class InsertCouple : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\USER\Desktop\VotingSystem\VotingSystem\VotingSystem\App_Data\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddingCouple_Click(object sender, EventArgs e)
        {
            string filename = Path.GetFileName(couplePoto.FileName); ;

            couplePoto.SaveAs(Server.MapPath("~/images/" + filename));
            string name = MaleList.SelectedItem.ToString()+" - " + FemaleList.SelectedItem.ToString();
            conn.Open();
            string str = "INSERT INTO Couple(Title,Photo,Name) VALUES('" + coupleTitle.Text + "','" + filename + "','" + name + "'); ";
            SqlCommand cmd = new SqlCommand(str, conn);
            cmd.ExecuteNonQuery();
            coupleTitle.Text = " ";
        }

        protected void backtoparti_Click(object sender, EventArgs e)
        {
            Response.Redirect("Participant.aspx");
        }
    }
}