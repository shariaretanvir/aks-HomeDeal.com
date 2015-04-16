using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineDhaka
{
    public partial class AllAds : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //if (GridView11.ViewStateMode !=null)
            //{
            //    Server.Transfer("~/Detail.aspx");
            //}
            //else
            //{
            //    Server.Transfer("~/Detail.aspx");
            //    //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Please select a row.')", true);
            //}
        }

        protected void GridView11_PreRender(object sender, EventArgs e)
        {
            Label1.Text = "Displaying Page " + (GridView11.PageIndex + 1).ToString() + " of " + GridView11.PageCount.ToString();
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/SearchByCatagories.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SearchBySubcatagories.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SearchByRecentAds.aspx");
        }
    }
}