<%@ Page Title="" Language="C#" MasterPageFile="~/Interface.Master" AutoEventWireup="true" CodeBehind="AdminLogs.aspx.cs" Inherits="VirtualCampus.AdminLogs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="InterfacetitlePlaceHolder" runat="server">
Administrator Login's History
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="style6">
        <tr>
            <td class="style12">
                <strong>
                <asp:Label ID="Label2" runat="server" Text="Administrator Login Tracker"></asp:Label>
                <br />
                </strong>
                <hr />
                <table>
                    <tr>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                AllowSorting="True" AutoGenerateColumns="False" 
                                Caption="Administrator Logins History" CellPadding="4" 
                                DataKeyNames="Session_id" DataSourceID="SqlDataSource1" 
                                EmptyDataText="No Tracked Data Available!" ForeColor="#333333" Height="289px" 
                                PageSize="15" ShowFooter="True" ShowHeaderWhenEmpty="True" Width="1105px">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:CommandField HeaderText="Highlight Row" ShowSelectButton="True" />
                                    <asp:BoundField DataField="Session_id" HeaderText="Session_id" 
                                        InsertVisible="False" ReadOnly="True" SortExpression="Session_id" />
                                    <asp:BoundField DataField="Session_User" HeaderText="Session_User" 
                                        SortExpression="Session_User" />
                                    <asp:BoundField DataField="LogDateTime" HeaderText="LogDateTime" 
                                        SortExpression="LogDateTime" />
                                    <asp:BoundField DataField="Status" HeaderText="Status" 
                                        SortExpression="Status" />
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
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                                SelectCommand="SELECT * FROM [AdminLog]"></asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
