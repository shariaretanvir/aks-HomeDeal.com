using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using System.Configuration;
using System.Collections;

namespace OnlineDhaka
{
    public partial class PopupLogin : System.Web.UI.Page
    {
        int temp = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

            //swal('Congratulations!', 'Your message has been succesfully sent', 'success');
            //ClientScript.RegisterClientScriptBlock(this.GetType(), "s", "window.alert('huh?');", true);

        }


        protected void btn_login_Click(object sender, EventArgs e)
        {
            if (username.Text == "" && password.Text == "")
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "s", "window.alert('Please Enter UserName or Password');", true);
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
                    Response.Write("Password is correct");
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "s", "window.alert('Login Successfull');", true);
                    Response.Redirect("User.aspx");

                }
                else
                {
                    //Response.Write("Password is not correct");
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "s", "window.alert('Password is not correct');", true);
                    //Label3.Text = "<div class='alert alert-danger' role='alert'>Password is not correct</div>";
                }

            }

            else
            {
                //Response.Write("User Name is not correct");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "s", "window.alert('User Name is not correct');", true);
                //Label3.Text = "<div class='alert alert-danger' role='alert'>User Name is not correct</div>";
            }
        }
    }



        //[WebMethod]
        
        //public bool CheckUser(string username, string password)
        //{
        //    int temp = 0;
        //    SqlConnection conn = new SqlConnection("Data Source=AKASH-PC\\SQLEXPRESS;Initial Catalog=Registration;Integrated Security=True");
        //    conn.Open();
        //    string checkuser = "select count(*) from RegData where Username='" + username + "'";
        //    SqlCommand com = new SqlCommand(checkuser, conn);
        //    temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        //    conn.Close();
        //    if (temp == 1)
        //    {
        //        conn.Open();
        //        string checkPasswordQuery = "select Password from RegData where Username='" + username + "'";
        //        SqlCommand passcom = new SqlCommand(checkPasswordQuery, conn);
        //        string Password = passcom.ExecuteScalar().ToString().Replace(" ", "");
        //        if (Password == password)
        //        {
        //            Session["New"] = username;
        //            using (SqlCommand cmdid = new SqlCommand("select Id from RegData where Username = '" + username + "'", conn))
        //            {
        //                int id = (int)cmdid.ExecuteScalar();
        //                Session["ID"] = id;
        //            }
        //            //Response.Write("Password is correct");

        //            //Response.Redirect("User.aspx");
        //            return true;
        //        }
        //        else
        //        {
        //            return false;
        //            //Response.Write("Password is not correct");
        //        }

        //    }

        //    else
        //    {
        //        return false;
        //        //Response.Write("User Name is not correct");
        //    }
        //}
        }
    }
