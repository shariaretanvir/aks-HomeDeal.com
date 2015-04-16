using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Collections;
using System.IO;

namespace OnlineDhaka
{
    public partial class Thread : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string forum = Request.QueryString["forumId"];
            string CS = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(CS);
            using (SqlCommand cmd = new SqlCommand("select question from Forum where forumId = @forumId ", conn))
            {
                cmd.Parameters.AddWithValue("@forumId", forum);
                conn.Open();
                Label1.Text = cmd.ExecuteScalar().ToString();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string forum = Request.QueryString["forumId"];
            string CS = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(CS);
            using (SqlCommand cmd = new SqlCommand("insert into Thread (forumId,answer,posterName,dateTim) values (@forumId,@answer,@posterName,@dateTim)", conn))
            {
                cmd.Parameters.AddWithValue("@forumId", forum);
                cmd.Parameters.AddWithValue("@answer", TextBox1.Text);
                cmd.Parameters.AddWithValue("@posterName", TextBox2.Text);
                cmd.Parameters.AddWithValue("@dateTim", DateTime.Now);
                conn.Open();
                cmd.ExecuteNonQuery();
                GridView1.DataBind();
            }
        }
    }
}