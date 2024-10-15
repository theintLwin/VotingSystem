using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VotingSystem
{
    public partial class menuPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button9_Click(object sender, EventArgs e)
        {
            Response.Redirect("BestCouplePage.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("KingPage.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("QueenPage.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("PrincePage.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("PrincessPage.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Popular.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("PopularPage.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("SmartPage.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("SmilePage.aspx");
        }
    }
}