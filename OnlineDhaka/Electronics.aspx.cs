using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using System.Configuration;
using System.Text;

namespace OnlineDhaka
{
    public partial class Electronics : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //GetElectronics();
        }
        private void GetElectronics()
        {
            string CS = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(CS);
            SqlDataAdapter da = new SqlDataAdapter("RetriveElectronics", conn);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataSet ds = new DataSet();
            da.Fill(ds);
            conn.Open();
            GridView1.DataSource = ds;
            GridView1.DataBind();
            conn.Close();
        }
    }
}