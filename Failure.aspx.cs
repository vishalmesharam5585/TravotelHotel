using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Failure : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
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

            Label1.Text = status;
            Label2.Text = txnid;
            //Label3.Text = easepayid;
            Label4.Text = amount;
            Label5.Text = productinfo;
            Label6.Text = firstname;
            Label7.Text = email;
            Label8.Text = phone;
            //Label9.Text = hash;
        }
    }
}