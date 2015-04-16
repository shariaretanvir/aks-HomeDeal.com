using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace OnlineDhaka
{
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //GetMenuData();
        }
        //private void GetMenuData()
        //{
        //    string CS = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
        //    SqlConnection conn = new SqlConnection(CS);
        //    SqlDataAdapter da = new SqlDataAdapter("spGetMenuData", conn);
        //    //da.SelectCommand.CommandType = CommandType.StoredProcedure;
        //    DataSet ds = new DataSet();
        //    da.Fill(ds);

        //    ds.Relations.Add("ChaildRows", ds.Tables[0].Columns["CatagoriesId"], ds.Tables[1].Columns["ParentId"]);

        //    foreach (DataRow level1 in ds.Tables[0].Rows)
        //    {
        //        MenuItem item = new MenuItem();
        //        item.Text = level1["CatagoriesName"].ToString();
        //        item.NavigateUrl = level1["NavigateUrl"].ToString();

        //        DataRow[] level2datarows = level1.GetChildRows("ChaildRows");

        //        foreach (DataRow level2data in level2datarows)
        //        {
        //            MenuItem childitem = new MenuItem();
        //            childitem.Text = level2data["SubCatagoriesName"].ToString();
        //            childitem.NavigateUrl = level2data["NavigateUrl"].ToString();
        //            item.ChildItems.Add(childitem);

        //        }
        //        Menu2.Items.Add(item);
        //    }



        //}

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            string path = Server.MapPath("IMG/");

        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView1.Enabled = false;
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {

        }
    }
}