<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="OnlineAddressBook.Add" %>

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
            width: 232px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p class="tit">ADDING ADDRESS</p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
        <asp:Label ID="lblid" runat="server" Text="ID :" CssClass="lab"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtbxid" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
        <asp:Label ID="lblname" runat="server" Text="NAME :" CssClass="lab"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtbxname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
        <asp:Label ID="lblphonenumber" runat="server" Text="PHONE NUMBER :" CssClass="lab"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtbxphonnumber" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
        <asp:Label ID="lblemail" runat="server" Text="E-MAIL :" CssClass="lab"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtbxemail" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtbxemail" ErrorMessage="Enter a proper email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
        <asp:Label ID="lbladdress" runat="server" Text="ADDRESS :" CssClass="lab"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtbxaddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <asp:Label ID="lblresult" runat="server" Text="Label" CssClass="lab"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="ADD" CssClass="but" Width="112px" OnClick="Button1_Click"/>
        <br />
        <br />
        <a href="Home.aspx" class="lin">Home page</a><br />
        <br />
        <br />
        <a href="Logout.aspx" class="lin">Logout</a></div><br />
        <br />

    </form>
</body>
</html>
