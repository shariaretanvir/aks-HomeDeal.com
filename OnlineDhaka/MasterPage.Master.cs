using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using System.Configuration;
using System.Text;

namespace OnlineDhaka
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["ID"] != null && Session["New"] != null)
                {
                    HyperLink1.Text = "Logout";
                    HyperLink1.NavigateUrl = "~/User.aspx";
                    HyperLink2.Text = Session["New"].ToString().ToUpper() + " " + "See Your Profile";
                    HyperLink2.NavigateUrl = "~/ViewProfile.aspx";

                }
                else
                {
                    HyperLink1.Text = "Login";
                    HyperLink1.NavigateUrl = "~/login.aspx";
                    HyperLink2.Visible = false;

                }
            }
            else 
            {
                if (Session["ID"] != null && Session["New"] != null)
                {
                    HyperLink1.Text = "Logout";
                    HyperLink1.NavigateUrl = "~/User.aspx";
                    HyperLink2.Text = Session["New"].ToString().ToUpper() + " " + "See Your Profile";
                    HyperLink2.NavigateUrl = "~/ViewProfile.aspx";

                }
                else
                {
                    HyperLink1.Text = "Login";
                    HyperLink1.NavigateUrl = "~/login.aspx";
                    HyperLink2.Visible = false;

                }
            }
            //GetMenuData();



            //foreach (MenuItem item in Menu1.Items)
            //{
            //    if (item.NavigateUrl.Equals(Request.AppRelativeCurrentExecutionFilePath))
            //    {
            //        item.Selected = true;
            //    }
            //}


            //var dropdownvalue = CategoryDropDown.SelectedItem.Value;
        }

        //protected void CategoryDropDown_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    var dropdownvalue = CategoryDropDown.SelectedItem.Value;




        //    //Response.Redirect(dropdownvalue+".aspx");
        //    if (dropdownvalue == "Electronics")
        //    {

        //        Response.Redirect("Electronics.aspx");
        //    }
        //}

        private void GetMenuData()
        {
            string CS = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(CS);
            SqlDataAdapter da = new SqlDataAdapter("spGetMenuData", conn);
            //da.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataSet ds = new DataSet();
            da.Fill(ds);

            ds.Relations.Add("ChaildRows", ds.Tables[0].Columns["CatagoriesId"], ds.Tables[1].Columns["ParentId"]);

            foreach (DataRow level1 in ds.Tables[0].Rows)
            {
                MenuItem item = new MenuItem();
                item.Text = level1["CatagoriesName"].ToString();
                item.NavigateUrl = level1["NavigateUrl"].ToString();

                DataRow[] level2datarows = level1.GetChildRows("ChaildRows");

                foreach (DataRow level2data in level2datarows)
                {
                    MenuItem childitem = new MenuItem();
                    childitem.Text = level2data["SubCatagoriesName"].ToString();
                    childitem.NavigateUrl = level2data["NavigateUrl"].ToString();
                    item.ChildItems.Add(childitem);

                }
                Menu1.Items.Add(item);
            }



        }












        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}