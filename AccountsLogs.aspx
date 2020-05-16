<%@ Page Title="" Language="C#" MasterPageFile="~/AccountsInterface.Master" AutoEventWireup="true" CodeBehind="AccountsLogs.aspx.cs" Inherits="VirtualCampus.AccountsLogs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="InterfacetitlePlaceHolder" runat="server">
Account Login's Tracker
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="style6">
    <tr>
        <td class="style12">
            <strong>
            <asp:Label ID="Label2" runat="server" Text="Accounts User Logs"></asp:Label>
            <br />
            </strong>
            <hr />
            <br />
        </td>
    </tr>
</table>
<table class="style6">
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" 
                Caption="Accounts User Secured Logins" DataSourceID="SqlDataSource1" 
                EmptyDataText="There Are No Logs Here! Please Come Back Later " 
                Height="320px" ShowFooter="True" ShowHeaderWhenEmpty="True" Width="1105px" 
                CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField HeaderText="Highlight Row" ShowSelectButton="True" />
                    <asp:BoundField DataField="Session_User" HeaderText="Session_User" 
                        SortExpression="Session_User" />
                    <asp:BoundField DataField="LogDateTime" HeaderText="LogDateTime" 
                        SortExpression="LogDateTime" />
                    <asp:BoundField DataField="Status" HeaderText="Status" 
                        SortExpression="Status" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                SelectCommand="SELECT * FROM [AccountsLog]"></asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>
