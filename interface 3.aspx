<%@ Page Title="" Language="C#" MasterPageFile="~/Interface.Master" AutoEventWireup="true" CodeBehind="interface.aspx.cs" Inherits="VirtualCampus._interface" %>
<asp:Content ID="Content1" ContentPlaceHolderID="InterfacetitlePlaceHolder" runat="server">
Welcome To Virtual Campus Administrator Portal
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <script src="JavaScripts/AnalogClock.js" type="text/javascript"></script>
    
     
    
    <style type="text/css">
        .style15
        {
            height: 67px;
            font-size: large;
            background-color: #F0FFFF;
        }
        .style16
        {
            color: #990000;
        }
        .style17
        {
            width: 317px;
            height: 124px;
            position: absolute;
            top: 438px;
            left: 996px;
            z-index: 1;
            background-color: #99CCFF;
        }
        .style18
        {
            text-decoration: underline;
            font-size: medium;
        }
        .style19
        {
            color: #0066CC;
        }
        .style20
        {
            color: #FF6699;
        }
        .style21
        {
            width: 100%;
            height: 69px;
        }
        .style22
        {
            width: 100%;
            height: 133px;
        }
        .style24
        {
            color: #FFFF00;
        }
        .style25
        {
            font-size: 13px;
        }
    </style>
    
     
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="style6">
    <tr>
        <td class="style12">
            <strong>
            <em>
            <br />
            <asp:Label ID="Label2" runat="server" 
                Text="Welcome To Virtual Campus Admin Portal" CssClass="style15"></asp:Label>
            <br />
            </em>
            </strong>
        </td>
    </tr>
</table>
    <table class="style6">
        <tr>
            <td class="style12">
                <strong>
                <asp:Label ID="lblNotifications" runat="server" CssClass="style16"></asp:Label>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="style12">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/ImagesUsed/Logo.png" />
            </td>
        </tr>
    </table>
    <table class="style6">
        <tr>
            <td class="style12">
                <strong>
                <asp:Label ID="Label3" runat="server" Text="Under Bangalore University"></asp:Label>
&nbsp;</strong></td>
        </tr>
    </table>
    <table class="style21">
        <tr>
            <td class="style12">
                <div class="style17" style="border: medium ridge #0099FF">
                    <span class="style18"><strong><em>For Queries Or Troubles</em></strong></span><br />
                    <br />
                    <span class="style19"><strong>Developer</strong></span> <span class="style19">
                    <strong>Name</strong></span>: <span class="style24"><strong>Sylvester</strong></span>
                    <span class="style20"><strong>A<br />
                    </strong></span>
                    <br />
                    <span class="style19"><strong>Call</strong></span> : <strong>+91-7022165830</strong><br />
                    or<br />
                    <span class="style19">E-<strong>Mail</strong></span> :
                    <a href="mailto:mrabblessedslys4christ099@gmail.com">mrabblessedslys4christ099@gmail.com</a><br />
                </div>
                <div class="style12">
                    <strong>
                    <br />
                    <br />
                    College Address :</strong><br />
                    <span class="style25">IZee College Of Management &amp; Information Science<br />
                    #39, Benaka Towers, Electronic Phase II<br />
                    Hosur Road, Bangalore - 560100<br />
                    LandMark-Near Kripa Telecom,Opp - D-Mart</span></div>
            </td>
        </tr>
    </table>
    <table class="style22">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
