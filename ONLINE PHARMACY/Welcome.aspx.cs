using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class Welcome : System.Web.UI.Page
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
                Label1.Text = ds.Tables[0].Rows[0]["Name"].ToString();
                //string filepath = ds.Tables[0].Rows[0]["filepath"].ToString();
                Image1.ImageUrl = ds.Tables[0].Rows[0]["filepath"].ToString();
            }
            else
            {
                Label2.Text = "something went wrong!!";
                Label2.ForeColor = System.Drawing.Color.Red;

            }
        }
    }
}