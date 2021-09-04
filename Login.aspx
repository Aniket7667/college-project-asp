<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Paradise.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 368px;
        }
        .style2
        {
            width: 341px;
            text-align: right;
        }
        .style3
        {
            width: 244px;
        }
        .style4
        {
            width: 341px;
            text-align: right;
        }
    </style>
</head>
<body style="height: 386px">
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style2">
                Your Username&nbsp;&nbsp;&nbsp;
            </td>
            <td class="style3">
                <asp:TextBox ID="username" runat="server" Height="29px" Width="251px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="username" ErrorMessage="Username Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Your Email&nbsp;&nbsp;&nbsp; 
            </td>
            <td class="style3">
                <asp:TextBox ID="email" runat="server" Height="39px" Width="245px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="email" ErrorMessage="Email Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="email" ErrorMessage="Incorrect Email" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Password&nbsp;&nbsp;&nbsp; 
            </td>
            <td class="style3">
                <asp:TextBox ID="pass" runat="server" Height="34px" Width="249px" 
                    TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="pass" ErrorMessage="Password required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
              Confirm Password&nbsp;&nbsp;&nbsp;
            </td>
            <td class="style3">
                <asp:TextBox ID="cpass" runat="server" Height="32px" Width="247px" 
                    TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="cpass" ErrorMessage="Confirm Password required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="pass" ControlToValidate="cpass" 
                    ErrorMessage="Password Mismatch" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Gender</td>
            <td class="style3">
                <asp:DropDownList ID="list" runat="server" Height="17px" Width="246px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Mobile Number</td>
            <td class="style3">
                <asp:TextBox ID="mobileno" runat="server" Height="34px" TextMode="Number" 
                    Width="255px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="cnaac" runat="server" Height="38px" onclick="cnaac_Click" 
                    Text="Create New Account" Width="248px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
