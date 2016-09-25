<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Listofaddress.aspx.cs" Inherits="OnlineAddressBook.Listofaddress" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    
        <p class="tit">LIST OF ADDRESSES</p><br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <br />
        <a href="Home.aspx" class="lin">Home</a><br />
        <br />
        <a href="Logout.aspx" class="lin">Logout</a></div><br />
        
    </form>
    
</body>
</html>
