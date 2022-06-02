using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class order_prescription : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Email"] != null && Session["Password"] != null)
        {
            String Email = Session["Email"].ToString();
            String qry = "select * from regtable where Email='" + Email + "'";
            DataSet ds = dbaccess.FetchData(qry);
            if (ds.Tables[0].Rows.Count == 1)
            {
                Label2.Text = ds.Tables[0].Rows[0]["Email"].ToString();
                
            }
            else
            {
                Label2.Text = "something went wrong!!";
                Label2.ForeColor = System.Drawing.Color.Red;

            }
        }
        else
        {
            Label2.Text = "no data present";
            Label2.ForeColor = System.Drawing.Color.Red;
        }
        Label7.Text = DateTime.Now.ToShortDateString();
        findorderid();

    }
    public void findorderid()
    {
        String pass = "abcdefghijklmnopqrstuvwxyz123456789";
        Random r = new Random();
        char[] mypass = new char[5];
        for (int i = 0; i < 5; i++)
        {
            mypass[i] = pass[(int)(35 * r.NextDouble())];

        }
        String order_id;
        order_id = "REF" + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + new string(mypass);

        Label3.Text = order_id;


    }
  
   
    

    protected void Button1_Click1(object sender, EventArgs e)
    {
        string email_id = Label2.Text;
        string order_id = Label3.Text;
        string order_date = Label7.Text;
        string c_name = TextBox1.Text;
        string filename = FileUpload1.FileName.ToString();
        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/IMAGE/") + filename);
        string image = "~/IMAGE/" + filename;
        string c_address = TextBox2.Text;
        string c_landmark = TextBox3.Text;
        string c_city = TextBox7.Text;
        string c_pincode = TextBox6.Text;
        string contact_no = TextBox4.Text;
        string alt_contactno = TextBox5.Text;

        string qry2 = "insert into order_prescription values('" + email_id + "','" + order_id + "','" + order_date + "','" + c_name + "','" + image + "','" + c_address + "','" + c_landmark + "','" + c_city + "','" + c_pincode + "','" + contact_no + "','" + alt_contactno + "')";

        bool a = dbaccess.SaveData(qry2);
        if (a == true)
        {
            string qry1 = "select * from order_prescription where order_id = '" + order_id + "'";
            DataSet dsa = dbaccess.FetchData(qry1);

            if (dsa.Tables[0].Rows.Count == 1)
            {
                Session["order_id"] = order_id;
                Session["c_name"] = c_name;
                Session["c_address"] = c_address;
                Session["c_landmark"] = c_landmark;
                Session["c_city"] = c_city;
                Session["c_pincode"] = c_pincode;
                Session["contact_no"] = contact_no;
                Session["alt_contactno"] = alt_contactno;
            }
            Response.Redirect("SuccessFullOrder.aspx");
            
        }
        else
        {
            Label14.Text = "Something went wrong";
        }
    }
}