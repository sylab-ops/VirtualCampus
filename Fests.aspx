<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Fests.aspx.cs" Inherits="VirtualCampus.Fests" %>
<asp:Content ID="Content1" ContentPlaceHolderID="titleplaceholder" runat="server">
Inter-Collegiate fests
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
            text-align: right;
        }
        .style11
        {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="style8">
        <tr>
            <td class="style9">
                <br />
                <br />
                <asp:Image ID="Image1" runat="server" ImageUrl="~/ImagesUsed/Fests.png" />
            </td>
        </tr>
    </table>
    <table class="style8">
        <tr>
            <td class="style11">
                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" 
                    Text="Inter-Collegiate Fest Of The Year-2014"></asp:Label>
                </strong>
            </td>
            <td class="style9">
                <strong>
                <asp:Label ID="Label2" runat="server" 
                    Text="Inter-Collegiate Fest Of The Year-2015"></asp:Label>
                </strong>
            </td>
        </tr>
    </table>
    <table class="style8">
        <tr>
            <td class="style11">
                <asp:Image ID="Image2" runat="server" Height="132px" 
                    ImageUrl="~/ImagesUsed/Signature fest.png" Width="389px" />
            </td>
            <td class="style10">
                <asp:Image ID="Image3" runat="server" Height="132px" 
                    ImageUrl="~/ImagesUsed/Interagir fest.jpg" Width="494px" />
            </td>
        </tr>
    </table>
    <table class="style8">
        <tr>
            <td class="style9">
                <strong>
                <asp:Label ID="Label4" runat="server" Text="Source: "></asp:Label>
&nbsp;<br />
                http://www.signaturefest.com</strong></td>
            <td class="style9">
                <strong>
                <asp:Label ID="Label3" runat="server" Text="Source: "></asp:Label>
                <br />
                http://intergirfestt.wordpress.com</strong></td>
        </tr>
    </table>
</asp:Content>
