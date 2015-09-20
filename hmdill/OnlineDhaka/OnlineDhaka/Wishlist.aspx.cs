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
    public partial class Wishlist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["ID"] != null && Session["New"] != null)
                {
                    int ID = (int)Session["ID"];
                    //TextBoxAdname.Text = Session["New"].ToString();

                    string cs = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
                    SqlConnection con = new SqlConnection(cs);
                    using (SqlCommand comd = new SqlCommand("select WishlistId,WishlistName from Registration.dbo.UserRecord where UserId='" + ID + "'", con))
                    {
                        con.Open();
                        GridView1.DataSource = comd.ExecuteReader();
                        GridView1.DataBind();

                        //while (rdr.Read())
                        //{
                        //    int wishlist = Convert.ToInt32(rdr["WishlistId"]);
                        //    using (SqlDataAdapter cda = new SqlDataAdapter("select * from Registration.dbo.PostAd where Id='" + wishlist + "'", con))
                        //    {
                        //        DataSet dset = new DataSet();
                        //        cda.Fill(dset);
                        //        GridView1.DataSource = dset; //cmmmm.ExecuteReader();
                        //        GridView1.DataBind();

                        //    }
                        //}

                    }
                }



                else
                {
                    Response.Redirect("~/login.aspx");
                }
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/WishlistDetail.aspx?ID="+((LinkButton)sender).Text);
        }












        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    if (!IsPostBack)
        //    {
        //        if (Session["ID"] != null && Session["New"] != null)
        //        {
        //            int ID = (int)Session["ID"];
        //            //TextBoxAdname.Text = Session["New"].ToString();

        //            string cs = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
        //            SqlConnection con = new SqlConnection(cs);
        //            using (SqlCommand comd = new SqlCommand("select WishlistId from Registration.dbo.UserRecord where UserId='" + ID + "'", con))
        //            {
        //                con.Open();
        //                using (SqlDataReader rdr = comd.ExecuteReader())
        //                {
        //                    //con.Close();
        //                    //GridView1.DataSource = rdr;
        //                    //GridView1.DataBind();

        //                    while (rdr.Read())
        //                    {
        //                        int wishlist = Convert.ToInt32(rdr["WishlistId"]);
        //                        using (SqlDataAdapter cda = new SqlDataAdapter("select * from Registration.dbo.PostAd where Id='" + wishlist + "'", con))
        //                        {
        //                            DataSet dset = new DataSet();
        //                            cda.Fill(dset);
        //                            GridView1.DataSource = dset; //cmmmm.ExecuteReader();
        //                            GridView1.DataBind();

        //                        }
        //                    }

        //                }
        //            }


        //        }
        //        else
        //        {
        //            Response.Redirect("~/login.aspx");
        //        }
        //    }
        //}






    }
}