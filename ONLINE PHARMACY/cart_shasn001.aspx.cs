using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class cart_shasn001 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("sno");
            dt.Columns.Add("product_id");
            dt.Columns.Add("product_name");
            dt.Columns.Add("qty");
            dt.Columns.Add("price");
            dt.Columns.Add("totalprice");
            dt.Columns.Add("image");


            if (Request.QueryString["id"] != null)
            {
                if (Session["Buyitems"] == null)
                {

                    dr = dt.NewRow();
                    String mycon = ConfigurationManager.ConnectionStrings["dbcs"].ToString();
                    SqlConnection scon = new SqlConnection(mycon);
                    String myquery = "select * from shasn001_medicine where product_id=" + Request.QueryString["id"];
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = myquery;
                    cmd.Connection = scon;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["sno"] = 1;
                    dr["product_id"] = ds.Tables[0].Rows[0]["product_id"].ToString();
                    dr["product_name"] = ds.Tables[0].Rows[0]["product_name"].ToString();
                    dr["image"] = ds.Tables[0].Rows[0]["image"].ToString();
                    //dr["product_details"] = ds.Tables[0].Rows[0]["product_details"].ToString();
                    dr["qty"] = Request.QueryString["qty"];
                    dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                    int price = Convert.ToInt32(ds.Tables[0].Rows[0]["price"].ToString());
                    int quantity = Convert.ToInt32(Request.QueryString["qty"].ToString());
                    int totalprice = price * quantity;
                    dr["totalprice"] = totalprice;
                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                    Session["buyitems"] = dt;
                    GridView1.FooterRow.Cells[5].Text = "Total Amount";
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    Response.Redirect("cart_shasn001.aspx");

                }
                else
                {

                    dt = (DataTable)Session["buyitems"];
                    int sr;
                    sr = dt.Rows.Count;

                    dr = dt.NewRow();
                    String mycon = ConfigurationManager.ConnectionStrings["dbcs"].ToString(); ;
                    SqlConnection scon = new SqlConnection(mycon);
                    String myquery = "select * from shasn001_medicine where product_id=" + Request.QueryString["id"];
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = myquery;
                    cmd.Connection = scon;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["sno"] = sr + 1;
                    dr["product_id"] = ds.Tables[0].Rows[0]["product_id"].ToString();
                    dr["product_name"] = ds.Tables[0].Rows[0]["product_name"].ToString();
                    dr["image"] = ds.Tables[0].Rows[0]["image"].ToString();
                    //dr["product_details"] = ds.Tables[0].Rows[0]["product_details"].ToString();
                    dr["qty"] = Request.QueryString["qty"];
                    dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                    int price = Convert.ToInt32(ds.Tables[0].Rows[0]["price"].ToString());
                    int quantity = Convert.ToInt32(Request.QueryString["qty"].ToString());
                    int totalprice = price * quantity;
                    dr["totalprice"] = totalprice;
                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                    Session["buyitems"] = dt;
                    GridView1.FooterRow.Cells[5].Text = "Total Amount";
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    Response.Redirect("cart_shasn001.aspx");

                }
            }
            else
            {
                dt = (DataTable)Session["buyitems"];
                GridView1.DataSource = dt;
                GridView1.DataBind();
                if (GridView1.Rows.Count > 0)
                {
                    GridView1.FooterRow.Cells[5].Text = "Total Amount";
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();

                }


            }
            Label11.Text = GridView1.Rows.Count.ToString();

        }
        if(GridView1.Rows.Count.Equals(0))
        {
            Button3.Visible = false;
        }
    }
    public int grandtotal()
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];
        int nrow = dt.Rows.Count;
        int i = 0;
        int gtotal = 0;
        while (i < nrow)
        {
            gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());

            i = i + 1;
        }
        return gtotal;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("lifeline.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];


        for (int i = 0; i <= dt.Rows.Count - 1; i++)
        {
            int sr;
            int sr1;
            string qdata;
            string dtdata;
            sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
            TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
            qdata = cell.Text;
            dtdata = sr.ToString();
            sr1 = Convert.ToInt32(qdata);

            if (sr == sr1)
            {
                dt.Rows[i].Delete();
                dt.AcceptChanges();
                //Label1.Text = "Item Has Been Deleted From Shopping Cart";
                break;

            }
        }

        for (int i = 1; i <= dt.Rows.Count; i++)
        {
            dt.Rows[i - 1]["sno"] = i;
            dt.AcceptChanges();
        }

        Session["buyitems"] = dt;
        Response.Redirect("cart_shasn001.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("order_shasn001.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("shasn001_healthcare.aspx");
    }
}
