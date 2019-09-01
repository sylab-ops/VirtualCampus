<%@ Page Title="" Language="C#" MasterPageFile="~/StudentInterface.Master" AutoEventWireup="true" CodeBehind="LecturesInfo.aspx.cs" Inherits="VirtualCampus.LecturesInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="titleholder" runat="server">
Lecturers Information
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style16
    {
        color: #0066CC;
    }
</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="style6">
    <tr>
        <td class="style12">
            <strong>
            <asp:Label ID="Label2" runat="server" CssClass="style16" 
                Text="Lecturers Information System"></asp:Label>
            .<br />
            </strong>
            <hr />
            <table class="style6">
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                            AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
                            Width="1113px">
                            <Columns>
                                <asp:CommandField HeaderText="Select Record" ShowSelectButton="True" />
                                <asp:BoundField DataField="Lecture_id" HeaderText="Lecture_id" 
                                    InsertVisible="False" ReadOnly="True" SortExpression="Lecture_id" />
                                <asp:BoundField DataField="Lecturer_Name" HeaderText="Lecturer_Name" 
                                    SortExpression="Lecturer_Name" />
                                <asp:BoundField DataField="Mobile_Number" HeaderText="Mobile_Number" 
                                    SortExpression="Mobile_Number" />
                                <asp:BoundField DataField="Email_id" HeaderText="Email_id" 
                                    SortExpression="Email_id" />
                                <asp:BoundField DataField="Qualification" HeaderText="Qualification" 
                                    SortExpression="Qualification" />
                                <asp:BoundField DataField="Experience_Stream" HeaderText="Experience_Stream" 
                                    SortExpression="Experience_Stream" />
                                <asp:BoundField DataField="Subject" HeaderText="Subject" 
                                    SortExpression="Subject" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                            SelectCommand="SELECT [Lecture_id], [Lecturer_Name], [Mobile_Number], [Email_id], [Qualification], [Experience_Stream], [Subject] FROM [lectureReg] ORDER BY [Lecture_id]">
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>
