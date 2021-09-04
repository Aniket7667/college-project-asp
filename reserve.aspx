<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reserve.aspx.cs" Inherits="Paradise.reserve" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 356px;
        }
        .style2
        {
            width: 277px;
        }
        .style3
        {
            width: 233px;
        }
        .style4
        {
            width: 277px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3" style="font-weight: 700; text-align: center">
                RESERVATIONS</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                Name</td>
            <td class="style3">
                <asp:TextBox ID="name" runat="server" Height="28px" Width="252px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="name" ErrorMessage="Name required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Date</td>
            <td class="style3">
                <asp:TextBox ID="date" runat="server" Height="30px" Width="253px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="date" ErrorMessage="Date required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Phone number</td>
            <td class="style3">
                <asp:TextBox ID="mobileno" runat="server" Height="32px" 
                    style="margin-bottom: 0px" Width="246px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="mobileno" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Perfered Time</td>
            <td class="style3">
                <asp:DropDownList ID="time" runat="server" Height="16px" Width="242px">
                    <asp:ListItem>2:00 pm to 3:00pm</asp:ListItem>
                    <asp:ListItem>3:00pm to 4:00pm</asp:ListItem>
                    <asp:ListItem>4:00pm to 6:00pm</asp:ListItem>
                    <asp:ListItem>6:00pm to 8:00pm</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                Prefered Seats</td>
            <td class="style3">
                <asp:DropDownList ID="seats" runat="server" Height="18px" Width="240px">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
&nbsp;<asp:Button ID="Button2" runat="server" Text="Cancel" Width="168px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    style="text-align: right" Text="Done" Width="171px" />
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
