<%@ Page Title="" Language="C#" MasterPageFile="~/StudentInterface.Master" AutoEventWireup="true" CodeBehind="TimeTable.aspx.cs" Inherits="VirtualCampus.TimeTable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="titleholder" runat="server">
Current Time Table
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style18
        {
            width: 185px;
            text-align: center;
        }
        .style20
        {
            width: 183px;
        }
        .style21
        {
            width: 131px;
        }
        .style22
        {
            width: 196px;
        }
        .style23
        {
            width: 177px;
        }
        .style24
        {
            width: 100%;
            height: 252px;
        }
        .style25
        {
            color: #FF0000;
        }
        .style26
        {
            color: #006600;
        }
        .style27
        {
            color: #FF0000;
            background-color: #FFFF66;
        }
        .style28
        {
            color: #6600CC;
            background-color: #FFFF00;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="style6">
        <tr>
            <td class="style12">
                <strong>
                <asp:Label ID="Label2" runat="server" Text="Time Table"></asp:Label>
                <br />
                </strong>
                <hr />
            </td>
        </tr>
    </table>
    <table class="style6">
        <tr>
            <td class="style12" style="border: thick solid #800000">
                <table class="style24">
                    <tr>
                        <td class="style18" 
                            style="border-right-style: solid; border-bottom-style: solid">
                            <strong>
                            <asp:Label ID="Label4" runat="server" CssClass="style26" Text="Day"></asp:Label>
                            </strong>
                        </td>
                        <td class="style20" 
                            style="border-bottom-style: ridge; border-right-style: solid">
                            <strong>
                            <asp:Label ID="Label11" runat="server" CssClass="style26" Text="09:30-10:30"></asp:Label>
                            </strong>
                        </td>
                        <td class="style22" 
                            style="border-bottom-style: solid; border-right-style: solid">
                            <strong>
                            <asp:Label ID="Label18" runat="server" CssClass="style26" Text="10:30-11:30"></asp:Label>
                            </strong>
                        </td>
                        <td class="style21" 
                            style="border-right-style: solid; border-bottom-style: solid">
                            <strong>
                            <asp:Label ID="Label25" runat="server" CssClass="style26" Text="11:30-12:30"></asp:Label>
                            </strong>
                        </td>
                        <td class="style23" 
                            style="border-right-style: solid; border-bottom-style: solid">
                            <strong>
                            <asp:Label ID="Label32" runat="server" CssClass="style26" Text="12:30-01:30"></asp:Label>
                            </strong>
                        </td>
                        <td style="border-right-style: solid; border-bottom-style: solid">
                            <strong>
                            <asp:Label ID="Label3" runat="server" CssClass="style26" Text="01:30-02-30"></asp:Label>
                            </strong>
                        </td>
                    </tr>
                    <tr>
                        <td class="style18" 
                            style="border-right-style: solid; border-bottom-style: solid">
                            <asp:Label ID="Label5" runat="server" CssClass="style25" Text="Monday"></asp:Label>
                        </td>
                        <td class="style20" 
                            style="border-bottom-style: ridge; border-right-style: solid">
                            <asp:Label ID="Label12" runat="server" Text="Systems Programming"></asp:Label>
                        </td>
                        <td class="style22" 
                            style="border-bottom-style: solid; border-right-style: solid">
                            Cryptography &amp; Network Security</td>
                        <td class="style21" 
                            style="border-right-style: solid; border-bottom-style: solid">
                            <strong>
                            <asp:Label ID="Label26" runat="server" CssClass="style27" Text="LUNCH"></asp:Label>
                            </strong>
                        </td>
                        <td class="style23" 
                            style="border-right-style: solid; border-bottom-style: solid">
                            Theory of Computations</td>
                        <td style="border-right-style: solid; border-bottom-style: solid">
                            <asp:Label ID="Sports" runat="server" Text="Sports"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style18" 
                            style="border-right-style: solid; border-bottom-style: solid">
                            <asp:Label ID="Label6" runat="server" CssClass="style25" Text="Tuesaday"></asp:Label>
                        </td>
                        <td class="style20" 
                            style="border-bottom-style: ridge; border-right-style: solid">
                            <asp:Label ID="Label13" runat="server" Text="Systems Programming"></asp:Label>
                        </td>
                        <td class="style22" 
                            style="border-bottom-style: solid; border-right-style: solid">
                            Cryptography &amp; Network Security</td>
                        <td class="style21" 
                            style="border-right-style: solid; border-bottom-style: solid">
                            <strong>
                            <asp:Label ID="Label27" runat="server" CssClass="style27" Text="LUNCH"></asp:Label>
                            </strong>
                        </td>
                        <td class="style23" 
                            style="border-right-style: solid; border-bottom-style: solid">
                            <asp:Label ID="Label34" runat="server" Text="Web Programming"></asp:Label>
                        </td>
                        <td style="border-right-style: solid; border-bottom-style: solid">
                            <asp:Label ID="Label40" runat="server" Text="Library"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style18" 
                            style="border-right-style: solid; border-bottom-style: solid">
                            <asp:Label ID="Label7" runat="server" CssClass="style25" Text="Wednesday"></asp:Label>
                        </td>
                        <td class="style20" 
                            style="border-bottom-style: ridge; border-right-style: solid">
                            <asp:Label ID="Label14" runat="server" Text="Systems Programming"></asp:Label>
                        </td>
                        <td class="style22" 
                            style="border-bottom-style: solid; border-right-style: solid">
                            Theory of Computations</td>
                        <td class="style21" 
                            style="border-right-style: solid; border-bottom-style: solid">
                            <strong>
                            <asp:Label ID="Label28" runat="server" CssClass="style27" Text="LUNCH"></asp:Label>
                            </strong>
                        </td>
                        <td class="style23" 
                            style="border-right-style: solid; border-bottom-style: solid">
                            Cryptography &amp; Network Security</td>
                        <td style="border-right-style: solid; border-bottom-style: solid">
                            <asp:Label ID="Label41" runat="server" Text="Web Programming"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style18" 
                            style="border-right-style: solid; border-bottom-style: solid">
                            <asp:Label ID="Label8" runat="server" CssClass="style25" Text="Thursday"></asp:Label>
                        </td>
                        <td class="style20" 
                            style="border-bottom-style: ridge; border-right-style: solid">
                            <asp:Label ID="Label15" runat="server" Text="Systems Programming"></asp:Label>
                        </td>
                        <td class="style22" 
                            style="border-bottom-style: solid; border-right-style: solid">
                            Theory of Computations</td>
                        <td class="style21" 
                            style="border-right-style: solid; border-bottom-style: solid">
                            <strong>
                            <asp:Label ID="Label29" runat="server" CssClass="style27" Text="LUNCH"></asp:Label>
                            </strong>
                        </td>
                        <td class="style23" 
                            style="border-right-style: solid; border-bottom-style: solid">
                            <asp:Label ID="Label36" runat="server" Text="Web Programming"></asp:Label>
                        </td>
                        <td style="border-right-style: solid; border-bottom-style: solid">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style18" 
                            style="border-right-style: solid; border-bottom-style: solid">
                            <asp:Label ID="Label9" runat="server" CssClass="style25" Text="Friday"></asp:Label>
                        </td>
                        <td class="style20" 
                            style="border-bottom-style: ridge; border-right-style: solid">
                            <asp:Label ID="Label16" runat="server" Text="Systems Programming"></asp:Label>
                        </td>
                        <td class="style22" 
                            style="border-bottom-style: solid; border-right-style: solid">
                            <asp:Label ID="Label23" runat="server" Text="Web Programming"></asp:Label>
                        </td>
                        <td class="style21" 
                            style="border-right-style: solid; border-bottom-style: solid">
                            <strong>
                            <asp:Label ID="Label30" runat="server" CssClass="style27" Text="LUNCH"></asp:Label>
                            </strong>
                        </td>
                        <td class="style23" 
                            style="border-right-style: solid; border-bottom-style: solid">
                            Theory of Computations</td>
                        <td style="border-right-style: solid; border-bottom-style: solid">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style18" 
                            style="border-right-style: solid; border-bottom-style: solid">
                            <asp:Label ID="Label10" runat="server" CssClass="style25" Text="Saturday"></asp:Label>
                        </td>
                        <td class="style20" 
                            style="border-bottom-style: ridge; border-right-style: solid">
                            Cryptography &amp; Network Security</td>
                        <td class="style22" 
                            style="border-bottom-style: solid; border-right-style: solid">
                            <asp:Label ID="Label24" runat="server" Text="Web Programming-LAB"></asp:Label>
                        </td>
                        <td class="style21" 
                            style="border-right-style: solid; border-bottom-style: solid">
                            <asp:Label ID="Label31" runat="server" Text="Web Programming-LAB"></asp:Label>
                        </td>
                        <td class="style23" 
                            style="border-right-style: solid; border-bottom-style: solid">
                            &nbsp;</td>
                        <td style="border-right-style: solid; border-bottom-style: solid">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <table class="style6">
        <tr>
            <td class="style12">
                <strong>
                <asp:Label ID="Label42" runat="server" CssClass="style28" 
                    Text="Note : Time Table Is Subject To Change Please Keep Updated Often On This Section."></asp:Label>
                </strong>
            </td>
        </tr>
    </table>
</asp:Content>
