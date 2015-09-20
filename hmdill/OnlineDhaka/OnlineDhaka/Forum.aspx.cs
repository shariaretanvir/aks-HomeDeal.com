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
    public partial class Forum : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //string titleId = DropDownList1.Text;
            //int ctitleId = Convert.ToInt32(titleId);
            //string question = TextBox1.Text;
            //string posterName = TextBoxName.Text;
            //DateTime dateTime = DateTime.Now;


            //PostForum.insertForum(ctitleId, question, posterName, dateTime);
            //GridView1.DataBind();

            string CS = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(CS);
            using (SqlCommand cmd = new SqlCommand("insert into Forum (titleId,question,posterName,dateTim) values (@titleId,@question,@posterName,@dateTim)", conn))
            {
                cmd.Parameters.AddWithValue("@titleId", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("@question", TextBox1.Text);
                cmd.Parameters.AddWithValue("@posterName", TextBoxName.Text);
                cmd.Parameters.AddWithValue("@dateTim", DateTime.Now);
                conn.Open();
                cmd.ExecuteNonQuery();
                GridView1.DataBind();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}