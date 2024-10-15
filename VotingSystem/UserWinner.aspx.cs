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
    public partial class UserWinner : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\USER\Desktop\VotingSystem\VotingSystem\VotingSystem\App_Data\Database1.mdf;Integrated Security=True");

            string is_Start = Session["declare_winner"] as String;
            if (is_Start == "start")
            {
                conn.Open();
                 
                string query = "select * from Participant where KingResult=(SELECT MAX(KingResult) FROM Participant)";
                SqlCommand cmd = new SqlCommand(query, conn);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    KingName.Text = dr["Name"].ToString();
                    KingImage.ImageUrl = "images/" + dr["Photo"].ToString();

                }
                dr.Close();

                string queen = "select * from Queen where QueenResult=(SELECT MAX(QueenResult) FROM Queen)";
                SqlCommand cmd1 = new SqlCommand(queen, conn);
                SqlDataReader dr_queen = cmd1.ExecuteReader();
                if (dr_queen.Read())
                {
                    QueenName.Text = dr_queen["Name"].ToString();
                    QueenImage.ImageUrl = "images/" + dr_queen["Photo"].ToString();

                }
                dr_queen.Close();

                string prince = "select * from Participant where PrinceResult=(SELECT MAX(PrinceResult) FROM Participant)";
                SqlCommand cmd2 = new SqlCommand(prince, conn);
                SqlDataReader dr_prince = cmd2.ExecuteReader();
                if (dr_prince.Read())
                {
                    PrinceName.Text = dr_prince["Name"].ToString();
                    PrinceImage.ImageUrl = "images/" + dr_prince["Photo"].ToString();

                }
                dr_prince.Close();

                string princess = "select * from Queen where PrincessResult=(SELECT MAX(PrincessResult) FROM Queen)";
                SqlCommand cmd3 = new SqlCommand(princess, conn);
                SqlDataReader dr_princess = cmd3.ExecuteReader();

                if (dr_princess.Read())
                {
                    PrincessName.Text = dr_princess["Name"].ToString();
                    PrincessImage.ImageUrl = "images/" + dr_princess["Photo"].ToString();

                }
                dr_princess.Close();

                string popular = "select * from Participant where PopularResult=(SELECT MAX(PopularResult) FROM Participant)";
                SqlCommand cmd4 = new SqlCommand(popular, conn);
                SqlDataReader dr_popular = cmd4.ExecuteReader();
                if (dr_popular.Read())
                {
                    PopularboyName.Text = dr_popular["Name"].ToString();
                    PopularboyImage.ImageUrl = "images/" + dr_popular["Photo"].ToString();

                }
                dr_popular.Close();

                string populargirl = "select * from Queen where PopularResult=(SELECT MAX(PopularResult) FROM Queen)";
                SqlCommand cmd5 = new SqlCommand(populargirl, conn);
                ; SqlDataReader dr_populargirl = cmd5.ExecuteReader();

                if (dr_populargirl.Read())
                {
                    PopulargirlName.Text = dr_populargirl["Name"].ToString();
                    PopulargirlImage.ImageUrl = "images/" + dr_populargirl["Photo"].ToString();

                }
                dr_populargirl.Close();

                string smart = "select * from Participant where SmartResult=(SELECT MAX(SmartResult) FROM Participant)";
                SqlCommand cmd6 = new SqlCommand(smart, conn);
                SqlDataReader dr_smart = cmd6.ExecuteReader();
                if (dr_smart.Read())
                {

                    SmartName.Text = dr_smart["Name"].ToString();
                    SmartImage.ImageUrl = "images/" + dr_smart["Photo"].ToString();

                }
                dr_smart.Close();

                string smile = "select * from Queen where SmileResult=(SELECT MAX(SmileResult) FROM Queen)";
                SqlCommand cmd7 = new SqlCommand(smile, conn);
                ; SqlDataReader dr_smile = cmd7.ExecuteReader();

                if (dr_smile.Read())
                {
                    SmileName.Text = dr_smile["Name"].ToString();
                    SmileImage.ImageUrl = "images/" + dr_smile["Photo"].ToString();

                }
                dr_smile.Close();

                string couple = "select * from Couple where Count=(SELECT MAX(Count) FROM Couple)";
                SqlCommand cmd8 = new SqlCommand(couple, conn);
                SqlDataReader dr_couple = cmd8.ExecuteReader();

                if (dr_couple.Read())
                {
                    CoupleName.Text = dr_couple["Name"].ToString();
                    CoupleImage.ImageUrl = "images/" + dr_couple["Photo"].ToString();

                }
                dr_couple.Close();
                conn.Close();
            }
            else
            {
                KingName.Text = "";
                QueenName.Text = "";
                PrinceName.Text = "";
                PrincessName.Text = "";
                PopularboyName.Text = "";
                PopulargirlName.Text = "";
                SmartName.Text = "";
                SmileName.Text = "";
                Ans.Text = "Still Counting...";
            }
        }
    }
}