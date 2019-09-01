<%@ Page Title="" Language="C#" MasterPageFile="~/Interface.Master" AutoEventWireup="true" CodeBehind="StudentLogs.aspx.cs" Inherits="VirtualCampus.StudentLogs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="InterfacetitlePlaceHolder" runat="server">
Student Login's Tracker
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="style6">
        <tr>
            <td class="style12">
                <strong>
                <asp:Label ID="Label2" runat="server" Text="Student's Login Tracker"></asp:Label>
                <br />
                </strong>
                <hr />
                <table class="style6">
                    <tr>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                AllowSorting="True" AutoGenerateColumns="False" 
                                Caption="Students Login Tracker" CellPadding="4" DataKeyNames="Session_id" 
                                DataSourceID="SqlDataSource1" EmptyDataText="No Students logged In yet!" 
                                ForeColor="#333333" Height="288px" PageSize="15" ShowFooter="True" 
                                ShowHeaderWhenEmpty="True" Width="1105px">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:CommandField ShowSelectButton="True" />
                                    <asp:BoundField DataField="Session_id" HeaderText="Session_id" 
                                        InsertVisible="False" ReadOnly="True" SortExpression="Session_id" />
                                    <asp:BoundField DataField="Session_User" HeaderText="Session_User" 
                                        SortExpression="Session_User" />
                                    <asp:BoundField DataField="LogDateTime" HeaderText="LogDateTime" 
                                        SortExpression="LogDateTime" />
                                    <asp:BoundField DataField="Status" HeaderText="Status" 
                                        SortExpression="Status" />
                                </Columns>
                                <EditRowStyle BackColor="#7C6F57" />
                                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#E3EAEB" />
                                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                <SortedAscendingHeaderStyle BackColor="#246B61" />
                                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                <SortedDescendingHeaderStyle BackColor="#15524A" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                                SelectCommand="SELECT * FROM [StudentLog] ORDER BY [Session_id]">
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
