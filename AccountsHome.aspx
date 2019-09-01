<%@ Page Title="" Language="C#" MasterPageFile="~/AccountsInterface.Master" AutoEventWireup="true" CodeBehind="AccountsHome.aspx.cs" Inherits="VirtualCampus.AccountsHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="InterfacetitlePlaceHolder" runat="server">
Welcome to Accounts Portal
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="style6">
        <tr>
            <td class="style12">
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:Image ID="Image4" runat="server" ImageUrl="~/ImagesUsed/WelcomeAc.png" />
                <br />
                <br />
                <asp:Image ID="Image3" runat="server" ImageUrl="~/ImagesUsed/Logo.png" />
                <br />
                <br />
                <br />
                <asp:Image ID="Image2" runat="server" Height="71px" 
                    ImageUrl="~/ImagesUsed/AccTrans.png" Width="544px" />
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
