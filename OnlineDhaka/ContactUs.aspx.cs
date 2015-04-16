using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace OnlineDhaka
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                MailMessage mail = new MailMessage();
                mail.From = new MailAddress("shariaretanvirakash@gmail.com");
                mail.To.Add("shariaretanvir_akash@yahoo.com");
                mail.Subject = CSubject.Text;
                mail.Body = "<b> Sender Name </b> : " + CName.Text + "<br/>"
                    + "<b> Sender Email </b> " + CEmail.Text + "<br/>"
                    + "<b> Sender Comments </b>" + CComments.Text;
                mail.IsBodyHtml = true;
                SmtpClient smtpclient = new SmtpClient("smtp.gmail.com", 587);
                smtpclient.EnableSsl = true;
                smtpclient.Credentials = new System.Net.NetworkCredential("shariaretanvirakash@gmail.com","qwerttrewq12345");
                smtpclient.Send(mail);
                Label1.ForeColor = System.Drawing.Color.Blue;
                Label1.Text = "Thank You For Contacting Us";
                CName.Enabled = false;
                CEmail.Enabled = false;
                CSubject.Enabled = false;
                CComments.Enabled = false;
                Button1.Enabled = false;
            }
            catch
            {
                //Label1.ForeColor = System.Drawing.Color.Red;
                //Label1.Text = "Unknown Exception";
            }

        }
    }
}