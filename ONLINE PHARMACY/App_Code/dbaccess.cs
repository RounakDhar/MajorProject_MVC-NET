using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for dbaccess
/// </summary>
public class dbaccess
{
    public static bool SaveData(string qry)
    {
        string conn_string = ConfigurationManager.ConnectionStrings["dbcs"].ToString();

        SqlConnection con = new SqlConnection(conn_string);

        con.Open();

        SqlCommand cmd = new SqlCommand(qry, con);

        try
        {
            cmd.ExecuteNonQuery();

            con.Close();

            return true;
        }
        catch (Exception e)
        {
            Console.WriteLine(e);

            con.Close();

            return false;
        }

    }

    public static DataSet FetchData(string qry)
    {
        string conn_string = ConfigurationManager.ConnectionStrings["dbcs"].ToString();

        SqlConnection con = new SqlConnection(conn_string);

        con.Open();

        SqlDataAdapter da = new SqlDataAdapter(qry, con);

        DataSet ds = new DataSet();

        try
        {
            da.Fill(ds);

            con.Close();
        }
        catch (Exception e)
        {

        }

        return ds;
    }

}