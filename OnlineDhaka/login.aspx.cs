using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.Data;
using System.Collections;

namespace OnlineDhaka
{
    public partial class login : System.Web.UI.Page
    {
        int temp = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Login_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=AKASH-PC\\SQLEXPRESS;Initial Catalog=Registration;Integrated Security=True");
            conn.Open();
            string checkuser = "select count(*) from RegData where Username='" + TextBoxUsername.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                string checkPasswordQuery = "select Password from RegData where Username='" + TextBoxUsername.Text + "'";
                SqlCommand passcom = new SqlCommand(checkPasswordQuery, conn);
                string Password = passcom.ExecuteScalar().ToString().Replace(" ", "");
                if (Password == TextBoxPassword.Text)
                {
                    Session["New"] = TextBoxUsername.Text;
                    using (SqlCommand cmdid = new SqlCommand("select Id from RegData where Username = '" + TextBoxUsername.Text + "'", conn))
                    {
                        int id = (int)cmdid.ExecuteScalar();
                        Session["ID"] = id;
                    }
                    Response.Write("Password is correct");

                    Response.Redirect("User.aspx");

                }
                else
                {
                    Response.Write("Password is not correct");
                }

            }

            else
            {
                Response.Write("User Name is not correct");
            }
        }
    }
}