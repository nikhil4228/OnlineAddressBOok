<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="OnlineAddressBook.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <div id="logo"></div>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" CssClass="lab" Text="Label"></asp:Label>   
    <ul>
        <li><a href="Add.aspx" class="lin">Enter new address</a></li>
        <li><a href="Search.aspx" class="lin">Search address</a></li>
        <li><a href="Delete.aspx" class="lin">Delete address</a></li>
        <li><a href="Listofaddress.aspx" class="lin">View list of addresses</a></li>
    </ul>
        <p>
            &nbsp;</p>
        <p>
            <a href="Logout.aspx" class="lin">Logout</a></p>
        </div>
    
    </form>
</body>
</html>