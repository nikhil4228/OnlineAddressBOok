<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="OnlineAddressBook.Search" %>

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
            width: 113px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <p class="tit">SEARCH AN ADDRESS</p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="ID : " CssClass="lab"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtbxid" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="NAME : " CssClass="lab"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtbxname" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="btnsearch" runat="server" Text="SEARCH" CssClass="but" OnClick="btnsearch_Click" />
        <br />
        <br />
        <br />
        <asp:ListBox ID="ListBox1" runat="server" Width="244px"></asp:ListBox>
        <br />
        <br />
        <a href="Home.aspx" class="lin">Home page</a><br />
        <br />
        <a href="Logout.aspx" class="lin">Logout</a></div>
        

    </div>
    </form>
</body>
</html>
