using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class room_book : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["hotel"].ToString());


    string checkin, checkout, adult, children, room;
    
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            checkin = Request.QueryString["checkin"];
            checkout = Request.QueryString["checkout"];
            adult = Request.QueryString["adult"];
            children = Request.QueryString["children"];
            room = Request.QueryString["room"];


            FetchDetails_STD();
            FetchDetails_DELUXE();
            FetchDetails_SUITE();
        }

       
    }


    protected void FetchDetails_STD()
    {
        try
        {

            con.Open();
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand("SELECT ROOM_PRICE FROM tbl_room where ROOM_CATEGORY='STANDARD ROOM'", con);
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                Label1.Text = dt.Rows[0]["ROOM_PRICE"].ToString();
                con.Close();
            }
            else
            {
                con.Close();
            }

        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            con.Close();
        }

        Label1.Text = Label1.Text + ".00";
    }

    protected void FetchDetails_DELUXE()
    {
        try
        {

            con.Open();
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand("SELECT ROOM_PRICE FROM tbl_room where ROOM_CATEGORY='DELUXE ROOM'", con);
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                Label2.Text = dt.Rows[0]["ROOM_PRICE"].ToString();
                con.Close();
            }
            else
            {
                con.Close();
            }

        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            con.Close();
        }

        Label2.Text = Label2.Text + ".00";
    }


    protected void FetchDetails_SUITE()
    {
        try
        {

            con.Open();
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand("SELECT ROOM_PRICE FROM tbl_room where ROOM_CATEGORY='SUITE ROOM'", con);
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                Label3.Text = dt.Rows[0]["ROOM_PRICE"].ToString();
                con.Close();
            }
            else
            {
                con.Close();
            }

        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            con.Close();
        }

        Label3.Text = Label3.Text + ".00";
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        checkin = Request.QueryString["checkin"];
        checkout = Request.QueryString["checkout"];
        adult = Request.QueryString["adult"];
        children = Request.QueryString["children"];
        room = Request.QueryString["room"];

        Response.Redirect("standard_book.aspx?checkin=" + checkin + "&checkout=" + checkout + "&adult=" + adult + "&children=" + children + "" + "&room=" + room + "");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("deluxe_book.aspx?checkin=" + checkin + "&checkout=" + checkout + "&adult=" + adult + "&children=" + children + "" + "&room=" + room + "");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("suite_book.aspx?checkin=" + checkin + "&checkout=" + checkout + "&adult=" + adult + "&children=" + children + "" + "&room=" + room + "");
    }
}