<%@ Page Title="" Language="C#" MasterPageFile="~/AccountsInterface.Master" AutoEventWireup="true" CodeBehind="ScholrshipEntries.aspx.cs" Inherits="VirtualCampus.ScholrshipEntries" %>
<asp:Content ID="Content1" ContentPlaceHolderID="InterfacetitlePlaceHolder" runat="server">
Recent Scholarship Entries
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="style6">
    <tr>
        <td class="style12">
            <strong>
            <asp:Label ID="Label9" runat="server" Text="Scholarship Transactions History"></asp:Label>
            <br />
            </strong>
            <hr />
            <table class="style6">
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" 
                            AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" 
                            EmptyDataText="There Are No transactions Here :) Make A Transaction To See History." 
                            Width="1105px" Caption="Scholarship Transactions Tracker" CellPadding="4" 
                            ForeColor="#333333" GridLines="Horizontal" Height="37px" 
                            ShowFooter="True" ShowHeaderWhenEmpty="True">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" HeaderText="Select Row" />
                                <asp:BoundField DataField="TransactionNumber" HeaderText="TransactionNumber" 
                                    InsertVisible="False" ReadOnly="True" SortExpression="TransactionNumber" />
                                <asp:BoundField DataField="Student_id" HeaderText="Student_id" 
                                    SortExpression="Student_id" />
                                <asp:BoundField DataField="StudentName" HeaderText="StudentName" 
                                    SortExpression="StudentName" />
                                <asp:BoundField DataField="ScholarshipNumber" HeaderText="ScholarshipNumber" 
                                    SortExpression="ScholarshipNumber" />
                                <asp:BoundField DataField="Status" HeaderText="Status" 
                                    SortExpression="Status" />
                                <asp:BoundField DataField="StatusReason" HeaderText="StatusReason" 
                                    SortExpression="StatusReason" />
                                <asp:BoundField DataField="DateTime" HeaderText="DateTime" 
                                    SortExpression="DateTime" />
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                            SelectCommand="SELECT * FROM [ScholarshipEntries] ORDER BY [TransactionNumber]">
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>
