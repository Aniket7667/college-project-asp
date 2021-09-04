<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="change password.aspx.cs" Inherits="Paradise.change_password" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 309px;
        }
        .style2
        {
            width: 310px;
        }
        .style3
        {
            width: 310px;
            text-align: center;
        }
        .style4
        {
            width: 239px;
        }
    </style>
</head>
<body style="height: 380px">
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style3">
                <h1>
                    <strong>Change Password</strong></h1>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                Current Password</td>
            <td class="style2">
                <asp:TextBox ID="curpass" runat="server" Width="257px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                New Password</td>
            <td class="style2">
                <asp:TextBox ID="pass" runat="server" TextMode="Password" Width="260px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                Confirm Password</td>
            <td class="style2">
                <asp:TextBox ID="cpass" runat="server" TextMode="Password" Width="260px"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="pass" ControlToValidate="cpass" 
                    ErrorMessage="Password mistamtch" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style2">
                <asp:Button ID="Button1" runat="server" Height="21px" onclick="Button1_Click" 
                    Text="Submit" Width="210px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <asp:Button ID="Logoutbtn" runat="server" Height="23px" 
        onclick="Logoutbtn_Click" Text="Logout" Width="202px" />
    </form>
</body>
</html>
