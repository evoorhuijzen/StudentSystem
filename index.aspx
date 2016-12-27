<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="StudentSystem.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link href="StyleSheet.css" rel="stylesheet" />
    <title>StudentSystem - Home</title>
    
</head>
<body>   
    <form id="form1" runat="server">

      <div id ="divHeader">
          <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:Label ID="LblHeader" runat="server" Text="StudentSystem - Home"></asp:Label>&nbsp;&nbsp;&nbsp; 
          <br />
          <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Label ID="lblLoggedIn" runat="server" Text="Logged in as:"></asp:Label>
            <asp:Label ID="lblSessUser" runat="server" Text=""></asp:Label>
        </div>
            <table style="width: 123%;">
                <tr>
                    <td class="auto-style1"> <asp:Image ID="ImageLogo" runat="server" Height="118px" Width="134px" 
                     ImageUrl="https://cdn0.iconfinder.com/data/icons/back-to-school/90/school-learn-study-hat-graduate-512.png" />
                    </td> 
    
                    <td>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="auto-style1"><asp:Menu ID="leftMenu" runat="server">
                <Items>
                    <asp:MenuItem Text="Home" Value="Home" NavigateUrl="http://localhost:1235/index.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Registration" Value="Registration" NavigateUrl="http://localhost:1235/registration.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Grades" Value="Grades" NavigateUrl="http://localhost:1235/grades.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Overview" Value="Overview">
                        <asp:MenuItem Text="students" Value="students" NavigateUrl="http://localhost:1235/student.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="courses" Value="courses"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="log out" Value="log out" NavigateUrl="http://localhost:1235/default.aspx"></asp:MenuItem>
                </Items>
            </asp:Menu>
        </td>
                    <td>   
                       <asp:Label ID="LblWelkom" runat="server" Text="Welkom! Klik in de linkerbalk om naar de detailpagina's te gaan" Width="740px"></asp:Label>

                    </td>
                    <td></td>
                </tr>
              
            </table>

        </form>     
        </body>
</html>
