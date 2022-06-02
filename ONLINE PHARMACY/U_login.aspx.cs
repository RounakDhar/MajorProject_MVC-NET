using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class U_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (Request.Cookies["Email"] != null)
            {
                TextBox2.Text = Request.Cookies["Email"].Value;
            }
            if (Request.Cookies["Password"] != null)
            {
                TextBox3.Attributes.Add("value", Request.Cookies["Password"].Value);
            }
            if (Request.Cookies["Email"] != null && Request.Cookies["Password"] != null)
            {
                CheckBox1.Checked = true;
            }
        } 
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string Email = TextBox2.Text;
        string Password = TextBox3.Text;
        string qry = "select * from regtable where Email = '" + Email + "' and password='" + Password + "'";
        DataSet dsa = dbaccess.FetchData(qry);

        if (dsa.Tables[0].Rows.Count == 1)
        {
            Session["Email"] = TextBox2.Text;
            Session["Password"] = TextBox3.Text;
            //Response.Write("<script>alert('Login Succesfully!!!');window.location='welcome.aspx';</script>");
            Response.Write("<script>window.location='home2_m2.aspx';</script>");
            if (CheckBox1.Checked == true)
            {
                Response.Cookies["Email"].Value = TextBox2.Text;
                Response.Cookies["Password"].Value = TextBox3.Text;
                Response.Cookies["Email"].Expires = DateTime.Now.AddDays(15);
                Response.Cookies["Password"].Expires = DateTime.Now.AddDays(15);
            }
            else
            {

                Response.Cookies["Email"].Expires = DateTime.Now.AddDays(-1);

                Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);
            }
        }
        else
        {
            Label1.Text = "Email or Password is incorrect";
            Label1.ForeColor = System.Drawing.Color.Red;
            //Response.Write("<script>alert('Email or Password is incorrect!!!')</script>");
        }
    }
}