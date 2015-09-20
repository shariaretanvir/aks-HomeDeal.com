using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineDhaka
{
    public partial class Myads1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["ID"] != null && Session["New"] != null)
                {
                    HyperLink1.Text = "Logout";
                    HyperLink1.NavigateUrl = "~/User.aspx";        //~/User.aspx
                    //HyperLink2.Text = Session["New"].ToString().ToUpper() + " " + "See Your Profile";
                    //HyperLink2.NavigateUrl = "~/ViewProfile.aspx";

                }
                else
                {
                    HyperLink1.Text = "Login";
                    HyperLink1.NavigateUrl = "~/login.aspx";      //~/login.aspx
                    //HyperLink2.Visible = false;

                }
            }
            else
            {
                if (Session["ID"] != null && Session["New"] != null)
                {
                    HyperLink1.Text = "Logout";
                    HyperLink1.NavigateUrl = "~/User.aspx";     //~/User.aspx
                    //HyperLink2.Text = Session["New"].ToString().ToUpper() + " " + "See Your Profile";
                    //HyperLink2.NavigateUrl = "~/ViewProfile.aspx";

                }
                else
                {
                    HyperLink1.Text = "Login";
                    HyperLink1.NavigateUrl = "~/login.aspx";     //~/login.aspx
                    //HyperLink2.Visible = false;

                }
            }
        }

        //protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        //{
        //    if (e.Row.RowType == DataControlRowType.DataRow)
        //    {
        //        Control control = e.Row.Cells[-1].Controls[0];
        //        if (control is LinkButton)
        //        {
        //            ((LinkButton)control).OnClientClick = "return confirm('Are you sure want to Delete? This cannot be undone !!')";
        //        }
        //    }
        //}
    }
}