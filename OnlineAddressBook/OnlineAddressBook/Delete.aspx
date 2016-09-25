<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="OnlineAddressBook.Delete" %>

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
            width: 253px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p class="tit">DELETE AN ADDRESS</p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="ENTER THE ID : " CssClass="lab"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtbxid" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="ENTER THE NAME : " CssClass="lab"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtbxname" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
       <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="DELETE" class="but" OnClick="Button1_Click"/>
        <br />
        <br />
        <a href="Home.aspx" class="lin">Home page</a><br />
        <br />
        <br />
        <a href="Logout.aspx" class="lin">Logout</a></div></div>
    </form>
</body>
</html>
