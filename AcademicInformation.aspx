<%@ Page Title="" Language="C#" MasterPageFile="~/StudentInterface.Master" AutoEventWireup="true" CodeBehind="AcademicInformation.aspx.cs" Inherits="VirtualCampus.AcademicInformation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="titleholder" runat="server">
Your Academic Information
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style18
    {
        text-align: left;
    }
    .style19
    {
        text-align: right;
    }
    .style20
    {
        width: 375px;
    }
</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="style6">
    <tr>
        <td class="style12">
            <asp:Label ID="Label2" runat="server" Text="Your Academic Information"></asp:Label>
            <br />
            <hr />
            <table class="style6">
                <tr>
                    <td class="style18">
                        <asp:Label ID="Label3" runat="server" Text="Current User :"></asp:Label>
                        <strong>
                        <asp:Label ID="lblUserID" runat="server" CssClass="style17"></asp:Label>
                        </strong>
                    </td>
                    <td class="style19">
                        <asp:Label ID="Label5" runat="server" Text="Current Username :"></asp:Label>
                        <strong>
                        <asp:Label ID="lblCurrentUser" runat="server" CssClass="style17"></asp:Label>
                        </strong>
                    </td>
                </tr>
            </table>
            <table class="style6">
                <tr>
                    <td class="style20">
                        &nbsp;</td>
                    <td>
                        <strong>
                        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                            DataKeyNames="Student_id" DataSourceID="SqlDataSource1" 
                            EmptyDataText="No Academic Information Available" Height="50px" Width="449px">
                            <Fields>
                                <asp:BoundField DataField="Student_id" HeaderText="Student_id" 
                                    InsertVisible="False" ReadOnly="True" SortExpression="Student_id" />
                                <asp:BoundField DataField="FirstName" HeaderText="FirstName" 
                                    SortExpression="FirstName" />
                                <asp:BoundField DataField="DateOfAdmission" HeaderText="DateOfAdmission" 
                                    SortExpression="DateOfAdmission" />
                                <asp:BoundField DataField="Course" HeaderText="Course" 
                                    SortExpression="Course" />
                                <asp:BoundField DataField="Semester" HeaderText="Semester" 
                                    SortExpression="Semester" />
                                <asp:BoundField DataField="Section" HeaderText="Section" 
                                    SortExpression="Section" />
                                <asp:BoundField DataField="RollNo" HeaderText="RollNo" 
                                    SortExpression="RollNo" />
                                <asp:BoundField DataField="TotalFee" HeaderText="TotalFee" 
                                    SortExpression="TotalFee" />
                                <asp:BoundField DataField="RemainingFee" HeaderText="RemainingFee" 
                                    SortExpression="RemainingFee" />
                                <asp:BoundField DataField="PayingFee" HeaderText="PayingFee" 
                                    SortExpression="PayingFee" />
                            </Fields>
                        </asp:DetailsView>
                        </strong>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                            SelectCommand="SELECT Student_id, FirstName, DateOfAdmission, Course, Semester, Section, RollNo, TotalFee, RemainingFee, PayingFee FROM StudentRegistrations WHERE (Student_id = @Student_id) AND (FirstName = @FirstName)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblUserID" Name="Student_id" 
                                    PropertyName="Text" />
                                <asp:ControlParameter ControlID="lblCurrentUser" Name="FirstName" 
                                    PropertyName="Text" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>
<br>
