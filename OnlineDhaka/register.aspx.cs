using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Data.Sql;

namespace OnlineDhaka
{
    public partial class login1 : System.Web.UI.Page
    {
        int temp = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection("Data Source=AKASH-PC\\SQLEXPRESS;Initial Catalog=Registration;Integrated Security=True");
                conn.Open();
                string checkuser = "select count(*) from RegData where Username='" + TextBoxname.Text + "'";
                SqlCommand com = new SqlCommand(checkuser, conn);
                temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                if (temp == 1)
                {

                    Response.Write("User already exists");
                    

                }

                conn.Close();
            }


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (temp == 0)
            {
                try
                {

                    
                    
                    SqlConnection conn = new SqlConnection("Data Source=AKASH-PC\\SQLEXPRESS;Initial Catalog=Registration;Integrated Security=True");
                    conn.Open();
                    string insertquery = "insert into RegData (Username,Email,Password,Area) values (@uname,@email,@password,@area)";
                    SqlCommand com = new SqlCommand(insertquery, conn);

                    
                    com.Parameters.AddWithValue("@uname", TextBoxname.Text);
                    com.Parameters.AddWithValue("@email", TextBoxemail.Text);
                    com.Parameters.AddWithValue("@password", TextBoxpass.Text);
                    com.Parameters.AddWithValue("@area", DropDownListcountry.SelectedItem.ToString());
                    com.ExecuteNonQuery();
                    
                    Response.Write("Registration Successful");
                    Response.Redirect("register.aspx");
                    conn.Close();
                }
                catch (Exception ex)
                {
                    Response.Write("error :" + ex.ToString());
                }
            }
        }
    }﻿

    }









































            /*
            if (Page.IsCallback == true)
            {
                Response.Write("your data has been entered is SQL");

            }  */














        /*
    
         if (IsPostBack)
         {
             SqlConnection conn = new SqlConnection("Data Source=AKASH-PC\\SQLEXPRESS;Initial Catalog=Registration;Integrated Security=True");
             conn.Open();
             string checkuser = "select count(*) from RegData where Username ='" + TextBoxname.Text + "'";
             SqlCommand com = new SqlCommand(checkuser, conn);
             var result = com.ExecuteScalar();
             if (result != null)
             {
                 Response.Write("user already exist");
                    
                 conn.Close();

             }
                
                
*/


        /* int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                
     if (temp == 1)
     {
                    
         Response.Write("User already exists");

     }

     conn.Close(); */
  
    /*
    }
}
        */
            

        


/*
        SqlConnection connection = new SqlConnection("Data Source=AKASH-PC;Initial Catalog=Registration;Integrated Security=True");
            SqlCommand cmd;
            SqlDataReader dr; 

        protected void Button2_Click(object sender, EventArgs e)
        {

          /*  connection.Open();
            cmd = new SqlCommand("Insert into RegData values('"+TextBoxname.Text+"','"+TextBoxemail.Text+"', '"+TextBoxpass.Text+"', '"+DropDownListcountry.SelectedItem.ToString()+"')");
            cmd.Parameters.AddWithValue("@Username", TextBoxname.Text);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                Response.Write("User already exists");
            }

            else
            {
                Response.Write("registration is successfull");
            }


            connection.Close();

        */


/*
        protected void Button2_Click(object sender, EventArgs e)
        {



                 SqlConnection conn = new SqlConnection("Data Source=AKASH-PC\\SQLEXPRESS;Initial Catalog=Registration;Integrated Security=True");
                conn.Open();
                string InsertQuery = "insert into RegData (Username,Email,Password,Area) values (@Uname, @email, @password, @area) ";
                SqlCommand com = new SqlCommand(InsertQuery, conn);

                com.Parameters.AddWithValue("@Uname", TextBoxname.Text);
                com.Parameters.AddWithValue("@email", TextBoxemail.Text);
                com.Parameters.AddWithValue("@password", TextBoxpass.Text);
                com.Parameters.AddWithValue("@area", DropDownListcountry.SelectedItem.ToString());


                com.ExecuteNonQuery();
                
               
                
                
                Response.Write("Registration is successfull");
                conn.Close();

        
             
        
            

            
        }

        protected void TextBoxconfirmation_TextChanged(object sender, EventArgs e)
        {

        }
    }}
*/



