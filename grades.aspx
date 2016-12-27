<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grades.aspx.cs" Inherits="StudentSystem.grades"%>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" rel="stylesheet" />
    <title>Student System - Grades</title>
    <style type="text/css">
        .auto-style1 {
            width: 198px;
        }
        .auto-style2 {
            width: 923px;
        }
    </style>
</head>
    <body>   
    <form id="form1" runat="server">

      <div id ="divHeader">
          <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:Label ID="LblHeader" runat="server" Text="StudentSystem - Grades"></asp:Label>&nbsp;&nbsp;&nbsp; 
          <br />
          <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Label ID="lblLoggedIn" runat="server" Text="Logged in as:"></asp:Label>
            <asp:Label ID="lblSessUser" runat="server" Text=""></asp:Label>
        </div>
              <table style="width: 100%;">
                <tr>
                    <td class="auto-style1"> <asp:Image ID="ImageLogo" runat="server" Height="118px" Width="134px" 
                     ImageUrl="https://cdn0.iconfinder.com/data/icons/back-to-school/90/school-learn-study-hat-graduate-512.png" />
                    </td> 
    
                    <td class="auto-style2">
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <asp:Button ID="btnAddNew" runat="server" Text="Add New" Height="33px" OnClick="btnAddNew_Click" />	
                        <asp:Button ID="btnExport" runat="server" Text="Export" Height="33px" Width="94px"/>	
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
                    <td class="auto-style2">   
                        <asp:GridView ID="GridRegistration" runat="server" Width="734px" CellPadding="4" ForeColor="#333333" GridLines="None" Height="264px" OnSelectedIndexChanged="GridRegistration_SelectedIndexChanged" AutoGenerateColumns="False" ShowHeaderWhenEmpty="True">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:CheckBoxField HeaderText="Select" Text="Select" />
        
                                <asp:BoundField HeaderText="Student No. " DataField="student_number" />
                                <asp:BoundField HeaderText="Name" DataField="student_name" />
                                <asp:BoundField HeaderText="Semester" DataField="semester" />
                                <asp:BoundField HeaderText="Final Grade" DataField="grade_number" />
                                <asp:ButtonField HeaderText="Edit" Text="Edit" ButtonType="Button">
                                <ControlStyle CssClass="btnEdit" />
                                </asp:ButtonField>
                                <asp:ButtonField ButtonType="Image" HeaderText="Delete" ImageUrl="https://cdn1.iconfinder.com/data/icons/toolbar-signs/512/trash-512.png">
                                <ControlStyle Height="35px" Width="35px" />
                                </asp:ButtonField>
                                <asp:BoundField DataField="student_id" Visible="False" />
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
                        <br />
                    </td>
                    <td></td>
                </tr>
              
            </table>

        </form>     
        </body>
</html>
