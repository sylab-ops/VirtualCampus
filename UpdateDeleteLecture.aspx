<%@ Page Title="" Language="C#" MasterPageFile="~/Interface.Master" AutoEventWireup="true" CodeBehind="UpdateDeleteLecture.aspx.cs" Inherits="VirtualCampus.DeleteStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="InterfacetitlePlaceHolder" runat="server">
Manage Lecturers Page
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="style12">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    CellPadding="4" DataSourceID="LectureData" AllowPaging="True" 
            AllowSorting="True" GridLines="None" ShowHeaderWhenEmpty="True" 
            Width="2085px" Caption="Lecture Database" 
            CaptionAlign="Top" DataKeyNames="Lecture_id" 
            EmptyDataText="No Lecturers Records Available At This Time..Please Try Later" 
            Height="16px" ShowFooter="True" CellSpacing="5" ForeColor="#333333">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:CommandField HeaderText="Select Record" ShowSelectButton="True" />
        <asp:CommandField HeaderText="Edit Record" ShowEditButton="True" />
        <asp:CommandField HeaderText="Delete record" ShowDeleteButton="True" />
        <asp:BoundField DataField="Lecture_id" HeaderText="Lecture_id" 
            InsertVisible="False" ReadOnly="True" SortExpression="Lecture_id" />
        <asp:BoundField DataField="Lecturer_Name" HeaderText="Lecturer_Name" 
            SortExpression="Lecturer_Name" />
        <asp:BoundField DataField="Mobile_Number" HeaderText="Mobile_Number" 
            SortExpression="Mobile_Number" />
        <asp:BoundField DataField="Alternate_Number" HeaderText="Alternate_Number" 
            SortExpression="Alternate_Number" />
        <asp:BoundField DataField="Email_id" HeaderText="Email_id" 
            SortExpression="Email_id" />
        <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
        <asp:BoundField DataField="District" HeaderText="District" 
            SortExpression="District" />
        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
        <asp:BoundField DataField="Year_of_Join" HeaderText="Year_of_Join" 
            SortExpression="Year_of_Join" />
        <asp:BoundField DataField="Qualification" HeaderText="Qualification" 
            SortExpression="Qualification" />
        <asp:BoundField DataField="Present_Address" HeaderText="Present_Address" 
            SortExpression="Present_Address" />
        <asp:BoundField DataField="Permanent_Address" HeaderText="Permanent_Address" 
            SortExpression="Permanent_Address" />
        <asp:BoundField DataField="Lecture_Status" HeaderText="Lecture_Status" 
            SortExpression="Lecture_Status" />
        <asp:BoundField DataField="Experience_Years" HeaderText="Experience_Years" 
            SortExpression="Experience_Years" />
        <asp:BoundField DataField="Experience_Stream" HeaderText="Experience_Stream" 
            SortExpression="Experience_Stream" />
        <asp:BoundField DataField="Subject" HeaderText="Subject" 
            SortExpression="Subject" />
        <asp:BoundField DataField="Annual_Salary" HeaderText="Annual_Salary" 
            SortExpression="Annual_Salary" />
    </Columns>
            <EditRowStyle BackColor="#999999" />
    <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" BorderStyle="Solid" />
    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#E9E7E2" />
    <SortedAscendingHeaderStyle BackColor="#506C8C" />
    <SortedDescendingCellStyle BackColor="#FFFDF8" />
    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
</asp:GridView>
    </div>
<asp:SqlDataSource ID="LectureData" runat="server" 
    ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
    SelectCommand="SELECT * FROM [lectureReg]" 
        
        UpdateCommand="UPDATE lectureReg SET Lecturer_Name = @Lecturer_Name, Mobile_Number = @Mobile_Number, Alternate_Number = @Alternate_Number, Email_id = @Email_id, State = @State, District = @District, City = @City, Year_of_Join = @Year_of_Join, Qualification = @Qualification, Present_Address = @Present_Address, Permanent_Address = @Permanent_Address, Lecture_Status = @Lecture_Status, Experience_Years = @Experience_Years, Experience_Stream = @Experience_Stream, Subject = @Subject, Annual_Salary = @Annual_Salary WHERE (Lecture_id = @Lecture_id)" 
        DeleteCommand="DELETE FROM lectureReg WHERE [Lecture_id] = @Lecture_id">
    <DeleteParameters>
        <asp:Parameter Name="Lecturer_id" />
    </DeleteParameters>
    <UpdateParameters>
        <asp:Parameter Name="Lecturer_Name" />
        <asp:Parameter Name="Mobile_Number" />
        <asp:Parameter Name="Alternate_Number" />
        <asp:Parameter Name="Email_id" />
        <asp:Parameter Name="State" />
        <asp:Parameter Name="District" />
        <asp:Parameter Name="City" />
        <asp:Parameter Name="Year_of_Join" />
        <asp:Parameter Name="Qualification" />
        <asp:Parameter Name="Present_Address" />
        <asp:Parameter Name="Permanent_Address" />
        <asp:Parameter Name="Lecture_Status" />
        <asp:Parameter Name="Experience_Years" />
        <asp:Parameter Name="Experience_Stream" />
        <asp:Parameter Name="Subject" />
        <asp:Parameter Name="Annual_Salary" />
        <asp:Parameter Name="Lecture_id" />
    </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
