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
    }
}