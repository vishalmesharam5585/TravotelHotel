using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class suite_room : System.Web.UI.Page
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
        if (txtCheckIn.Text == "") { lblcheckin.Visible = true; txtCheckIn.Focus(); return; } else { lblcheckin.Visible = false; }
        if (txtCheckOut.Text == "") { lblcheckout.Visible = true; txtCheckOut.Focus(); return; } else { lblcheckout.Visible = false; }
        if (DropDownList1.SelectedItem.Text == "0") { lbladult.Visible = true; DropDownList1.Focus(); return; } else { lbladult.Visible = false; }
        if (DropDownList2.SelectedItem.Text == "0") { lblchilds.Visible = true; DropDownList2.Focus(); return; } else { lblchilds.Visible = false; }
        if (DropDownList3.SelectedItem.Text == "Rooms") { lblroom.Visible = true; DropDownList3.Focus(); return; } else { lblroom.Visible = false; }
        if (txtGuest.Text == "") { lblguest.Visible = true; txtGuest.Focus(); return; } else { lblguest.Visible = false; }
        if (txtAddress.Text == "") { lbladdress.Visible = true; txtAddress.Focus(); return; } else { lbladdress.Visible = false; }
        if (DropDownList4.SelectedItem.Text == "") { lblstate.Visible = true; DropDownList4.Focus(); return; } else { lblstate.Visible = false; }
        if (txtcity.Text == "") { lblcity.Visible = true; txtcity.Focus(); return; } else { lblcity.Visible = false; }
        if (txtemail.Text == "") { lblemail.Visible = true; txtemail.Focus(); return; } else { lblemail.Visible = false; }
        if (txtcontact.Text == "") { lblcontact.Visible = true; txtcontact.Focus(); return; } else { lblcontact.Visible = false; }
        Response.Redirect("suite_booking_checkout.aspx?checkin=" + txtCheckIn.Text + "&checkout=" + txtCheckOut.Text + "&adult=" + DropDownList1.SelectedItem.Text + "&children=" + DropDownList2.SelectedItem.Text + "&room=" + DropDownList3.SelectedItem.Text + "&guest=" + txtGuest.Text + "&address=" + txtAddress.Text + "&state=" + DropDownList4.SelectedItem.Text + "&city=" + txtcity.Text + "&email=" + txtemail.Text + "&contact=" + txtcontact.Text + "");
    }
}