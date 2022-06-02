using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class order_shasn001 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
       // Label22.Text = Label4.Text;
        if (Session["Email"] != null && Session["Password"] != null)
        {
            String Email = Session["Email"].ToString();
            String qry = "select * from regtable where Email='" + Email + "'";
            DataSet ds = dbaccess.FetchData(qry);
            if (ds.Tables[0].Rows.Count == 1)
            {
               Label15.Text = ds.Tables[0].Rows[0]["Email"].ToString();
               Label25.Text = ds.Tables[0].Rows[0]["Name"].ToString();
            }
            else
            {
                Label21.Text = "something went wrong!!";
                Label21.ForeColor = System.Drawing.Color.Red;

            }
        }
        else
        {
            Label21.Text = "no data present";
            Label21.ForeColor = System.Drawing.Color.Red;
        }

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
                    String myquery = "select * from productdetail where productid=" + Request.QueryString["id"];
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
                    dr["qty"] = Request.QueryString["qty"];
                    dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                    int price = Convert.ToInt16(ds.Tables[0].Rows[0]["price"].ToString());
                    int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                    int totalprice = price * quantity;
                    dr["totalprice"] = totalprice;

                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                    Session["buyitems"] = dt;
                    GridView1.FooterRow.Cells[5].Text = "Total Amount";
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    Response.Redirect("AddToCart.aspx");

                }
                else
                {

                    dt = (DataTable)Session["buyitems"];
                    int sr;
                    sr = dt.Rows.Count;

                    dr = dt.NewRow();
                    String mycon = ConfigurationManager.ConnectionStrings["dbcs"].ToString();
                    SqlConnection scon = new SqlConnection(mycon);
                    String myquery = "select * from productdetail where productid=" + Request.QueryString["id"];
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = myquery;
                    cmd.Connection = scon;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["sno"] = sr + 1;
                    dr["product_id"] = ds.Tables[0].Rows[0]["product_id"].ToString();
                    dr["product_name"] = ds.Tables[0].Rows[0]["productname"].ToString();
                    dr["image"] = ds.Tables[0].Rows[0]["product_image"].ToString();
                    dr["qty"] = Request.QueryString["qty"];
                    dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                    int price = Convert.ToInt16(ds.Tables[0].Rows[0]["price"].ToString());
                    int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                    int totalprice = price * quantity;
                    dr["totalprice"] = totalprice;
                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                    Session["buyitems"] = dt;
                    GridView1.FooterRow.Cells[5].Text = "Total Amount";
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    Response.Redirect("AddToCart.aspx");

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
            // Label2.Text = GridView1.Rows.Count.ToString();

        }
        Label13.Text = DateTime.Now.ToShortDateString();
        findorderid();
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
        order_id = "shasn001" + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + new string(mypass);

        Label11.Text = order_id;


    }
    public void saveaddress()
    {
        String updatepass = "insert into orderadd_shasn001(order_id,address,landmark,city,pincode,phoneno) values('" + Label11.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";
        String mycon1 = ConfigurationManager.ConnectionStrings["dbcs"].ToString();
        SqlConnection s = new SqlConnection(mycon1);
        s.Open();
        SqlCommand cmd1 = new SqlCommand();
        cmd1.CommandText = updatepass;
        cmd1.Connection = s;
        cmd1.ExecuteNonQuery();
        s.Close();
    }
    public void myorder()
    {
        string totalmount = grandtotal().ToString();
        String updatepass = "insert into my_order(order_id,email_id,address,landmark,city,pincode,phoneno,order_date,totalamount,shop_id,order_by) values('" + Label11.Text + "','" + Label15.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + Label13.Text + "','" + totalmount + "','" + Label23.Text + "','" + Label25.Text + "')";
        String mycon1 = ConfigurationManager.ConnectionStrings["dbcs"].ToString();
        SqlConnection s = new SqlConnection(mycon1);
        s.Open();
        SqlCommand cmd1 = new SqlCommand();
        cmd1.CommandText = updatepass;
        cmd1.Connection = s;
        cmd1.ExecuteNonQuery();
        s.Close();


        string qry1 = "select * from my_order where order_id = '" + Label11.Text + "'";
            DataSet dsa = dbaccess.FetchData(qry1);

            if (dsa.Tables[0].Rows.Count == 1)
            {
                Session["order_id"] = Label11.Text;
            }
    }
   


    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable dt;
        dt = (DataTable)Session["buyitems"];



        for (int i = 0; i <= dt.Rows.Count - 1; i++)
        {
            String updatepass1 = "insert into orderdetail_shasn001(order_id,email_id,sno,product_id,product_name,price,qty,order_date) values('" + Label11.Text + "','" + Label15.Text + "'," + dt.Rows[i]["sno"] + "," + dt.Rows[i]["product_id"] + ",'" + dt.Rows[i]["product_name"] + "'," + dt.Rows[i]["price"] + "," + dt.Rows[i]["qty"] + ",'" + Label13.Text + "')";
            String updatepass2 = "insert into myorder_detail(order_id,email_id,sno,product_id,product_name,price,qty,order_date) values('" + Label11.Text + "','" + Label15.Text + "'," + dt.Rows[i]["sno"] + "," + dt.Rows[i]["product_id"] + ",'" + dt.Rows[i]["product_name"] + "'," + dt.Rows[i]["price"] + "," + dt.Rows[i]["qty"] + ",'" + Label13.Text + "')";
            String mycon1 = ConfigurationManager.ConnectionStrings["dbcs"].ToString();
            SqlConnection s = new SqlConnection(mycon1);
            s.Open();
            SqlCommand cmd1 = new SqlCommand();
            SqlCommand cmd2 = new SqlCommand();
            cmd1.CommandText = updatepass1;
            cmd2.CommandText = updatepass2;
            cmd1.Connection = s;
            cmd2.Connection = s;
            cmd1.ExecuteNonQuery();
            cmd2.ExecuteNonQuery();
            s.Close();

        }
        saveaddress();
        myorder();
        Response.Redirect("place_order.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("cart_shasn001.aspx");
    }
}