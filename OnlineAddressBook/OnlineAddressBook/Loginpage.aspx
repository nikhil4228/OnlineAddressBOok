<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Loginpage.aspx.cs" Inherits="OnlineAddressBook.Loginpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style type="text/css">
        .auto-style1 {
            width: 100%;
            
        }
        .auto-style2 {
            width: 100px;
            text-align:right;
            
        }
        .auto-style3 {
            width: 324px;
        }
    </style>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="main">
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl="~/Images/Adress book.png" Width="200px" />
                </td>
                <td><p class="tit">ADDRESS BOOK LOGIN</p></td>
            </tr>
        </table>
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Text="Label" CssClass="lab">ENTER YOUR USER ID :</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtbxuserid" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="Label" CssClass="lab">ENTER YOUR PASSWORD : </asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtbxpassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <asp:Button ID="btnlogin" runat="server" Text="Login" CssClass="but" OnClick="btnlogin_Click"/>
        <asp:Button ID="btnregistration" runat="server" Text="Registration" CssClass="but" OnClick="Button2_Click"/>
        <asp:Button class="but" ID="Button1" runat="server" Text="Forgot Password?" OnClick="Button1_Click" />
        <br />
    
    </div>
    </form>
</body>
</html>
