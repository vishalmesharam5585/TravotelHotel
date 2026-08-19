using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class deluxe_book : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string checkin = Request.QueryString["checkin"];
            string checkout = Request.QueryString["checkout"];
            string adult = Request.QueryString["adult"];
            string children = Request.QueryString["children"];

            txtCheckIn.Text = checkin;
            txtCheckOut.Text = checkout;
            DropDownList1.SelectedItem.Text = adult;
            DropDownList2.SelectedItem.Text = children;

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("deluxe_room.aspx?checkin=" + txtCheckIn.Text + "&checkout=" + txtCheckOut.Text + "&adult=" + DropDownList1.SelectedItem.Text + "&children=" + DropDownList2.SelectedItem.Text + "");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("deluxe_room.aspx?checkin=" + txtCheckIn.Text + "&checkout=" + txtCheckOut.Text + "&adult=" + DropDownList1.SelectedItem.Text + "&children=" + DropDownList2.SelectedItem.Text + "");
    }
}