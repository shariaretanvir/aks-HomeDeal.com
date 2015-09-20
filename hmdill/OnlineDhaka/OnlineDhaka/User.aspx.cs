using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineDhaka
{
    public partial class User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {
                //Label_Welcome.ForeColor = System.Drawing.Color.Blue;
                //Label_Welcome.Text += Session["New"].ToString();
                Session["New"] = null;
                Response.Redirect("login.aspx");
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void Button_Logout_Click(object sender, EventArgs e)
        {
            //Session["New"] = null;
            //Response.Redirect("login.aspx");
        }
    }
}