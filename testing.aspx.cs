using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq; 
using System.Security.Cryptography;
using System.Text;
using System.IO;
using System.Net;


public partial class testing : System.Web.UI.Page
{


    public class EasebuzzResponse
    {
        public int status { get; set; }
        public string data { get; set; }
    }
    string merchantKey = "O48UW0DEF";
    string salt = "T8G5VQHCA";



    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnPay_Click(object sender, EventArgs e)
    {




        string txnid = "TXN" + DateTime.Now.Ticks.ToString();

        string amount = "1";
        string firstname = "Tushar";
        string email = "test@gmail.com";
        string phone = "9999999999";

        string productinfo = "Test Product";

        string surl = "https://livertransplantindia.info/travotel/Success.aspx";
        string furl = "https://livertransplantindia.info/travotel/Failure.aspx";


        txnid = Guid.NewGuid().ToString().Substring(0, 20);

        amount = txtAmount.Text + ".00";
        productinfo = "Test Product";
        firstname = txtName.Text;
        email = txtEmail.Text;
        phone = txtMobile.Text;

        surl = "https://livertransplantindia.info/travotel/Success.aspx";
        furl = "https://livertransplantindia.info/travotel/Failure.aspx";

        string hashString =
            merchantKey + "|" +
            txnid + "|" +
            amount + "|" +
            productinfo + "|" +
            firstname + "|" +
            email + "|||||||||||" +
            salt;

        string hash = GenerateHash512(hashString);

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

       // ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls;
        ServicePointManager.SecurityProtocol = (SecurityProtocolType)3072;

        HttpWebRequest request = (HttpWebRequest)WebRequest.Create(
            "https://testpay.easebuzz.in/payment/initiateLink");

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
                    "https://testpay.easebuzz.in/pay/" +
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

        RedirectToEasebuzz();
    }

    protected void RedirectToEasebuzz()
    {

        ////string merchantKey = "O48UW0DEF";



        //StringBuilder html = new StringBuilder();

        //html.Append("<html>");
        //html.Append("<body onload='document.forms[0].submit()'>");

        //html.Append("<form method='post' action='https://testpay.easebuzz.in/payment/initiateLink'>");

        //html.Append("<input type='hidden' name='key' value='" + merchantKey + "'/>");
        //html.Append("<input type='hidden' name='txnid' value='" + txnid + "'/>");
        //html.Append("<input type='hidden' name='amount' value='" + amount + "'/>");
        //html.Append("<input type='hidden' name='productinfo' value='" + productinfo + "'/>");
        //html.Append("<input type='hidden' name='firstname' value='" + firstname + "'/>");
        //html.Append("<input type='hidden' name='email' value='" + email + "'/>");
        //html.Append("<input type='hidden' name='phone' value='" + phone + "'/>");

        //html.Append("<input type='hidden' name='surl' value='" + surl + "'/>");
        //html.Append("<input type='hidden' name='furl' value='" + furl + "'/>");

        //html.Append("<input type='hidden' name='hash' value='" + hash + "'/>");

        //html.Append("</form>");
        //html.Append("</body>");
        //html.Append("</html>");

        //Response.Clear();
        //Response.Write(html.ToString());
        //Response.End();
        ////HttpContext.Current.ApplicationInstance.CompleteRequest();
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
}