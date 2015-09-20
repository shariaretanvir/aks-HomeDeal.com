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
using System.Web.UI.HtmlControls;

namespace OnlineDhaka
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        int temp = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            //lblShare.Text = "<a name=\"fb_share\" type=\"button\"></a>" +
            //        "<script " +
            //        "src=\"http://static.ak.fbcdn.net/connect.php/js/FB.Share\" " +
            //        "type=\"text/javascript\"></script>";
            //HtmlMeta tag = new HtmlMeta();
            //tag.Name = "title";
            //tag.Content = "This is the page title";
            //Page.Header.Controls.Add(tag);
            //HtmlMeta tag1 = new HtmlMeta();
            //tag.Name = "description";
            //tag.Content = "This is a page description.";
            //Page.Header.Controls.Add(tag1);     

            if (!IsPostBack)
            {
                string cs = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
                SqlConnection conn = new SqlConnection(cs);
                using (SqlDataAdapter da = new SqlDataAdapter("select top 10 Id,ProductName, CountFav from Registration.dbo.PostAd order by CountFav desc", conn))
                {
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    Repeater1.DataSource = ds;
                    Repeater1.DataBind();
                }
                if (Session["ID"] != null && Session["New"] != null)
                {

                    string myScriptValue = "swal({'Sweet!',Here's a custom image.','images/thumbs-up.jpg'});";
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "myScriptName", myScriptValue, true);
                    HyperLink1.Text = "Logout";
                    HyperLink1.CssClass = "log btn";
                    HyperLink1.NavigateUrl = "~/User.aspx";        //~/User.aspx
                    HyperLink2.Text = Session["New"].ToString().ToUpper() + " " + "See Your Profile";
                    HyperLink2.NavigateUrl = "~/ViewProfile.aspx";

                }
                else
                {
                    //string myScriptValue = "sweetAlert('Oops...', 'Wrong Password!', 'error');";
                    //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "myScriptName", myScriptValue, true);
                    
                    HyperLink1.Text = "Login";
                    HyperLink1.CssClass = "log btn open-login";
                    
                    //HyperLink1.NavigateUrl = "~/login.aspx";      //~/login.aspx
                    HyperLink2.Visible = false;


                }
            }
            else 
            {
                if (Session["ID"] != null && Session["New"] != null)
                {
                    string myScriptValue = "swal({'Sweet!',Here's a custom image.','images/thumbs-up.jpg'});";
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "myScriptName", myScriptValue, true);
                    HyperLink1.Text = "Logout";
                    HyperLink1.CssClass = "log btn";
                    HyperLink1.NavigateUrl = "~/User.aspx";     //~/User.aspx
                    HyperLink2.Text = Session["New"].ToString().ToUpper() + " " + "See Your Profile";
                    HyperLink2.NavigateUrl = "~/ViewProfile.aspx";

                }
                else
                {
                    //string myScriptValue = "sweetAlert('Oops...', 'Wrong Password!', 'error');";
                    //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "myScriptName", myScriptValue, true);
                    
                    HyperLink1.Text = "Login";
                    HyperLink1.CssClass = "log btn open-login";
                    //HyperLink1.NavigateUrl = "~/login.aspx";     //~/login.aspx
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



        protected void btn_login_Click(object sender, EventArgs e)
        {
            if (username.Text == "" || password.Text == "")
            {
                string myScriptValue = "sweetAlert('Oops...', 'Please Enter Username Or Password!', 'error');";
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "myScriptName", myScriptValue, true);
                //Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "s", "window.alert('Please Enter UserName or Password');", true);
            }
            else
            {
                SqlConnection conn = new SqlConnection("Data Source=AKASH-PC\\SQLEXPRESS;Initial Catalog=Registration;Integrated Security=True");
                conn.Open();
                string checkuser = "select count(*) from RegData where Username='" + username.Text + "'";
                SqlCommand com = new SqlCommand(checkuser, conn);
                temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                conn.Close();
                if (temp == 1)
                {
                    conn.Open();
                    string checkPasswordQuery = "select Password from RegData where Username='" + username.Text + "'";
                    SqlCommand passcom = new SqlCommand(checkPasswordQuery, conn);
                    string Password = passcom.ExecuteScalar().ToString().Replace(" ", "");
                    if (Password == password.Text)
                    {
                        Session["New"] = username.Text;
                        using (SqlCommand cmdid = new SqlCommand("select Id from RegData where Username = '" + username.Text + "'", conn))
                        {
                            int id = (int)cmdid.ExecuteScalar();
                            Session["ID"] = id;
                        }
                        string myScriptValue = "swal({'Sweet!',Here's a custom image.','images/thumbs-up.jpg'});";
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "myScriptName", myScriptValue, true);
                        //Response.Write("Password is correct");
                        //Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "s", "window.alert('Login Successfull');", true);

                        Response.Redirect("Default.aspx");

                    }
                    else
                    {
                        //Response.Write("Password is not correct");
                        //Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "s", "window.alert('Incorrect Password');", true);
                        string myScriptValue = "sweetAlert('Oops...', 'Wrong Password!', 'error');";
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "myScriptName", myScriptValue, true);

                        //Label3.Text = "<div class='alert alert-danger' role='alert'>Password is not correct</div>";
                    }

                }

                else
                {
                    //Response.Write("User Name is not correct");
                    //Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "s", "window.alert('Incorrect UserName');", true);
                    string myScriptValue = "sweetAlert('Oops...', 'Wrong UserName!', 'error');";
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "myScriptName", myScriptValue, true);
                    //Label3.Text = "<div class='alert alert-danger' role='alert'>User Name is not correct</div>";
                }
            }
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

        ////protected void TextBox1_TextChanged(object sender, EventArgs e)
        ////{

        ////}

        protected void Button3_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(cs);
            string ckusr = "select count(*) from RegData where Username='" + TextBox1.Text + "'";
            SqlCommand cmd = new SqlCommand(ckusr, conn);
            conn.Open();
            temp =Convert.ToInt32(cmd.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                SqlCommand comd = new SqlCommand("select Password from RegData where Username ='" + TextBox1.Text + "'", conn);
                string password =comd.ExecuteScalar().ToString();
                if (password == TextBox3.Text)
                {
                    Session["New"] = TextBox1.Text.ToString();
                    using (SqlCommand cmmmd = new SqlCommand("select Id from RegData where Username = '" + TextBox1.Text + "'", conn))
                    {
                        int id= (int)cmmmd.ExecuteScalar();
                        Session["ID"] = id;
                        Response.Redirect("User.aspx");
                    }
                }
                else
                {
                    Response.Write("Password is not correct");
                }
            }
        }
    }
}