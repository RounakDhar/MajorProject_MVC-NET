using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;  

public partial class User_reg_m4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string Email = TextBox2.Text;
        string Name = TextBox3.Text;
        string Password = TextBox4.Text;
        string Phone = TextBox6.Text;
        string filename = FileUpload1.FileName.ToString();
        //FileUpload1.PostedFile.SaveAs(Server.MapPath("~/IMAGE") + filename);
        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/IMAGE/") + filename);
        string filepath = "~/IMAGE/" + filename;

        /*string qry = "insert into regtable values('" + Email + "','" + Name + "','" + Password + "','" + Phone + "')";

        bool a = dbaccess.SaveData(qry);

        if(a==true)
        {
            Response.Write("<script>alert('SignUp Succesfully!!!');window.location='User_LogIn.aspx';</script>");
        }
        else
        {
            Label1.Text = "Something went wrong";
            Label1.ForeColor = System.Drawing.Color.Red;
        }*/




        int _min = 1000;
        int _max = 9999;
        Random _rdm = new Random();
        int r = _rdm.Next(_min, _max);
        Session["ss_Email"] = Email;
        Session["ss_Name"] = Name;
        Session["ss_Password"] = Password;
        Session["ss_Phone"] = Phone;
        Session["ss_filepath"] = filepath;
        Session["ss_otp"] = r;
        string smtpAddress = "smtp.gmail.com";
        int portNumber = 587;
        bool enableSSL = true;
        string emailFromAddress = "projectmajor745@gmail.com"; //Sender Email Address  
        string password = "@1234ABab"; //Sender Password  
        string emailToAddress = Email; //Receiver Email Address  
        string subject = "Hello";
        string body = "Hello, Your OTP password is " + r;
        using (MailMessage mail = new MailMessage())
        {
            mail.From = new MailAddress(emailFromAddress);
            mail.To.Add(emailToAddress);
            mail.Subject = subject;
            mail.Body = body;
            mail.IsBodyHtml = true;
            //mail.Attachments.Add(new Attachment("D:\\TestFile.txt"));//--Uncomment this to send any attachment  
            using (SmtpClient smtp = new SmtpClient(smtpAddress, portNumber))
            {
                smtp.Credentials = new NetworkCredential(emailFromAddress, password);
                smtp.EnableSsl = enableSSL;
                smtp.Send(mail);
            }
        }
        // string url = "otp_check.aspx";
        //Response.Write("<script type='text/javascript'>window.open('" + url + "', '_blank', 'height=50,width=500,top=300,left=500,status=yes,toolbar=no,menubar=no,location=no,scrollbars=yes,resizable=no,titlebar=no');</script>");
        Response.Redirect("~/otp_check.aspx");
        
    }
}