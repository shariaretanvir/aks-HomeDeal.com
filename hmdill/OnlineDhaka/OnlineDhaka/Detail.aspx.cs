using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Configuration;
using System.Collections;
using System.IO;

namespace OnlineDhaka
{
    public partial class Detail : System.Web.UI.Page
    {
        int i = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                if (Session["ID"] != null && Session["New"] != null)
                {
                    string userid = Session["ID"].ToString();
                    string id = Request.QueryString["Id"];
                    string css = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
                    SqlConnection cons = new SqlConnection(css);
                    cons.Open();
                    using (SqlCommand cmdd = new SqlCommand("  select FavlisttId from Registration.dbo.UserRecord where UserId= '" + Session["ID"] + "' ", cons))
                    {
                        int id1 = Convert.ToInt32(Request.QueryString["Id"]);
                        //cons.Open();
                        using (SqlDataReader rdr = cmdd.ExecuteReader())
                        {
                            //string FavProductId = cmdd.ExecuteScalar().ToString();
                            while (rdr.Read())
                            {
                                int FavlisttId = Convert.ToInt32(rdr["FavlisttId"]);
                                if (id1 == FavlisttId)
                                {
                                    Label4.Text = "<div class='alert alert-info' role='alert'>You Mark This Product As Your Favourite Product !!! </div>";
                                    CheckBox2.Visible = false;
                                }
                            }
                        }
                    }
                    //using(SqlCommand )

                    using (SqlCommand cmdddd = new SqlCommand("select WishlistId from Registration.dbo.UserRecord where UserId= '" + Session["ID"] + "' ", cons))
                    {
                        int id2 = Convert.ToInt32(Request.QueryString["Id"]);
                        using (SqlDataReader rdr = cmdddd.ExecuteReader())
                        {
                            while (rdr.Read())
                            {
                                int WishlistId = Convert.ToInt32(rdr["WishlistId"]);

                                if (id2 == WishlistId)
                                {
                                    Label3.Text = "<div class='alert alert-info' role='alert'>This Is Your Wishlisted Product !!! </div>";
                                    CheckBox1.Visible = false;
                                }
                            }
                        }
                    }
                    //int ID = (int)Session["ID"];
                    //TextBoxAdname.Text = Session["New"].ToString();
                }
                else
                {
                    CheckBox2.Visible = false;
                    CheckBox1.Visible = false;
                    DropDownList1.Visible = false;
                }
            }
            if (CheckBox2.Checked)
            {

            }
            //if (this.Page.PreviousPage != null)
            //{
            //    GridView GridView11 = (GridView)this.Page.PreviousPage.FindControl("GridView11");
            //    GridViewRow selectedRow = GridView11.SelectedRow;
            //    Response.Write("Id: " + selectedRow.Cells[0].Text + "<br />");
            //    //Response.Write("City: " + selectedRow.Cells[1].Text + "<br />");
            //    //Response.Write("PostalCode: " + selectedRow.Cells[2].Text);
            //}
        }
        
        protected void Button5_Click(object sender, EventArgs e)
        {
            
             string id = Request.QueryString["Id"];
             //Label3.Text = id;
            if (CheckBox1.Checked)
            {
                string cs = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
                SqlConnection conn = new SqlConnection(cs);
                using (SqlCommand ccc = new SqlCommand("select ProductName from Registration.dbo.PostAd where Id = '" + id + "'", conn))
                {
                    conn.Open();
                    string wishproductname = ccc.ExecuteScalar().ToString();
                    using (SqlCommand cmd = new SqlCommand("insert into Registration.dbo.UserRecord values('" + Session["Id"].ToString() + "' ,'','','" + id + "','"+wishproductname+"','')", conn))
                    {
                        //conn.Open();
                        cmd.ExecuteNonQuery();
                        Label3.Text = "<div class='alert alert-info' role='alert'> Wishlisted!!! </div>";
                        CheckBox1.Visible = false;
                    }
                }
            }
            if (DropDownList1.SelectedIndex > 0)
            {
                int count =i+1;
                int rate =  Convert.ToInt32(DropDownList1.SelectedValue);
                string cs = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
                SqlConnection conn = new SqlConnection(cs);
                using (SqlCommand cmdd = new SqlCommand("insert into Registration.dbo.UserRecord values('" + Session["Id"].ToString() + "' ,'','','','','"+ rate +"')",conn))
                {
                    conn.Open();
                    cmdd.ExecuteNonQuery();
                    using (SqlCommand sss = new SqlCommand(" select Rating from Registration.dbo.PostAd where Id='"+ id +"' ", conn))
                    {
                        int orate =Convert.ToInt32(sss.ExecuteScalar());
                        Label2.Text = orate.ToString();
                        int totrate = (orate + rate) /i ;
                        
                        using (SqlCommand sum = new SqlCommand("update Registration.dbo.PostAd set Rating ='" + totrate + "' where Id = '" + id + "'", conn))
                        {
                            sum.ExecuteNonQuery();
                            DropDownList1.Visible = false;
                        }
                    }
                }
            }
            if (CheckBox2.Checked)
            {
                string cs = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
                SqlConnection conn = new SqlConnection(cs);
                using (SqlCommand ccc = new SqlCommand("select ProductName from Registration.dbo.PostAd where Id = '" + id + "'", conn))
                {
                    conn.Open();
                    string favproductname = ccc.ExecuteScalar().ToString();
                    using (SqlCommand cmd = new SqlCommand(" insert into Registration.dbo.UserRecord values('" + Session["Id"].ToString() + "' ,'" + id + "','" + favproductname + "','','','')", conn))
                    {
                        //conn.Open();
                        cmd.ExecuteNonQuery();
                        Label4.Text = "<div class='alert alert-info' role='alert'>You Mark This Product As Your Favourite Product !!! </div>";
                        CheckBox2.Visible = false;
                        using (SqlCommand count = new SqlCommand("select CountFav from Registration.dbo.PostAd where Id = '" + id + "'", conn))
                        {
                            int numberoffav = Convert.ToInt32(count.ExecuteScalar());
                            int c = numberoffav + 1;
                            using (SqlCommand increment = new SqlCommand("update Registration.dbo.PostAd set CountFav = '" + c + "'where Id = '" + id + "'", conn))
                            {
                                increment.ExecuteNonQuery();
                            }
                        }
                    }
                }
            }
        }
    }
}