<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Emailform.aspx.cs" Inherits="Paradise.Emailform" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 310px;
        }
        .style3
        {
            width: 335px;
            text-align: center;
        }
        .style4
        {
            width: 323px;
            text-align: right;
        }
        .style5
        {
            width: 323px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 404px">
    
        <table class="style1">
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style3" width="100px">
                    <h1>
                        <strong>Login Page</strong></h1>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    Your Username&nbsp;&nbsp; </td>
                <td class="style3">
                    <asp:TextBox ID="username" runat="server" Height="37px" Width="341px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="username" ErrorMessage="Username Required" ForeColor="Red" 
                        Width="200px"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;Your Password&nbsp;&nbsp;&nbsp; </td>
                <td class="style3">
                    <asp:TextBox ID="pass" runat="server" Height="34px" TextMode="Password" 
                        Width="337px">Your Password</asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="pass" ErrorMessage="Password Required" ForeColor="Red" 
                        Width="200px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style3">
                    <asp:Button ID="login" runat="server" Height="40px" onclick="login_Click" 
                        Text="Login" Width="339px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style3">

                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Create new Account</asp:HyperLink>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
