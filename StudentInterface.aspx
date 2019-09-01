<%@ Page Title="" Language="C#" MasterPageFile="~/StudentInterface.Master" AutoEventWireup="true" CodeBehind="StudentInterface.aspx.cs" Inherits="VirtualCampus.StudentInterface1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="titleholder" runat="server">
Welcome to Virtual Campus Student Portal
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="style6">
        <tr>
            <td class="style12">
                <br />
                <br />
                <asp:Image ID="Image2" runat="server" ImageUrl="~/ImagesUsed/WelcomeStu.png" />
                <br />
                <br />
                <br />
                <asp:Image ID="Image3" runat="server" ImageUrl="~/ImagesUsed/Logo.png" 
                    Width="90px" />
                <br />
                <br />
                <br />
                <br />
                <asp:Image ID="Image4" runat="server" ImageUrl="~/ImagesUsed/StuAccess.png" />
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
