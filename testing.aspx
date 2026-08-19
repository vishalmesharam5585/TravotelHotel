<%@ Page Language="C#" AutoEventWireup="true" CodeFile="testing.aspx.cs" Inherits="testing" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="easebuzzForm" runat="server" >

        <div>
            <h2>Easebuzz Payment Gateway</h2>

            Name:
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <br /><br />

            Email:
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <br /><br />

            Mobile:
            <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
            <br /><br />

            Amount:
            <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
            <br /><br />

            <asp:Button ID="btnPay"
                runat="server"
                Text="Pay Now"
                OnClick="btnPay_Click" />

        </div>

    </form>
</body>
</html>
