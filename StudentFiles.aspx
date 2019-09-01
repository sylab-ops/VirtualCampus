<%@ Page Title="" Language="C#" MasterPageFile="~/Interface.Master" AutoEventWireup="true" CodeBehind="StudentFiles.aspx.cs" Inherits="VirtualCampus.StudentFiles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="InterfacetitlePlaceHolder" runat="server">
Student's Uploads
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style15
    {
        text-align: left;
    }
    .style16
    {
        font-size: medium;
    }
</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="style6">
    <tr>
        <td class="style12">
            <strong>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Student Uploaded Files Storage"></asp:Label>
            <br />
            </strong>
            <hr />
            <strong>
            <asp:Label ID="lblDownDel" runat="server" CssClass="style16"></asp:Label>
            </strong>
            <br />
            <table class="style6">
                <tr>
                    <td class="style15">
                        <div class="style12">
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                                DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
                                onrowcommand="GridView1_RowCommand" Width="1106px" 
                                EmptyDataText="There Are No Documents Received From Any Students!">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:CommandField ShowSelectButton="True" />
                                    <asp:BoundField DataField="Student_id" HeaderText="Student_id" 
                                        SortExpression="Student_id" />
                                    <asp:BoundField DataField="File_id" HeaderText="File_id" 
                                        SortExpression="File_id" />
                                    <asp:BoundField DataField="Filename" HeaderText="Filename" 
                                        SortExpression="Filename" />
                                    <asp:BoundField DataField="UploadedDate" HeaderText="UploadedDate" 
                                        SortExpression="UploadedDate" />
                                    <asp:BoundField DataField="Remarks" HeaderText="Remarks" 
                                        SortExpression="Remarks" />
                                    <asp:ButtonField ButtonType="Button" CommandName="Download" 
                                        HeaderText="Download" Text="Download" />
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                            SelectCommand="SELECT Studentfiles.* FROM Studentfiles"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>
