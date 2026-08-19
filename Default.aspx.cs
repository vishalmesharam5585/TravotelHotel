using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Server.UrlEncode(txtCheckIn.Value) == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(),"alert","alert('Please Select CheckIn Date!');",true);
            return;
        }

        if (Server.UrlEncode(txtCheckOut.Value) == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Please Select CheckOut Date!');", true);
            return;
        }

        if (Server.UrlEncode(ddladult.Value) == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Please Select Adult!');", true);
            return;
        }

        if (Server.UrlEncode(ddlchild.Value) == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Please Select Child!');", true);
            return;
        }

        if (Server.UrlEncode(ddlroom.Value) == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Please Select Room!');", true);
            return;
        }
        else
        {
            Response.Redirect("room_book.aspx?checkin=" + Server.UrlEncode(txtCheckIn.Value) + "&checkout=" + Server.UrlEncode(txtCheckOut.Value) + "&adult=" + Server.UrlEncode(ddladult.Value) + "&children=" + Server.UrlEncode(ddlchild.Value) + "" + "&room=" + Server.UrlEncode(ddlroom.Value) + "");
        }
        }
}