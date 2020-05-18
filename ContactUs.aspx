<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="VirtualCampus.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="titleplaceholder" runat="server">
Contact Us
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
            font-size: medium;
            color: #FF9900;
        }
        .style11
        {
            font-size: 13px;
        }
        .style12
        {
            font-size: 13px;
            color: #0099FF;
        }
        .style13
        {
            color: #0099FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="style8">
        <tr>
            <td class="style9">
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image1" runat="server" ImageUrl="~/ImagesUsed/ContactUs.png" />
            </td>
        </tr>
    </table>
    <table class="style8">
        <tr>
            <td class="style9">
                <strong><span class="style14">
                <asp:Image ID="Image2" runat="server" Height="69px" 
                    ImageUrl="~/ImagesUsed/logo-copy.png" Width="174px" />
                <br />
                <br />
                <span class="style10">IZee College Of Management &amp; Information Science</span></span><br 
                    class="style14" />
                    <span class="style14"><span class="style12">#39, Benaka Towers,Near Kripa Telecom,Opp 
                D-Mart</span></span><span class="style11"><br class="style13" />
                    <span class="style13">Electronic City Phase - II,Behind SBI Bank</span><br 
                    class="style13" />
                    </span><span class="style14"><span class="style12">Bangalore South,Bangalore-560100<br />
                Call Us At : +91-9060568976</span></span></strong></td>
        </tr>
    </table>
</asp:Content>
