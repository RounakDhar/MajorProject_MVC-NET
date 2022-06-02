using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class myorder_details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = Session["s1"].ToString();
        Label3.Text = Session["s2"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("home2_m2.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("myprofile.aspx");
    }
}