<%@ Page Title="" Language="C#" MasterPageFile="~/StudentInterface.Master" AutoEventWireup="true" CodeBehind="StudentPersonalInfo.aspx.cs" Inherits="VirtualCampus.StudentPersonalInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="titleholder" runat="server">
Your Personal Information
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style16
    {
        color: #0066CC;
    }
    .style18
    {
        width: 288px;
    }
    .style19
    {
        width: 207px;
    }
    .style20
    {
        width: 312px;
    }
        .style23
        {
            color: #FF0000;
        }
        .style24
        {
            color: #0066CC;
        }
        .style25
        {
            margin-left: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="style6">
    <tr>
        <td class="style12">
            <strong>
            <asp:Label ID="Label2" runat="server" CssClass="style16" 
                Text="Your Profile &amp; Personal Information"></asp:Label>
            <br />
            </strong>
            <hr />
            <table class="style6">
                <tr>
                    <td class="style19">
                        <strong>
                        <asp:Label ID="Label3" runat="server" Text="Current UserID :"></asp:Label>
                        <asp:Label ID="lblUserID" runat="server" CssClass="style23"></asp:Label>
                        </strong></td>
                    <td class="style18">
                        &nbsp;</td>
                    <td class="style20">
                        &nbsp;</td>
                    <td>
                        <strong>
                        <asp:Label ID="Label5" runat="server" Text="Current User :"></asp:Label>
                        <asp:Label ID="lblCurrentUser" runat="server" CssClass="style23"></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td class="style19">
                        <div class="style12">
                            <strong>
                        <asp:DetailsView ID="DetailsView3" runat="server" Height="86px" Width="307px" 
                                AutoGenerateRows="False" DataKeyNames="Student_id" 
                                DataSourceID="SqlDataSource1" EmptyDataText="style22">
                            <Fields>
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
                            </Fields>
                        </asp:DetailsView>
                            </strong>
                        </div>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                            
                            SelectCommand="SELECT Student_id, FirstName, MiddleName, LastName, FatherName, MotherName, GuardianName, Gender, BirthPlace, DOB, Nationality, Age, BloodGroup, Country, State FROM StudentRegistrations WHERE (Student_id = @Student_id) AND (FirstName = @FirstName)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblUserID" Name="Student_id" 
                                    PropertyName="Text" />
                                <asp:ControlParameter ControlID="lblCurrentUser" Name="FirstName" 
                                    PropertyName="Text" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td class="style18">
                        <div class="style12">
                            <strong>
                        <asp:DetailsView ID="DetailsView4" runat="server" Height="50px" Width="292px" 
                                AutoGenerateRows="False" 
                                CssClass="style24" DataSourceID="SqlDataSource2">
                            <Fields>
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
                            </Fields>
                        </asp:DetailsView>
                            </strong>
                        </div>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                            
                            SelectCommand="SELECT City, PinCode, ContactNumber, MobileNumber, [E-Mail], LinkedINID, FacebookID, TwitterID, NaukriID, BlogAddress, Relationship, Occupation, AnnualIncome, Dependents, PhoneHome, Religion FROM StudentRegistrations WHERE (Student_id = @Student_id) AND (FirstName = @FirstName)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblUserID" Name="Student_id" 
                                    PropertyName="Text" />
                                <asp:ControlParameter ControlID="lblCurrentUser" Name="FirstName" 
                                    PropertyName="Text" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td class="style20">
                        <div class="style12">
                            <strong>
                        <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="306px" 
                                AutoGenerateRows="False" 
                                CssClass="style24" DataSourceID="SqlDataSource3">
                            <Fields>
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
                            </Fields>
                        </asp:DetailsView>
                            </strong>
                        </div>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                            
                            SelectCommand="SELECT Category, Caste, MotherTongue, CollegeName, CollegeAddress, PCourse, PYearPassed, Promo, DateOfAdmission, Course, Semester, Section, RollNo, TotalFee, RemainingFee, PayingFee FROM StudentRegistrations WHERE (Student_id = @Student_id) AND (FirstName = @FirstName)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblUserID" Name="Student_id" 
                                    PropertyName="Text" />
                                <asp:ControlParameter ControlID="lblCurrentUser" Name="FirstName" 
                                    PropertyName="Text" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td class="style25">
                        <strong>
                        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="186px" 
                            AutoGenerateRows="False" 
                            CssClass="style24" DataSourceID="SqlDataSource4">
                            <Fields>
                                <asp:BoundField DataField="Username" HeaderText="Username" 
                                    SortExpression="Username" />
                                <asp:BoundField DataField="Password" HeaderText="Password" 
                                    SortExpression="Password" />
                            </Fields>
                        </asp:DetailsView>
                        </strong>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                            
                            SelectCommand="SELECT Username, Password FROM StudentRegistrations WHERE (Student_id = @Student_id) AND (FirstName = @FirstName)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblUserID" Name="Student_id" 
                                    PropertyName="Text" />
                                <asp:ControlParameter ControlID="lblCurrentUser" Name="FirstName" 
                                    PropertyName="Text" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>
