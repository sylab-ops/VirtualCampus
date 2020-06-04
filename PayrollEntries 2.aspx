<%@ Page Title="" Language="C#" MasterPageFile="~/AccountsInterface.Master" AutoEventWireup="true" CodeBehind="PayrollEntries.aspx.cs" Inherits="VirtualCampus.PayrollEntries" %>
<asp:Content ID="Content1" ContentPlaceHolderID="InterfacetitlePlaceHolder" runat="server">
Recent Employee Payroll Entries
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="style6">
    <tr>
        <td class="style12">
            <strong>
            <asp:Label ID="Label9" runat="server" Text="Payroll Transaction History"></asp:Label>
            <br />
            </strong>
            <hr />
            <table class="style6">
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" 
                            AllowSorting="True" AutoGenerateColumns="False" 
                            DataKeyNames="TransactionNumber" DataSourceID="SqlDataSource2" 
                            EmptyDataText="There Are no Payroll Entries Here! Please Make Trsaction To See History." 
                            Width="1105px" Caption="Employees Salary Tracker" CellPadding="4" 
                            ForeColor="#333333" GridLines="Horizontal" Height="96px" 
                            ShowFooter="True" ShowHeaderWhenEmpty="True">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" HeaderText="Select Row" />
                                <asp:BoundField DataField="TransactionNumber" HeaderText="TransactionNumber" 
                                    InsertVisible="False" ReadOnly="True" SortExpression="TransactionNumber" />
                                <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" 
                                    SortExpression="EmployeeID" />
                                <asp:BoundField DataField="EmployeeName" HeaderText="EmployeeName" 
                                    SortExpression="EmployeeName" />
                                <asp:BoundField DataField="Department" HeaderText="Department" 
                                    SortExpression="Department" />
                                <asp:BoundField DataField="NetSalary" HeaderText="NetSalary" 
                                    SortExpression="NetSalary" />
                                <asp:BoundField DataField="TransactionDate" HeaderText="TransactionDate" 
                                    SortExpression="TransactionDate" />
                                <asp:BoundField DataField="TransactionTime" HeaderText="TransactionTime" 
                                    SortExpression="TransactionTime" />
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
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                            
                            SelectCommand="SELECT TransactionNumber, EmployeeID, EmployeeName, Department, NetSalary, TransactionDate, TransactionTime, Status FROM PayrollEntries">
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>
