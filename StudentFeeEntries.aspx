<%@ Page Title="" Language="C#" MasterPageFile="~/AccountsInterface.Master" AutoEventWireup="true" CodeBehind="StudentFeeEntries.aspx.cs" Inherits="VirtualCampus.StudentFeeEntries" %>
<asp:Content ID="Content1" ContentPlaceHolderID="InterfacetitlePlaceHolder" runat="server">
Recent Fee Entries
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="style6">
    <tr>
        <td class="style12">
            <strong>
            <asp:Label ID="Label9" runat="server" Text="Students Fee Transactions History"></asp:Label>
            <br />
            </strong>
            <hr />
            <table class="style6">
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" 
                            AllowSorting="True" AutoGenerateColumns="False" Caption="Students Fees Tracker" 
                            CellPadding="4" DataKeyNames="TransactionNumber" DataSourceID="SqlDataSource2" 
                            EmptyDataText="There Are No Transactions Made Yet!  Please Add One To See Here! " 
                            ForeColor="#333333" GridLines="Horizontal" Height="60px" 
                            ShowFooter="True" ShowHeaderWhenEmpty="True" Width="1105px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:CommandField HeaderText="Select Row" ShowSelectButton="True" />
                                <asp:BoundField DataField="TransactionNumber" HeaderText="TransactionNumber" 
                                    InsertVisible="False" ReadOnly="True" SortExpression="TransactionNumber" />
                                <asp:BoundField DataField="Student_id" HeaderText="Student_id" 
                                    SortExpression="Student_id" />
                                <asp:BoundField DataField="Student_Name" HeaderText="Student_Name" 
                                    SortExpression="Student_Name" />
                                <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                                <asp:BoundField DataField="Section" HeaderText="Section" 
                                    SortExpression="Section" />
                                <asp:BoundField DataField="RollNo" HeaderText="RollNo" 
                                    SortExpression="RollNo" />
                                <asp:BoundField DataField="PaidFee" HeaderText="PaidFee" 
                                    SortExpression="PaidFee" />
                                <asp:BoundField DataField="RemainingFee" HeaderText="RemainingFee" 
                                    SortExpression="RemainingFee" />
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
                            SelectCommand="SELECT * FROM [StudentFeeEntries] ORDER BY [TransactionNumber]"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>
