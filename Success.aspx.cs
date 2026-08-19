using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Web.Services;
using System.IO;
using System.Net;
using System.Net.Mail;


public partial class Success : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["hotel"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.HttpMethod == "POST")
        {
            string status = Request.Form["status"];
            string txnid = Request.Form["txnid"];
            string easepayid = Request.Form["easepayid"];
            string amount = Request.Form["amount"];
            string productinfo = Request.Form["productinfo"];
            string firstname = Request.Form["firstname"];
            string email = Request.Form["email"];
            string phone = Request.Form["phone"];
            string hash = Request.Form["hash"];

    

            string bookingID = Request.Form["udf1"];
            string CheckIn = Request.Form["udf2"];
            string CheckOut = Request.Form["udf3"];

            Label1.Text = status;
            Label2.Text = txnid;
            Label3.Text = easepayid;
            Label4.Text = amount;
            Label5.Text = productinfo;
            Label6.Text = firstname;
            Label7.Text = email;
            Label8.Text = phone;
            Label9.Text = hash;

            Label10.Text = bookingID;
            Label11.Text = CheckIn;
            Label12.Text = CheckOut;


            Save_RoomBooking();

            SendEmail_Client();

            SendEmail_Admin();
        }
    }


    public void Save_RoomBooking()
    {
        try
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO tbl_FinalBooking(TRANSACTIONID,EASYPAYID,AMOUNT,STATUS,PRODUCT,CLIENTNAME,EMAIL,PHONE,HASH,IDATE,DATE,BookingID,CheckIn,CheckOut) VALUES(@TRANSACTIONID,@EASYPAYID,@AMOUNT,@STATUS,@PRODUCT,@CLIENTNAME,@EMAIL,@PHONE,@HASH,@IDATE,@DATE,@BookingID,@CheckIn,@CheckOut)", con);

            int idate = int.Parse(DateTime.Today.Date.ToString("yyyyMMdd"));
            cmd.Parameters.AddWithValue("@TRANSACTIONID", Label2.Text);
            cmd.Parameters.AddWithValue("@EASYPAYID", Label3.Text);
            cmd.Parameters.AddWithValue("@AMOUNT", Label4.Text);
            cmd.Parameters.AddWithValue("@STATUS", Label1.Text);
            cmd.Parameters.AddWithValue("@PRODUCT", Label5.Text);
            cmd.Parameters.AddWithValue("@CLIENTNAME", Label6.Text);
            cmd.Parameters.AddWithValue("@EMAIL", Label7.Text);
            cmd.Parameters.AddWithValue("@PHONE", Label8.Text);
            cmd.Parameters.AddWithValue("@HASH", Label9.Text);

            cmd.Parameters.AddWithValue("@IDATE", idate);
            cmd.Parameters.AddWithValue("@DATE", DateTime.Today.ToShortDateString());

            cmd.Parameters.AddWithValue("@BookingID", Label10.Text);
            cmd.Parameters.AddWithValue("@CheckIn", Label11.Text);
            cmd.Parameters.AddWithValue("@CheckOut", Label12.Text);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            
        }
        catch
        {
            //MessageBox.Show("Error " + ex);
        }
    }



    protected void SendEmail_Client()
    {

        try
        {
            MailMessage mail = new MailMessage();

            mail.From = new MailAddress("info@travotelhotels.com", "Travotel Hotels");
            mail.To.Add(Label7.Text);
            //mail.CC.Add("cc@example.com");
            //mail.Bcc.Add("bcc@example.com");

            mail.Subject = "Travotel Hotels Online Booking Engine";
            mail.Body = "\r\n \r\n Booking ID" + ":" + Label10.Text + "\r\n" + "Customer Name :" + Label6.Text + "\r\n" + "Check In Date :" + Label11.Text + "\r\n" + "Check Out Date : " + Label12.Text + "\r\n" + "Email : " + Label7.Text + "\r\n" + "Contact Number : " + Label8.Text + "\r\n";
            mail.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient();
            smtp.Host = "mail.travotelhotels.com";      // SMTP Host
            smtp.Port = 587;                            // 465 for SSL, 587 for TLS
            //smtp.EnableSsl = true;
            //smtp.UseDefaultCredentials = false;
            smtp.Credentials = new NetworkCredential(
                "info@travotelhotels.com", "Travotel@123");

            smtp.Send(mail);

            //Response.Write("Email Sent Successfully.");
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

    }



    protected void SendEmail_Admin()
    {

        try
        {
            MailMessage mail = new MailMessage();

            mail.From = new MailAddress("travotelhotelbooking@gmail.com", "Travotel Hotels");
            mail.To.Add("info@travotelhotels.com");

            mail.Subject = "New Booking - Successful Transaction";
            mail.Body = "\r\n \r\n Booking ID" + ":" + Label10.Text + "\r\n" + "Customer Name :" + Label6.Text + "\r\n" + "Check In Date :" + Label11.Text + "\r\n" + "Check Out Date : " + Label12.Text + "\r\n" + "Email : " + Label7.Text + "\r\n" + "Contact Number : " + Label8.Text + "\r\n";
            mail.IsBodyHtml = false;

            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.UseDefaultCredentials = false;

            smtp.Credentials = new NetworkCredential(
                "travotelhotelbooking@gmail.com",
                "zucn kudv cpoi ezfv");

            smtp.Send(mail);

            //Response.Write("Email sent successfully.");
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }

    }

}