<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Anti-HarrasmentCell.aspx.cs" Inherits="VirtualCampus.Anti_HarrasmentCell" %>
<asp:Content ID="Content1" ContentPlaceHolderID="titleplaceholder" runat="server">
Anti-Harrassment Cell
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style7
        {
            width: 100%;
        }
        .style8
        {
            text-align: center;
        }
        .style10
        {
            color: #0000CC;
        }
        .style11
        {
            width: 100%;
        }
        .style14
        {
            width: 294px;
            height: 39px;
            position: absolute;
            top: 355px;
            left: 610px;
            z-index: 1;
            text-align: center;
            font-size: x-large;
            color: #3366FF;
        }
        .style15
        {
            width: 1137px;
            height: 340px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="style15">
        <tr>
            <td class="style8">
                <strong>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/ImagesUsed/Logo.png" />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Anti-Harrassment Cell " 
                    CssClass="style10"></asp:Label>
                <br />
                </strong>
                <table class="style11">
                    <tr>
                        <td>
                            <strong>
                            <asp:Label ID="Label2" runat="server" CssClass="style12" 
                                Text="Bangalore University New Cell" style="color: #666666"></asp:Label>
                            </strong>
                        </td>
                    </tr>
                </table>
                <table class="style11">
                    <tr>
                        <td class="style8">
                            The University in Accepting The Regilations Of UGC In Higher Educational 
                            Institutions Curbing The Menace Of Ragging, In Order To 
                            Prohibit,Prevent,Eliminate The Scourge Of Ragging.<br />
                            <br />
                            The University is Pleased To Anounce The Establishment Of TOLL-FREE ANTI RAGGING 
                            HELPLINE NUMBER from UGC New Delhi.<br />
                            <br />
                            <div class="style14" 
                                style="border: medium ridge #006699; background-color: #FFFF00;">
                                <strong>1800-180-5522</strong></div>
                            <br />
                            <br />
                            <br />
                            <br />
                            For Cantact <strong>M/s Syrex </strong>InfoServices Private Limited . <strong>
                            J-1, Udyog Nagar, Near DD Motors, Rohtak Road, Peera Gharhi, New Delhi-110041.<br />
                            <br />
                            Website : </strong><a href="http://www.antiragging.in">www.antiragging.in</a>
                            <br />
                            And Also Contact The Monitoring The Agency For The Anti Ragging Helpline<strong> 
                            Aman Sathya Kachroo Trust, 639, Sector-23, Gurgoan, Haryana-122017.<br />
                            E-Mail :</strong> <a href="mailto:infor@amanmovement.org">infor@amanmovement.org</a>
                            <br />
                            M<strong>obile : 09871170303/09818400116 </strong>(only in case of emergency)<strong>.&nbsp;
                            </strong>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </asp:Content>
