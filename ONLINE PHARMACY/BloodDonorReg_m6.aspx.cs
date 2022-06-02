using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class BloodDonorReg_m6 : System.Web.UI.Page
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
                TextBox4.Text = ds.Tables[0].Rows[0]["Email"].ToString();
                TextBox5.Text = ds.Tables[0].Rows[0]["Name"].ToString();
                TextBox6.Text = ds.Tables[0].Rows[0]["Phone"].ToString();
            }
            else
            {
                Label1.Text = "something went wrong!!";
                Label1.ForeColor = System.Drawing.Color.Red;

            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string Email = TextBox4.Text;
        string Name = TextBox5.Text;
        string Phoneno = TextBox6.Text;
        string Bloodgroup = DropDownList1.SelectedValue;
        string filename = FileUpload1.FileName.ToString();
        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/IMAGE/") + filename);
        string Image = "~/IMAGE/" + filename;

        string qry = "insert into blood_donar values('" + Email + "','" + Name + "','" + Phoneno + "','" + Bloodgroup + "','" + Image + "')";

        bool a = dbaccess.SaveData(qry);
        if (a == true)
        {
            
            Response.Write("<script>alert('THANK YOU.YOUR BLOOD CAN SAVE SOMEONE LIFE');window.location='blood_donar.aspx';</script>");
        }
        else
        {
            Label1.Text = "Something went wrong";
        }

    }      
}