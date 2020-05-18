<%@ Page Title="" Language="C#" MasterPageFile="~/Interface.Master" AutoEventWireup="true" CodeBehind="Block Student.aspx.cs" Inherits="VirtualCampus.Block_Student" %>
<asp:Content ID="Content1" ContentPlaceHolderID="InterfacetitlePlaceHolder" runat="server">
Student Login Blocking Page
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="style12">
        <table class="style6">
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" 
                        AllowSorting="True" AutoGenerateColumns="False" BorderStyle="None" 
                        CellPadding="3" DataKeyNames="Student_id" DataSourceID="BlockStudent" 
                        EmptyDataText="No Data To Display Here" Font-Bold="True" 
                        Font-Names="Myanmar Text" Font-Size="Small" 
                        Width="1115px" Height="16px" Caption="Block Student Login" 
                        CaptionAlign="Top" ShowFooter="True" ShowHeaderWhenEmpty="True" 
                        BackColor="White" BorderColor="#E7E7FF" BorderWidth="1px" 
                        GridLines="Horizontal">
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <Columns>
                            <asp:CommandField EditText="Block" FooterText="Secured Area!" 
                                ShowEditButton="True" HeaderText="oneClickBlock" />
                            <asp:BoundField DataField="Student_id" HeaderText="Student_id" 
                                InsertVisible="False" ReadOnly="True" SortExpression="Student_id" />
                            <asp:BoundField DataField="Username" HeaderText="Username" 
                                SortExpression="Username" />
                            <asp:BoundField DataField="Password" HeaderText="Password" 
                                SortExpression="Password" />
                        </Columns>
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <SortedAscendingCellStyle BackColor="#F4F4FD" />
                        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                        <SortedDescendingCellStyle BackColor="#D8D8F0" />
                        <SortedDescendingHeaderStyle BackColor="#3E3277" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="BlockStudent" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                        SelectCommand="SELECT [Student_id], [Username], [Password] FROM [StudentRegistrations] ORDER BY [Student_id]" 
                        
                        UpdateCommand="UPDATE [StudentRegistrations] SET [Username] = @Username, [Password] = @Password  WHERE [Student_id] = @Student_id">
                        <UpdateParameters>
                            <asp:Parameter Name="Username" />
                            <asp:Parameter Name="Password" />
                            <asp:Parameter Name="Student_id" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
