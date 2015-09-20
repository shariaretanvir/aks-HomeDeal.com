using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using System.IO;
using System.Drawing.Imaging;
using System.Drawing;
using System.Windows;
namespace OnlineDhaka
{
    public partial class WishlistDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string productid = Request.QueryString["ID"];
                string cs = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(cs);
                using (SqlCommand cmd = new SqlCommand("select Name,Email,PhoneNo,Location,Catagories,SubCatagories,ProductName,Description,Price,Image from Registration.dbo.PostAd where Id = '" + productid + "' ", con))
                {
                    con.Open();
                    using (SqlDataReader rdr = cmd.ExecuteReader())
                    {
                        while (rdr.Read())
                        {
                            Label1.Text = rdr["Name"].ToString();
                            Label2.Text = rdr["Email"].ToString();
                            Label3.Text = rdr["PhoneNo"].ToString();

                            Label4.Text = rdr["Location"].ToString();
                            Label5.Text = rdr["Catagories"].ToString();
                            Label6.Text = rdr["SubCatagories"].ToString();
                            Label7.Text = rdr["ProductName"].ToString();

                            Label8.Text = rdr["Description"].ToString();
                            Label9.Text = rdr["Price"].ToString();
                            Label10.Text = rdr["Image"].ToString();
                            //byte[] img = (byte[])rdr["Image"];
                            //if (img == null)
                            //    Image1.ImageUrl = null;
                            //else
                            //{

                            //MemoryStream ms = new MemoryStream(img,false);
                                //Image1.ImageUrl = Image.FromStream(ms);
                            //Image1 = rdr["Image"];
                            //}

                        }
                    }
                }
 
            }
        }
    }
}