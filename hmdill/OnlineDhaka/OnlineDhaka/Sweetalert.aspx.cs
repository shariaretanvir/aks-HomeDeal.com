using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineDhaka
{
    public partial class Sweetalert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string myScriptValue = "swal({'Sweet!',Here's a custom image.','images/thumbs-up.jpg'});";
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "myScriptName", myScriptValue, true);
                    
        }
    }
}