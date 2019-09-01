<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Placements.aspx.cs" Inherits="VirtualCampus.Pacements" %>
<asp:Content ID="Content1" ContentPlaceHolderID="titleplaceholder" runat="server">
Our Placements Edge
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
            text-align: center;
            background-color: #808080;
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
                ImageUrl="~/ImagesUsed/PlacementsHeader.png" />
        </td>
    </tr>
</table>
    <table class="style8">
        <tr>
            <td class="style9">
                <strong>
                <asp:Label ID="Label1" runat="server" 
                    Text="IZee College Of Management And Information Science Is Backed By India's Leading Recriutement Company"></asp:Label>
                </strong>
            </td>
        </tr>
    </table>
    <table class="style8">
        <tr>
            <td class="style10">
                <asp:Image ID="Image2" runat="server" 
                    ImageUrl="~/ImagesUsed/Manpower ogofinal.png" />
            </td>
        </tr>
    </table>
    <table class="style8">
        <tr>
            <td class="style9">
                <strong>
                <br />
                Employement opportunities In The Areas Of</strong><br />
                <br />
                1.Human resource<br />
                2. Marketing&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                3. Finance&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                4. Systems&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <strong>Employement opportunities In Various Sectors Like<br />
                </strong>1.Banking&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                2.insurance&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                3.information Technology&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4.Tourism &amp; Aviation<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                5. Public / Private Sector&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
