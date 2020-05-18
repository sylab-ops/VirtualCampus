<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="CoursesOffered.aspx.cs" Inherits="VirtualCampus.ContactDev2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="titleplaceholder" runat="server">
Courses Offered 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
   
    <style type="text/css">
    .style8
    {
        width: 100%;
    }
    .style9
    {
        text-align: center;
    }
        .style10
        {
            font-size: large;
        }
        .style11
        {
            width: 435px;
            text-align: center;
        }
        .style12
        {
            width: 379px;
            text-align: center;
        }
        .style13
        {
            text-align: center;
            width: 612px;
        }
        .style14
        {
            text-align: right;
            width: 263px;
        }
    </style>
   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="style8">
    <tr>
        <td class="style9">
            <br />
            <br />
            <asp:Image ID="Image1" runat="server" 
                ImageUrl="~/ImagesUsed/coursesHeader.png" />
            <br />
        </td>
    </tr>
</table>
<table class="style8">
    <tr>
        <td class="style14">
            <strong>
            <asp:Label ID="Label1" runat="server" CssClass="style10" Text="BBM"></asp:Label>
            </strong></td>
        <td class="style13">
            <strong>
            <asp:Label ID="Label2" runat="server" CssClass="style10" Text="BCA"></asp:Label>
            </strong></td>
        <td class="style9">
            <strong>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" CssClass="style10" Text="B.Com"></asp:Label>
            </strong></td>
    </tr>
</table>

    <table class="style8" style="border: thin solid #0099FF">
        <tr>
            <td class="style11" style="border: thin solid #0099FF">
                
                The World Economy Is in Constant Change &amp; This Rises Many opportunities,<br />
                Challenges, Threats That require A Good Knowledge of Concepts,Execution<br />
                Skills,Adaptation,Attitude and Integrity.<br />
                This Program Is Designed For Aspiring Business leaders &amp; Managers Of The<br />
                Future.<br />
                Graduates Are Equipped With The Naccessary Knowledge,Skills,Self-Confidence<br />
                to Assist in Effective And Successful Management, Within Constantly Changing<br />
                And Highly Competative National &amp; International Business Environments.<br />
                Bachelor Of Business Of Management Of The Bangalore University Provides<br />
                you With The Skills Neccessary To Manage Business &amp; Be An Effective Global<br />
                Leader.</td>
            <td class="style12" style="border: thin solid #0099FF">
                Fast Growing Information Technology And Communication Systems Have Become&nbsp; 
                Critical Components Of Almost EveryCompanies Strategic Plan.<br />
                Comapnies Which Want To take Advantage Of New Information Technologies And 
                Communication System require Expert Professionals, Who Can Apply Computer 
                Science Principles to Solve Problems Produced By The Interface Between Business 
                &amp; technology.<br />
                <br />
                BCA Is An undergraduate Program Of The bangalore University Where Students Are 
                Exposed to Various Areas Of Computer Applications Including The latest 
                Developements Keeping Pace With The Industry.<br />
            </td>
            <td class="style9" style="border: thin solid #0099FF">
                Bangalore University B.Com Focusses on decision Making , Management &amp; Technology 
                Within The Business Arena And it Is designed To Give Student AStrong foundation 
                in The Essential Skills Required For A Successful Career in commerece And 
                Management.The Course Fully Equips Students With Both Theoratical &amp; Practical 
                Exposures Preparing Them For A Professional, Commercial Environment. </td>
        </tr>
    </table>

</asp:Content>
