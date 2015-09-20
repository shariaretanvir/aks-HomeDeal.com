using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineDhaka
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["ID"] != null && Session["New"] != null)
                {
                    string myScriptValue = "swal({'Sweet!',Here's a custom image.','images/thumbs-up.jpg'});";
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "myScriptName", myScriptValue, true);
                    //int ID = (int)Session["ID"];
                    //TextBoxAdname.Text = Session["New"].ToString();

                }
                else
                {
                    //Response.Redirect("~/login.aspx");
                }
            }
        }
    }
}