using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

namespace OnlineDhaka
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
        //    cmd = new SqlCommand("insert into [HomeDeal_Database].[dbo].[UserDetails] ([name],[email],[phone],[password]) values ('" + name + "','" + email + "','" + phone + "','" + password + "')", con);
        //            cmd.ExecuteNonQuery();
        //            con.Close();
        //            string link="http://localhost:25384/ForumHomePage.aspx#login";

        //            MailMessage msg = new MailMessage();
        //            msg.From = new MailAddress("jobayershoaib@gmail.com");
        //            msg.To.Add(email);
        //            msg.Subject = "HomeDeal Registration";
        //            msg.Body = "Hi " + name + " your registration to HomeDeal.com has been completed. Your Email address is " + email + " Phone number is " + phone + " and Password is " + password +  ". For confirmation go to :"+ link +" Thank you " + name + " for dealing with HomeDeal.";
        //            msg.IsBodyHtml = true;

        //            SmtpClient smtp = new SmtpClient();
        //            smtp.Host = "smtp.gmail.com";
        //            System.Net.NetworkCredential netCredential = new System.Net.NetworkCredential();
        //            netCredential.UserName = "jobayershoaib@gmail.com";
        //            netCredential.Password = "110104098";
        //            smtp.UseDefaultCredentials = true;
        //            smtp.Credentials = netCredential;
        //            smtp.Port = 587;
        //            smtp.EnableSsl = true;
        //            smtp.Send(msg);

                    
        //            MSGbox("Registration completed. An email has been send to " + email);
        //            userNameTextBox.Text="";                
        //            mailTextBox.Text="";
        //            phoneTextBox.Text="";
        //            passwordTextBox.Text="";

            try
            {
                SmtpClient smtpclient = new SmtpClient();
                
                
                //smtpclient.DeliveryMethod = SmtpDeliveryMethod.Network;



                MailMessage mail = new MailMessage();
                mail.From = new MailAddress("shariaretanvirakash@gmail.com");
                mail.To.Add(CEmail.Text);

                mail.Subject = CSubject.Text;
                //mail.SubjectEncoding = System.Text.Encoding.UTF8;
                //mail.Body = "wefjberfebfr";
                //mail.SubjectEncoding = System.Text.Encoding.UTF8;
                mail.Body = "<b> Sender Name </b> : " + CName.Text + "<br/>"
                    + "<b> Sender Email </b> " + CEmail.Text + "<br/>"
                    + "<b> Sender Comments </b>" + CComments.Text;
                mail.IsBodyHtml = true;
                smtpclient.Host = "smtp.gmail.com";
                NetworkCredential ntcr = new NetworkCredential();
                ntcr.UserName = "shariaretanvirakash@gmail.com";
                ntcr.Password = "qwerttrewq12345";
                smtpclient.UseDefaultCredentials = true;
                smtpclient.Credentials = ntcr;
                smtpclient.Port = 587;
                smtpclient.EnableSsl = true;
                smtpclient.Send(mail);
                Label1.ForeColor = System.Drawing.Color.Blue;
                
                Label1.Text = "<div class='alert alert-danger' role='alert'>Thank You For Contacting Us</div>";  //
                //CName.Enabled = false;
                //CEmail.Enabled = false;
                //CSubject.Enabled = false;
                //CComments.Enabled = false;
                //Button1.Enabled = false;
            }
            catch
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "<div class='alert alert-danger' role='alert'>Unknown Exception</div>";  //Unknown Exception"
            }

        }
    }
}