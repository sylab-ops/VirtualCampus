<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="VirtualCampus.Default1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="titleplaceholder" runat="server">
Welcome To Virtual Campus College Management System
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style8
        {
            text-align: left;
        }
        .style9
        {
            width: 100%;
            height: 377px;
        }
        .style10
        {
            width: 1137px;
            text-align: center;
        }
        .style11
        {
            width: 100%;
        }
        .style12
        {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="style8">
        <table class="style9">
            <tr>
                <td>
                    <div class="style10">
                        <asp:Image ID="Image4" runat="server" ImageUrl="~/ImagesUsed/Logo.png" />
                        <br />
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/ImagesUsed/VC1.png" 
                            Width="537px" />
                        <br />
                        <table class="style11">
                            <tr>
                                <td class="style8">
                                    <asp:Image ID="Image3" runat="server" Height="121px" 
                                        ImageUrl="~/ImagesUsed/WEb.png" Width="214px" />
                                </td>
                                <td class="style12">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
