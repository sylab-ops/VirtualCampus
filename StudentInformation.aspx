<%@ Page Title="" Language="C#" MasterPageFile="~/Interface.Master" AutoEventWireup="true" CodeBehind="StudentInformation.aspx.cs" Inherits="VirtualCampus.StudentInformation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="InterfacetitlePlaceHolder" runat="server">
Student Information
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="style12">
        <strong>
    <asp:GridView ID="GridView1" runat="server" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Student_id" 
        DataSourceID="StudentInformation1" Font-Bold="False" Font-Size="Small" 
            Width="4479px" Height="143px" 
            Caption="Student Information" CaptionAlign="Top" ShowFooter="True" 
            ShowHeaderWhenEmpty="True" CellPadding="10" 
            EmptyDataText="There Are No Students Registered Yet!" ForeColor="#333333" 
            GridLines="Horizontal" AllowPaging="True" CellSpacing="10">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField HeaderText="Select Record" ShowSelectButton="True" />
            <asp:BoundField DataField="Student_id" HeaderText="Student_id" 
                InsertVisible="False" ReadOnly="True" SortExpression="Student_id" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" 
                SortExpression="FirstName" />
            <asp:BoundField DataField="MiddleName" HeaderText="MiddleName" 
                SortExpression="MiddleName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" 
                SortExpression="LastName" />
            <asp:BoundField DataField="FatherName" HeaderText="FatherName" 
                SortExpression="FatherName" />
            <asp:BoundField DataField="MotherName" HeaderText="MotherName" 
                SortExpression="MotherName" />
            <asp:BoundField DataField="GuardianName" HeaderText="GuardianName" 
                SortExpression="GuardianName" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" 
                SortExpression="Gender" />
            <asp:BoundField DataField="BirthPlace" HeaderText="BirthPlace" 
                SortExpression="BirthPlace" />
            <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
            <asp:BoundField DataField="Nationality" HeaderText="Nationality" 
                SortExpression="Nationality" />
            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            <asp:BoundField DataField="BloodGroup" HeaderText="BloodGroup" 
                SortExpression="BloodGroup" />
            <asp:BoundField DataField="Country" HeaderText="Country" 
                SortExpression="Country" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="PinCode" HeaderText="PinCode" 
                SortExpression="PinCode" />
            <asp:BoundField DataField="ContactNumber" HeaderText="ContactNumber" 
                SortExpression="ContactNumber" />
            <asp:BoundField DataField="MobileNumber" HeaderText="MobileNumber" 
                SortExpression="MobileNumber" />
            <asp:BoundField DataField="E-Mail" HeaderText="E-Mail" 
                SortExpression="E-Mail" />
            <asp:BoundField DataField="LinkedINID" HeaderText="LinkedINID" 
                SortExpression="LinkedINID" />
            <asp:BoundField DataField="FacebookID" HeaderText="FacebookID" 
                SortExpression="FacebookID" />
            <asp:BoundField DataField="TwitterID" HeaderText="TwitterID" 
                SortExpression="TwitterID" />
            <asp:BoundField DataField="NaukriID" HeaderText="NaukriID" 
                SortExpression="NaukriID" />
            <asp:BoundField DataField="BlogAddress" HeaderText="BlogAddress" 
                SortExpression="BlogAddress" />
            <asp:BoundField DataField="Relationship" HeaderText="Relationship" 
                SortExpression="Relationship" />
            <asp:BoundField DataField="Occupation" HeaderText="Occupation" 
                SortExpression="Occupation" />
            <asp:BoundField DataField="AnnualIncome" HeaderText="AnnualIncome" 
                SortExpression="AnnualIncome" />
            <asp:BoundField DataField="Dependents" HeaderText="Dependents" 
                SortExpression="Dependents" />
            <asp:BoundField DataField="PhoneHome" HeaderText="PhoneHome" 
                SortExpression="PhoneHome" />
            <asp:BoundField DataField="Religion" HeaderText="Religion" 
                SortExpression="Religion" />
            <asp:BoundField DataField="Category" HeaderText="Category" 
                SortExpression="Category" />
            <asp:BoundField DataField="Caste" HeaderText="Caste" SortExpression="Caste" />
            <asp:BoundField DataField="MotherTongue" HeaderText="MotherTongue" 
                SortExpression="MotherTongue" />
            <asp:BoundField DataField="CollegeName" HeaderText="CollegeName" 
                SortExpression="CollegeName" />
            <asp:BoundField DataField="CollegeAddress" HeaderText="CollegeAddress" 
                SortExpression="CollegeAddress" />
            <asp:BoundField DataField="PCourse" HeaderText="PCourse" 
                SortExpression="PCourse" />
            <asp:BoundField DataField="PYearPassed" HeaderText="PYearPassed" 
                SortExpression="PYearPassed" />
            <asp:BoundField DataField="Promo" HeaderText="Promo" SortExpression="Promo" />
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
            <asp:BoundField DataField="PermanentAddress" HeaderText="PermanentAddress" 
                SortExpression="PermanentAddress" />
            <asp:BoundField DataField="Username" HeaderText="Username" 
                SortExpression="Username" />
            <asp:BoundField DataField="Password" HeaderText="Password" 
                SortExpression="Password" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
        </strong>
</div>
<asp:SqlDataSource ID="StudentInformation1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
    SelectCommand="SELECT * FROM [StudentRegistrations] ORDER BY [Student_id]" 
        UpdateCommand="UPDATE StudentRegistrations SET FirstName = @FirstName, MiddleName = @MiddleName, LastName = @LastName, FatherName = @FatherName, MotherName = @MotherName, GuardianName = @GuardianName, Gender = @Gender, BirthPlace = @BirthPlace, DOB = @DOB, Nationality = @Nationality, Age = @Age, BloodGroup = @BloodGroup, Country = @Country, State = @State, City = @City, ContactNumber = @ContactNumber, MobileNumber = @MobileNumber, [E-Mail] = N'@[E-Mail]', LinkedINID = @LinkedINID, NaukriID = @NaukriID, BlogAddress = @BlogAddress, Relationship = @Relationship, Occupation = @Occupation, FacebookID = @FacebookID, TwitterID = @TwitterID, AnnualIncome = @AnnualIncome, Dependents = @Dependents, PhoneHome = @PhoneHome, Religion = @Religion, Caste = @Caste, MotherTongue = @MotherTongue, Category = @Category, CollegeName = @CollegeName, CollegeAddress = @CollegeAddress, PYearPassed = @PYearPassed, PCourse = @PCourse, Promo = @Promo, DateOfAdmission = @DateOfAdmission, Semester = @Semester, Section = @Section, Course = @Course, PermanentAddress = @PermanentAddress, RollNo = @RollNo, Username = @Username, Password = @Password WHERE (Student_id = @Student_id) AND (FirstName = @FirstName)">
    <UpdateParameters>
        <asp:Parameter Name="FirstName" />
        <asp:Parameter Name="MiddleName" />
        <asp:Parameter Name="LastName" />
        <asp:Parameter Name="FatherName" />
        <asp:Parameter Name="MotherName" />
        <asp:Parameter Name="GuardianName" />
        <asp:Parameter Name="Gender" />
        <asp:Parameter Name="BirthPlace" />
        <asp:Parameter Name="DOB" />
        <asp:Parameter Name="Nationality" />
        <asp:Parameter Name="Age" />
        <asp:Parameter Name="BloodGroup" />
        <asp:Parameter Name="Country" />
        <asp:Parameter Name="State" />
        <asp:Parameter Name="City" />
        <asp:Parameter Name="ContactNumber" />
        <asp:Parameter Name="MobileNumber" />
        <asp:Parameter Name="LinkedINID" />
        <asp:Parameter Name="NaukriID" />
        <asp:Parameter Name="BlogAddress" />
        <asp:Parameter Name="Relationship" />
        <asp:Parameter Name="Occupation" />
        <asp:Parameter Name="FacebookID" />
        <asp:Parameter Name="TwitterID" />
        <asp:Parameter Name="AnnualIncome" />
        <asp:Parameter Name="Dependents" />
        <asp:Parameter Name="PhoneHome" />
        <asp:Parameter Name="Religion" />
        <asp:Parameter Name="Caste" />
        <asp:Parameter Name="MotherTongue" />
        <asp:Parameter Name="Category" />
        <asp:Parameter Name="CollegeName" />
        <asp:Parameter Name="CollegeAddress" />
        <asp:Parameter Name="PYearPassed" />
        <asp:Parameter Name="PCourse" />
        <asp:Parameter Name="Promo" />
        <asp:Parameter Name="DateOfAdmission" />
        <asp:Parameter Name="Semester" />
        <asp:Parameter Name="Section" />
        <asp:Parameter Name="Course" />
        <asp:Parameter Name="PermanentAddress" />
        <asp:Parameter Name="RollNo" />
        <asp:Parameter Name="Username" />
        <asp:Parameter Name="Password" />
        <asp:Parameter Name="Student_id" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
