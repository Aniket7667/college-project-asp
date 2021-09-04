<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Paradise.Profile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 305px;
        }
        .style2
        {
            width: 345px;
            text-align: center;
            font-weight: 700;
        }
        .style3
        {
            width: 251px;
        }
        .style4
        {
            width: 251px;
            text-align: right;
        }
    </style>
</head>
<body style="height: 465px">
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                <h1>
                    PROFILE</h1>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                Username</td>
            <td class="style2">
                <asp:TextBox ID="username" runat="server" Height="33px" Width="206px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                Email Id</td>
            <td class="style2">
                <asp:TextBox ID="email" runat="server" Height="32px" Width="193px"></asp:TextBox>
            </td>
            <td>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="email" ErrorMessage="Incorrect email" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Phone number</td>
            <td class="style2">
                <asp:TextBox ID="mobileno" runat="server" Height="30px" Width="175px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                Gender</td>
            <td class="style2">
                <asp:DropDownList ID="list" runat="server" Height="30px" Width="176px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl="~/change password.aspx">Change password</asp:HyperLink>
            </td>
            <td class="style2">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Save" 
                    Width="180px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <asp:Button ID="logoutbtn" runat="server" Height="35px" 
        onclick="logoutbtn_Click" Text="Logout" Width="204px" />
    </form>
</body>
</html>
