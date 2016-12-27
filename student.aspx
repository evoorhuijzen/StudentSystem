  <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="student.aspx.cs" Inherits="StudentSystem.student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link href="StyleSheet.css" rel="stylesheet" />
    <title>StudentSystem - Students</title>
    
     <style type="text/css">
         .auto-style1 {
             width: 168px;
         }
     </style>
    
</head>
<body>   
    <form id="form1" runat="server">

      <div id ="divHeader">
          <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:Label ID="LblHeader" runat="server" Text="StudentSystem - Students"></asp:Label>&nbsp;&nbsp;&nbsp; 
          <br />
          <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Label ID="lblLoggedIn" runat="server" Text="Logged in as:"></asp:Label>
            <asp:Label ID="lblSessUser" runat="server" Text=""></asp:Label>
        </div>
              <table style="width: 100%;">
                <tr>
                    <td class="auto-style1"> <asp:Image ID="ImageLogo" runat="server" Height="118px" Width="134px" 
                     ImageUrl="https://cdn0.iconfinder.com/data/icons/back-to-school/90/school-learn-study-hat-graduate-512.png" />
                    </td> 
    
                    <td>
                        <br />
                        <br />
                        <br />
                      <%--  <asp:Button ID="btnAddNew" runat="server" Text="Add New" OnClick="btnAddNew_Click" />	
                        <asp:Button ID="btnExport" runat="server" Text="Export" OnClick="btnEdit_Click" />	--%>
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
                        <asp:MenuItem Text="students" Value="students" NavigateUrl= "http://localhost:1235/student.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="courses" Value="courses"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="log out" Value="log out"></asp:MenuItem>
                </Items>
            </asp:Menu>
        </td>
                    <td>   
                        <asp:GridView ID="GridStudents" runat="server" Width="422px" CellPadding="4" ForeColor="#333333" GridLines="None" Height="264px" OnSelectedIndexChanged="GridStudents_SelectedIndexChanged" AutoGenerateColumns="False">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:CheckBoxField HeaderText="Select" />
                                <asp:BoundField HeaderText="Student No. " DataField="id" />
                                <asp:BoundField HeaderText="Name" DataField="student_name" />
                                <asp:BoundField HeaderText="Semester" DataField="semester" />
                                <asp:BoundField HeaderText="Email" DataField="student_email" />
                                <asp:ButtonField HeaderText="Actions" Text="Button" />
                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
                    </td>
                    <td></td>
                </tr>
              
            </table>

        </form>     
        </body>
</html>
