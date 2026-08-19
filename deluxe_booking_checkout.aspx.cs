using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;
using System.IO;
using System.Net;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class deluxe_booking_checkout : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["hotel"].ToString());


    public class EasebuzzResponse
    {
        public int status { get; set; }
        public string data { get; set; }
    }

    string merchantKey = "O48UW0DEF";
    string salt = "T8G5VQHCA";

    string hash, txnid, amount, productinfo, firstname, email, phone, surl, furl;


    string maxID;
    protected void GetMaxID()
    {


        con.Close();

        SqlCommand cmdzs = new SqlCommand("SELECT MAX(ID) FROM tbl_Final_Booking", con);
        cmdzs.CommandType = CommandType.Text;
        con.Open();
        maxID = cmdzs.ExecuteScalar().ToString();
        if (maxID == "" || maxID == null)
        {
            maxID = "1";
        }
        else
        {
            maxID = Convert.ToString(Convert.ToInt32(maxID) + 001);
        }

    }



    public void SaveBookingData()
    {
        try
        {
            int idate = int.Parse(DateTime.Today.Date.ToString("yyyyMMdd"));


            SqlCommand cmd = new SqlCommand("INSERT INTO tbl_Final_Booking(BOOKINGID,DATE,IDATE,CHECKIN,CHECKOUT,ADULTS,CHILDS,ROOM,ROOMTYPE,GUEST,ADDRESS,STATE,CITY,CONTACT,EMAIL,BOOKING_TIME,AMOUNT,GST,TOTAL) VALUES(@BOOKINGID,@DATE,@IDATE,@CHECKIN,@CHECKOUT,@ADULTS,@CHILDS,@ROOM,@ROOMTYPE,@GUEST,@ADDRESS,@STATE,@CITY,@CONTACT,@EMAIL,@BOOKING_TIME,@AMOUNT,@GST,@TOTAL)", con);

            cmd.Parameters.AddWithValue("@BOOKINGID", maxID);
            cmd.Parameters.AddWithValue("@DATE", DateTime.Today.ToShortDateString());
            cmd.Parameters.AddWithValue("@IDATE", idate);
            cmd.Parameters.AddWithValue("@CHECKIN", lblcheckin.Text);
            cmd.Parameters.AddWithValue("@CHECKOUT", lblcheckout.Text);
            cmd.Parameters.AddWithValue("@ADULTS", lbladult.Text);
            cmd.Parameters.AddWithValue("@CHILDS", lblchildren.Text);
            cmd.Parameters.AddWithValue("@ROOM", lblrooms.Text);
            cmd.Parameters.AddWithValue("@ROOMTYPE", "SUITE ROOM");
            cmd.Parameters.AddWithValue("@GUEST", lblguestname.Text);
            cmd.Parameters.AddWithValue("@ADDRESS", lbladdress.Text);
            cmd.Parameters.AddWithValue("@STATE", lblstate.Text);
            cmd.Parameters.AddWithValue("@CITY", lblcity.Text);
            cmd.Parameters.AddWithValue("@CONTACT", lblcontact.Text);

            cmd.Parameters.AddWithValue("@EMAIL", lblemail.Text);
            cmd.Parameters.AddWithValue("@BOOKING_TIME", DateTime.Today.ToShortTimeString());
            cmd.Parameters.AddWithValue("@AMOUNT", lblcharges.Text);
            cmd.Parameters.AddWithValue("@GST", lblgst.Text);
            cmd.Parameters.AddWithValue("@TOTAL", lbltotal.Text);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        catch
        {
            //MessageBox.Show("Error " + ex);
        }
    }



    protected void FetchDetails()
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
                lblcharges.Text = dt.Rows[0]["ROOM_PRICE"].ToString();

                if (Convert.ToInt32(lblrooms.Text) > 1) { lblcharges.Text = Convert.ToInt32(Convert.ToInt32(lblcharges.Text) * Convert.ToInt32(lblrooms.Text)).ToString(); }

                lblgst.Text = Convert.ToInt32(Convert.ToInt32(lblcharges.Text) / 100 * 18).ToString();

                lbltotal.Text = Convert.ToInt32(Convert.ToInt32(lblcharges.Text) + Convert.ToInt32(lblgst.Text)).ToString();

                lblcharges.Text = lblcharges.Text + ".00";

                lblgst.Text = lblgst.Text + ".00";

                lbltotal.Text = lbltotal.Text + ".00";

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
    }



    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblcheckin.Text = Request.QueryString["checkin"];
            lblcheckout.Text = Request.QueryString["checkout"];
            lbladult.Text = Request.QueryString["adult"];
            lblchildren.Text = Request.QueryString["children"];

            lblrooms.Text = Request.QueryString["room"];
            lblguestname.Text = Request.QueryString["guest"];
            lbladdress.Text = Request.QueryString["address"];
            lblstate.Text = Request.QueryString["state"];


            lblcity.Text = Request.QueryString["city"];
            lblcontact.Text = Request.QueryString["contact"];
            lblemail.Text = Request.QueryString["email"];

            FetchDetails();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        Check_Availability();


        if (availableRooms > 0)
        {
            // Response.Write("Rooms Available");
            lblmessage.Visible = true;
            lblmessage.Text = "Rooms not available! Please change checkin dates.";
            return;
        }
        else
        {
            Response.Write("No Rooms Available");
        }



        GetMaxID();
        SaveBookingData();

        string txnid = "TXN" + DateTime.Now.Ticks.ToString();

        amount = lbltotal.Text;
        firstname = lblguestname.Text;
        email = lblemail.Text;
        phone = lblcontact.Text;

        productinfo = "Travotel Hotel - Standard Room";

        surl = "https://travotelhotels.com/Success.aspx";
        furl = "https://travotelhotels.com/Failure.aspx";



        txnid = Guid.NewGuid().ToString().Substring(0, 20);

        amount = lbltotal.Text;
        productinfo = "Travotel Hotel - Standard Room";
        firstname = lblguestname.Text;
        email = lblemail.Text;
        phone = lblcontact.Text;

        surl = "https://travotelhotels.com/Success.aspx";
        furl = "https://travotelhotels.com/Failure.aspx";

        string hashString =
            merchantKey + "|" +
            txnid + "|" +
            amount + "|" +
            productinfo + "|" +
            firstname + "|" +
            email + "|||||||||||" +
            salt;

        hash = GenerateHash512(hashString);

        hash = GenerateHash512(hashString);

        Response.Write(BuildAutoSubmitForm(
            txnid,
            amount,
            productinfo,
            firstname,
            email,
            phone,
            surl,
            furl,
            hash));




        string postData =
               "key=" + Uri.EscapeDataString(merchantKey) +
               "&txnid=" + Uri.EscapeDataString(txnid) +
               "&amount=" + Uri.EscapeDataString(amount) +
               "&productinfo=" + Uri.EscapeDataString(productinfo) +
               "&firstname=" + Uri.EscapeDataString(firstname) +
               "&email=" + Uri.EscapeDataString(email) +
               "&phone=" + Uri.EscapeDataString(phone) +
               "&surl=" + Uri.EscapeDataString(surl) +
               "&furl=" + Uri.EscapeDataString(furl) +
               "&hash=" + Uri.EscapeDataString(hash);

        // ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;
        ServicePointManager.SecurityProtocol = (SecurityProtocolType)3072;

        HttpWebRequest request = (HttpWebRequest)WebRequest.Create(
            "https://pay.easebuzz.in/payment/initiateLink");

        request.Method = "POST";
        request.ContentType = "application/x-www-form-urlencoded";

        byte[] byteArray =
    Encoding.UTF8.GetBytes(postData);

        request.ContentLength = byteArray.Length;

        using (Stream dataStream =
            request.GetRequestStream())
        {
            dataStream.Write(
                byteArray,
                0,
                byteArray.Length);
        }

        try
        {
            string responseText = "";

            using (HttpWebResponse response =
                (HttpWebResponse)request.GetResponse())
            {
                using (StreamReader reader =
                    new StreamReader(
                        response.GetResponseStream()))
                {
                    responseText = reader.ReadToEnd();
                }
            }

            Response.Write(responseText);

            JObject obj =
                JObject.Parse(responseText);

            if (obj["status"].ToString() == "1")
            {
                string access_key =
                    obj["data"].ToString();

                Response.Redirect(
                    "https://pay.easebuzz.in/pay/" +
                    access_key);
            }
            else
            {
                Response.Write(
                    obj["error_desc"].ToString());
            }
        }
        catch (WebException ex)
        {
            using (StreamReader reader =
                new StreamReader(
                    ex.Response.GetResponseStream()))
            {
                string error =
                    reader.ReadToEnd();

                Response.Write(error);
            }
        }

    }

    public string GenerateHash512(string text)
    {
        byte[] message = Encoding.UTF8.GetBytes(text);

        SHA512Managed hashString = new SHA512Managed();
        byte[] hashValue = hashString.ComputeHash(message);

        string hex = "";

        foreach (byte x in hashValue)
        {
            hex += String.Format("{0:x2}", x);
        }

        return hex;
    }


    private string BuildAutoSubmitForm(
          string txnid,
          string amount,
          string productinfo,
          string firstname,
          string email,
          string phone,
          string surl,
          string furl,
          string hash)
    {
        StringBuilder form = new StringBuilder();

        form.Append("<form id='PostForm' ");
        form.Append("name='PostForm' ");
        form.Append("action='https://testpay.easebuzz.in/payment/initiateLink' ");
        form.Append("method='POST'>");

        form.Append("<input type='hidden' name='key' value='" + merchantKey + "' />");
        form.Append("<input type='hidden' name='txnid' value='" + txnid + "' />");
        form.Append("<input type='hidden' name='amount' value='" + amount + "' />");
        form.Append("<input type='hidden' name='productinfo' value='" + productinfo + "' />");
        form.Append("<input type='hidden' name='firstname' value='" + firstname + "' />");
        form.Append("<input type='hidden' name='email' value='" + email + "' />");
        form.Append("<input type='hidden' name='phone' value='" + phone + "' />");
        form.Append("<input type='hidden' name='surl' value='" + surl + "' />");
        form.Append("<input type='hidden' name='furl' value='" + furl + "' />");
        form.Append("<input type='hidden' name='hash' value='" + hash + "' />");

        form.Append("</form>");

        form.Append("<script type='text/javascript'>");
        form.Append("document.PostForm.submit();");
        form.Append("</script>");

        return form.ToString();
    }


    int availableRooms;

    public void Check_Availability()
    {

        string bookingDate = lblcheckin.Text;



        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["hotel"].ToString()))
        {
            string query = @"SELECT COUNT(*)
                     FROM tbl_RoomAvailability
                     WHERE CHECKIN = @CHECKIN
                     AND STATUS = 'Available'
                     AND CATEGORY='STANDARD ROOM'";

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@CHECKIN", bookingDate);

            con.Open();
            availableRooms = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();


        }
    }


}