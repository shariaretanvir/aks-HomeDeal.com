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
    public partial class ViewProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["ID"] != null && Session["New"] != null)
                {
                    Labelp.Text = Session["New"].ToString().ToUpper();
                }
            }
            else
            {
                Labelp.Text = Session["New"].ToString().ToUpper();
            }
        }

        protected void DetailsView1_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
        {
            //DetailsView1.DataBind();
            string CS = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(CS);
            using(SqlCommand cmd = new SqlCommand("select Username from RegData where Id= '"+Session["ID"]+"'",conn))
            {
                conn.Open();
                string NEWNAME= cmd.ExecuteScalar().ToString();
                Session["New"] = null;
                Session["New"] = NEWNAME;
                
            }
        }

        //protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        //{
        //    GridView1.EditIndex = -1;

        //}

        //protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        //{
        //    GridView1.EditIndex = e.NewEditIndex;
        //}

        //protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        //{
        //    string id = ((Label)GridView1.Rows[e.RowIndex].FindControl("Label1")).Text;
        //    string name = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1")).Text;
        //    string mail = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2")).Text;
        //    string aria = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox3")).Text;

        //    string cs = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
        //    SqlConnection conn = new SqlConnection(cs);
        //    using (SqlCommand cmd = new SqlCommand("update RegData set Username ='"+name+"', Email = '"+mail+"', Area = '"+aria+"' where Id = '"+id+"' ",conn))
        //    {
        //        conn.Open();
        //        cmd.ExecuteNonQuery();
        //        GridView1.EditIndex = -1;
        //    }

        //}
    }
}