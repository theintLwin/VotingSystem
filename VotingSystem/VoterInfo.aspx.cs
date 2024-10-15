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
    public partial class VoterInfo : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\USER\Desktop\VotingSystem\VotingSystem\VotingSystem\App_Data\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void showbtn(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            SqlDataAdapter da = new SqlDataAdapter("select * from Voter", conn);
            DataSet ds = new DataSet();
            ds.Clear();
            da.Fill(ds, "voter");
            GridView1.DataSource = ds.Tables["voter"];
            GridView1.DataBind();

            
         

        }
    }
}