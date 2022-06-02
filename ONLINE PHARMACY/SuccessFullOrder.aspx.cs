using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class SuccessFullOrder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["order_id"] != null)
        {
            String order_id = Session["order_id"].ToString();
            String qry = "select * from order_prescription where order_id='" + order_id + "'";
            DataSet ds = dbaccess.FetchData(qry);
            if (ds.Tables[0].Rows.Count == 1)
            {
                Label2.Text = ds.Tables[0].Rows[0]["order_id"].ToString();
                Label9.Text = ds.Tables[0].Rows[0]["c_name"].ToString();
                Label4.Text = ds.Tables[0].Rows[0]["c_address"].ToString();
                Label5.Text = ds.Tables[0].Rows[0]["c_landmark"].ToString();
                Label6.Text = ds.Tables[0].Rows[0]["c_city"].ToString();
                Label7.Text = ds.Tables[0].Rows[0]["c_pincode"].ToString();
                Label11.Text = ds.Tables[0].Rows[0]["contact_no"].ToString();
                Label12.Text = ds.Tables[0].Rows[0]["alt_contactno"].ToString();
               
            }
            else
            {
                Label2.Text = "something went wrong!!";
                Label2.ForeColor = System.Drawing.Color.Red;

            }
        }



    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("home2_m2.aspx");
    }
}