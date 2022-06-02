using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class myprofile : System.Web.UI.Page
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
                Label3.Text = ds.Tables[0].Rows[0]["Name"].ToString();
                Label4.Text = ds.Tables[0].Rows[0]["Phone"].ToString();
                //string filepath = ds.Tables[0].Rows[0]["filepath"].ToString();
                Image1.ImageUrl = ds.Tables[0].Rows[0]["filepath"].ToString();
            }
            else
            {
                Label6.Text = "something went wrong!!";
                Label6.ForeColor = System.Drawing.Color.Red;

            }
           
        }
          else
        {
            Label6.Text = "no data present";
            Label6.ForeColor = System.Drawing.Color.Red;
        }
        }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label5.Visible = true;
        GridView1.Visible = true;
        Button3.Visible = true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
     Response.Redirect("home2_m2.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {

        Label5.Visible = false;
        GridView1.Visible = false;
        Button3.Visible = false;
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "vieworderdetail")
        {
            int c;
            c = Convert.ToInt16(e.CommandArgument.ToString());
           // GridView1.Rows[c].Cells[1].Visible = true;
            string s1 = GridView1.Rows[c].Cells[0].Text;
            string s2= GridView1.Rows[c].Cells[1].Text;
            //string id = GridView1.Rows[c].Cells[2].Text;
            Session["s1"] = s1;
            Session["s2"] = s2;

            //Session["count"] = count;
            //Session["id"] = id;
            Response.Redirect("myorder_details.aspx");
        }
        /*if (e.CommandName == "viewshopdetail")
        {
            int c;
            c = Convert.ToInt16(e.CommandArgument.ToString());
            string s2 = GridView1.Rows[c].Cells[1].Text;
            //string count = GridView1.Rows[c].Cells[4].Text;
            //string id = GridView1.Rows[c].Cells[2].Text;
            Session["s2"] = s2;
            //Session["count"] = count;
            //Session["id"] = id;
            Response.Redirect("getshop_details.aspx");
        }*/
    }
}