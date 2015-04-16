using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineDhaka
{
    public partial class SearchBySubcatagories : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_PreRender(object sender, EventArgs e)
        {
            if (GridView1.PageCount != 0)
            {
                Label3.Text = "Showing Page " + (GridView1.PageIndex + 1).ToString() + " of " + GridView1.PageCount.ToString();
            }
            else
            {
                Label3.Text = "Showing Page " + (GridView1.PageIndex).ToString() + " of " + GridView1.PageCount.ToString();
            }
        }

    }
}