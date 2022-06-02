using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class otp_check : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == Session["ss_otp"].ToString())
        {
            String Email = Session["ss_Email"].ToString();
            String Name = Session["ss_Name"].ToString();
            String Password = Session["ss_Password"].ToString();
            String Phone = Session["ss_Phone"].ToString();
            String filepath = Session["ss_filepath"].ToString();

            //Response.Write("<script>alert(' correct otp');</script>");

            
            string qry = "insert into regtable values('" + Email + "','" + Name + "','" + Password + "','" + Phone + "','" + filepath + "') ";

       bool a = dbaccess.SaveData(qry);

       if(a==true)
       {
           //string url = "User_Reg.aspx";
           //Response.Write("<script type='text/javascript'>window.moveTo('" + url + "');</script>");
           Response.Write("<script>alert('SignUp Succesfully!!!');window.location='U_logIn.aspx';</script>");
       }
       else
       {
           Label1.Text = "Something went wrong";
           Label1.ForeColor = System.Drawing.Color.Red;
       }
        }
        else
        {
            Response.Write("Wrong OTP");
        }
    }
}