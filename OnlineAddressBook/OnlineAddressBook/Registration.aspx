<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="OnlineAddressBook.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link href="StyleSheet.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 278px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <p class="tit" >REGISTRATION</p>

        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
        <asp:Label ID="Label1" runat="server" Text="Label" CssClass="lab">NAME :</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtbxname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
        <asp:Label ID="Label2" runat="server" Text="Label" CssClass="lab">USER ID: </asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtbxuserid" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
        <asp:Label ID="Label3" runat="server" Text="Label" CssClass="lab">PASSWORD :</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtbxpassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
        <asp:Label ID="Label4" runat="server" Text="Label" CssClass="lab">CONFIRM PASSWORD : </asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtbxconfirmpassword" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtbxpassword" ControlToValidate="txtbxconfirmpassword" ErrorMessage="Should be same as password"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
        <asp:Label ID="Label5" runat="server" Text="Label" CssClass="lab">PASSWORD HINT :</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtbxpasswordhint" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>

        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Register" CssClass="but" OnClick="Button1_Click" />
        
        <br />
        <br />
        <a href="Loginpage.aspx" class="lin">Login</a></div></div>
    </form>
</body>
</html>
