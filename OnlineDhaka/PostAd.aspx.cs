using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Data;
using System.Configuration;

namespace OnlineDhaka
{
    public partial class PostAd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownListcata.DataSource = GetData("getcatagories", null);
                DropDownListcata.DataBind();

                ListItem licata = new ListItem("Select Catagories", "-1");
                DropDownListcata.Items.Insert(0, licata);

                ListItem lisubcata = new ListItem("Select SubCatagories", "-1");
                DropDownListsubcata.Items.Insert(0, lisubcata);

                DropDownListsubcata.Enabled = false;
            }
        }

        private DataSet GetData(string SPName, SqlParameter SPParameter)
        {
            string CS = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(CS);
            SqlDataAdapter da = new SqlDataAdapter(SPName, conn);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            if (SPParameter != null)
            {
                da.SelectCommand.Parameters.Add(SPParameter);
            }
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;

        }




        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            try
            {



                SqlConnection conn = new SqlConnection("Data Source=AKASH-PC\\SQLEXPRESS;Initial Catalog=Registration;Integrated Security=True");
                conn.Open();
                String path = Server.MapPath("IMG/");
                if (FileUpload1.HasFile)
                {
                    string ext = Path.GetExtension(FileUpload1.FileName);
                    if (ext == ".jpg" || ext == ".png")
                    {
                        FileUpload1.SaveAs(path + FileUpload1.FileName);
                        string n = "~/IMG/" + FileUpload1.FileName;



                        string insertquery = "insert into PostAd (Name,Email,PhoneNo,Location,Catagories,SubCatagories,ProductName,Description,Price,Image) values (@Name,@Email,@PhoneNo,@Location,@Catagories,@SubCatagories,@ProductName,@Description,@Price,'" + n + "')";
                        SqlCommand com = new SqlCommand(insertquery, conn);

                        com.Parameters.AddWithValue("@Name", TextBoxAdname.Text);
                        com.Parameters.AddWithValue("@Email", TextBoxAdemail.Text);
                        com.Parameters.AddWithValue("@PhoneNo", TextBoxAdphon.Text);
                        com.Parameters.AddWithValue("@Location", DropDownListLocation.SelectedItem.ToString());
                        com.Parameters.AddWithValue("@Catagories", DropDownListcata.SelectedItem.ToString());
                        com.Parameters.AddWithValue("@SubCatagories", DropDownListsubcata.SelectedItem.ToString());
                        com.Parameters.AddWithValue("@ProductName", TextBoxAdtitle.Text);
                        com.Parameters.AddWithValue("@Description", TextBoxAddescription.Text);
                        com.Parameters.AddWithValue("@Price", TextBoxAdprice.Text);
                        //com.Parameters.AddWithValue("@Image", FileUpload1.FileName);
                        com.ExecuteNonQuery();



                        Response.Redirect("PostAd.aspx");
                        conn.Close();
                    }

                }
                else
                {
                    confarmation.Text = "Post Ad is not Successfull";
                }

            }
            catch (Exception ex)
            {
                Response.Write("error :" + ex.ToString());
            }
            confarmation.Text = "Post Ad Successfull";
        }

        protected void DropDownListcata_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownListcata.SelectedIndex == 0)
            {
                DropDownListsubcata.SelectedIndex = 0;
                DropDownListsubcata.Enabled = false;
            }
            else
            {
                DropDownListsubcata.Enabled = true;
                SqlParameter parameter = new SqlParameter("@catid", DropDownListcata.SelectedValue);
                DataSet ds = GetData("getsubcatagories", parameter);

                DropDownListsubcata.DataSource = ds;
                DropDownListsubcata.DataBind();

                ListItem lisubcata = new ListItem("Select SubCatagories", "-1");
                DropDownListsubcata.Items.Insert(0, lisubcata);
            }
            if (DropDownListcata.SelectedIndex == 7)
            {
                DropDownListsubcata.Enabled = false;
            }
        }

        protected void DropDownListsubcata_SelectedIndexChanged(object sender, EventArgs e)
        {
            //if (DropDownListsubcata.SelectedValue == "-1")
            //{
            //    DropDownListsubcata.Enabled = false;
            //}
        }
    }
}