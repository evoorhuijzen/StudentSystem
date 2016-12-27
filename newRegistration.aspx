<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="newRegistration.aspx.cs" Inherits="StudentSystem.newRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" rel="stylesheet" />
    <title>Student System - Registration</title>
    <style type="text/css">
        .auto-style1 {
            width: 194px;
        }

        .auto-style2 {
            width: 194px;
            height: 164px;
        }

        .auto-style3 {
            height: 164px;
        }

        .auto-style4 {
            width: 562px;
            height: 164px;
        }

        .auto-style5 {
            width: 562px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div id="divHeader">
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:Label ID="LblHeader" runat="server" Text="Add New Registration"></asp:Label>&nbsp;&nbsp;&nbsp; 
          <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="lblLoggedIn" runat="server" Text="Logged in as:"></asp:Label>
            <asp:Label ID="lblSessUser" runat="server" Text=""></asp:Label>

        </div>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style2">
                    <asp:Image ID="ImageLogo" runat="server" Height="118px" Width="134px"
                        ImageUrl="https://cdn0.iconfinder.com/data/icons/back-to-school/90/school-learn-study-hat-graduate-512.png" />
                </td>

                <td class="auto-style4">
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="lblNewReg" runat="server" Text="Vul hieronder een nieuwe registratie in"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="lblRequired" runat="server" Text="Velden met een * zijn verplicht"></asp:Label>
                    <br />
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Menu ID="leftMenu" runat="server">
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


                <td class="auto-style5">

                    <%--tabel voor nieuwe registratie--%>
                    <asp:Table ID="tblNewReg" runat="server" Height="192px" Width="559px">
                        <asp:TableRow runat="server">
                            <asp:TableCell runat="server">*Student Number:</asp:TableCell>
                            <asp:TableCell runat="server">
                                <asp:TextBox ID="TBstudent_id" runat="server"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow runat="server">
                            <asp:TableCell runat="server">*Name:</asp:TableCell>
                            <asp:TableCell runat="server">
                                <asp:TextBox ID="TBstudent_name" runat="server"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>

                        <asp:TableRow runat="server">
                            <asp:TableCell runat="server">*Date:</asp:TableCell>
                            <asp:TableCell runat="server">
                                <asp:TextBox ID="TBdate" runat="server"></asp:TextBox>
                                <%--<asp:RequiredFieldValidator runat="server" id="reqDate" controltovalidate="date"
                                          errormessage="Please enter a date!" Display="Dynamic"/>--%>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow runat="server">
                            <asp:TableCell runat="server">Presence:</asp:TableCell>
                            <asp:TableCell runat="server">
                                <asp:TextBox ID="TBpresence" runat="server"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow runat="server">
                            <asp:TableCell runat="server">Absence:</asp:TableCell>
                            <asp:TableCell runat="server">
                                <asp:TextBox ID="TBabsence" runat="server"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow runat="server">
                            <asp:TableCell runat="server">Comments:</asp:TableCell>
                            <asp:TableCell runat="server">
                                <asp:TextBox ID="TBcomments" runat="server"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </td>
            </tr>
            <tr>
                <td class="auto-style1"></td>
                <td class="auto-style5">
                    <asp:Button ID="btnSave" runat="server" Text="Save" Height="33px" Width="95px" OnClick="btnSave_Click" />
                    <asp:Button ID="btnClose" runat="server" Text="Close" Height="33px" Width="94px" OnClick="btnClose_Click" />
                </td>
                <td>
                    
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
