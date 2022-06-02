using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class place_order : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["order_id"] != null)
        {
            String order_id = Session["order_id"].ToString();
            String qry = "select * from my_order where order_id='" + order_id + "'";
            DataSet ds = dbaccess.FetchData(qry);
            if (ds.Tables[0].Rows.Count == 1)
            {
                Label2.Text = ds.Tables[0].Rows[0]["order_id"].ToString();
                Label9.Text = ds.Tables[0].Rows[0]["order_by"].ToString();
                Label4.Text = ds.Tables[0].Rows[0]["address"].ToString();
                Label5.Text = ds.Tables[0].Rows[0]["landmark"].ToString();
                Label6.Text = ds.Tables[0].Rows[0]["city"].ToString();
                Label7.Text = ds.Tables[0].Rows[0]["pincode"].ToString();
                Label11.Text = ds.Tables[0].Rows[0]["phoneno"].ToString();
            }

        }
        else
        {
            Label2.Text = "something went wrong!!";
            Label2.ForeColor = System.Drawing.Color.Red;

        }
    }
}