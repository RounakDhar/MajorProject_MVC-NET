using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class shasn001_medientry : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string product_id = TextBox1.Text;
        string product_name = TextBox2.Text;
        string price = TextBox3.Text;
        string qty = TextBox6.Text;
        string unit = TextBox4.Text;
        string filename = FileUpload1.FileName.ToString();
        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/IMAGE/") + filename);
        string image = "~/IMAGE/" + filename;
        string product_details = TextBox5.Text;
        string keyword = TextBox7.Text;
        string product_type = DropDownList1.SelectedValue;


        string qry = "insert into shasn001_medicine values('" + product_id + "','" + product_name + "','" + price + "','" + qty + "','" + unit + "', '" + image + "','" + product_details + "','" + keyword + "','" + product_type + "')";

        bool a = dbaccess.SaveData(qry);
        if (a == true)
        {
            Label1.Text = "Data inserted successfully";
           // Response.Write("<script>alert('Registered Successfully!!');window.location='login.aspx';</script>");
        }
        else
        {
            Label1.Text = "Something went wrong";
        }
    }
}