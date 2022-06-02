using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class shop_entry_form : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string shop_id = TextBox1.Text;
        string shop_name = TextBox2.Text;
        string registration_no = TextBox3.Text;
        string address = TextBox4.Text;
        string city = TextBox5.Text;
        string email_id = TextBox6.Text;
        string contact_no = TextBox7.Text;
        string pagelink = TextBox8.Text;

        string qry = "insert into shop_details values('" + shop_id + "','" + shop_name + "','" + registration_no + "','" + address + "','" + city + "','" + email_id + "','" + contact_no + "','" + pagelink + "')";

        bool a = dbaccess.SaveData(qry);
        if (a == true)
        {
            Label1.Text = "Data inserted";

        }
        else
        {
            Label1.Text = "Something went wrong";
        }
    }
}