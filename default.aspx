<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="StudentSystem._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" rel="stylesheet" />
    <title>Welcome to StudentSystem!</title>
    <style type="text/css">
        #form1 {
            margin-left: 160px;
            width: 393px;
        }
    </style>
 
</head>
    <body id ="bodylogin">
              <h1 id ="h1login">Login StudentSystem</h1>
        <form id="form1" runat="server">
 
               <div style="height: 160px; margin-left: 0px" class ="divlogin">
      
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Table ID="tblLogin" runat="server" Width="247px">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Username:</asp:TableCell>
                    <asp:TableCell runat="server"><asp:TextBox ID="txtUserId" runat="server"></asp:TextBox>
    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Password:</asp:TableCell>
                    <asp:TableCell runat="server"><asp:TextBox ID="txtPasWord" runat="server" TextMode="PassWord"></asp:TextBox></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
                   <br />
            <asp:CheckBox ID="CheckBoxRemember" Text="Remember me" runat="server" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnInloggen" runat="server" Text="Inloggen" OnClick="btnInloggen_Click" />
                   <br />
            <br />
            <asp:Label ID="lblMessages" runat="server" Text=""></asp:Label>
            <asp:Label ID="lblSession" runat="server" Text=""></asp:Label>

                  
                  
        </div>
     
    </form>
</body>
</html>
