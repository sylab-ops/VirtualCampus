<%@ Page Title="" Language="C#" MasterPageFile="~/Interface.Master" AutoEventWireup="true" CodeBehind="EligibleStudents.aspx.cs" Inherits="VirtualCampus.EligibleStudents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="InterfacetitlePlaceHolder" runat="server">
Scholarship Eligible Students
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="style12">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BorderStyle="Ridge" CellPadding="4" DataSourceID="ScholarshipEligibleData" 
        ForeColor="#333333" ShowFooter="True" Width="1121px" 
            Caption="Student's Social Welfare Office Scholarship Eligible Students List" 
            CaptionAlign="Top" 
            EmptyDataText="No Students Are Eligible For Obtaining Scholarship! " 
            Height="163px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Student_id" HeaderText="Student_id" 
                SortExpression="Student_id" />
            <asp:BoundField DataField="Student_name" HeaderText="Student_name" 
                SortExpression="Student_name" />
            <asp:BoundField DataField="Student_Class" HeaderText="Student_Class" 
                SortExpression="Student_Class" />
            <asp:BoundField DataField="Student_Semester" HeaderText="Student_Semester" 
                SortExpression="Student_Semester" />
            <asp:BoundField DataField="Student_Caste" HeaderText="Student_Caste" 
                SortExpression="Student_Caste" />
            <asp:BoundField DataField="Student_SubCaste" HeaderText="Student_SubCaste" 
                SortExpression="Student_SubCaste" />
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
</div>
<asp:SqlDataSource ID="ScholarshipEligibleData" runat="server" 
    ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
    SelectCommand="SELECT * FROM [ScholarshipStat] ORDER BY [Student_id]">
</asp:SqlDataSource>
</asp:Content>
