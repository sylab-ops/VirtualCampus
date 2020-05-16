<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="VirtualCampus.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="titleplaceholder" runat="server">
Admin Login Portal
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style9
        {
            height: 334px;
            background-color:  rgb(240,254,254);
        }
        .style20
        {
            text-align: center;
        }
        .style33
        {
            width: 100%;
            height: 99px;
        }
        .style34
        {
            width: 369px;
            height: 96px;
        }
        .style35
        {
            width: 100%;
        }
        .style36
        {
            width: 429px;
        }
        .style37
        {
            width: 232px;
        }
        .style38
        {
            width: 247px;
            text-align: left;
        }
        .style39
        {
            width: 247px;
            height: 42px;
            text-align: left;
        }
        .style41
        {
            width: 232px;
            height: 42px;
        }
        .style42
        {
            text-align: right;
            width: 227px;
        }
        .style43
        {
            width: 470px;
        }
        .style44
        {
            width: 227px;
        }
        .style45
        {
            width: 227px;
            height: 42px;
        }
        .style47
        {
            width: 227px;
            text-align: left;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div id="AdminLogin" class="style9">
 
     <br />
        <table class="style33">
            <tr>
                <td class="style20">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img alt="adminLogin" class="style34" src="ImagesUsed/admin_login.gif" /><table 
                        class="style35">
                        <tr>
                            <td class="style36">
                                &nbsp;</td>
                            <td style="border-color: #0000FF;" class="style43">
                <table>
                    <tr>
                        <td class="style38">
                            &nbsp;</td>
                        <td class="style44">
                            &nbsp;</td>
                        <td class="style37">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style38">
                            <strong>
                            <asp:Label ID="Label1" runat="server" Text="Enter Admin ID :" 
                                CssClass="style29"></asp:Label>
                            </strong>
                        </td>
                        <td class="style47">
                            <asp:TextBox ID="txtUsername" runat="server" 
                                placeholder=" Enter Your Username!!!" Width="210px" CssClass="style18" 
                             ToolTip="Username Of The Sign In!" BorderStyle="Ridge" Height="24px"></asp:TextBox>
                        </td>
                        <td class="style37">
                            <strong>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtUsername" ErrorMessage="Please Enter Valid admin ID!" 
                                ForeColor="Red">Required Field!</asp:RequiredFieldValidator>
                            <br />
                            </strong></td>
                    </tr>
                    <tr>
                        <td class="style38">
                            <strong>
                            <asp:Label ID="Label2" runat="server" Text="Enter Password :" 
                                CssClass="style29"></asp:Label>
                            </strong>
                        </td>
                        <td class="style47">
                            <asp:TextBox ID="txtPassword" runat="server" 
                                placeholder=" Enter Your Password!!!" Width="210px" CssClass="style18" 
                                TextMode="Password" ToolTip="Password Of The Sign In!" BorderStyle="Ridge" 
                                Height="24px"></asp:TextBox>
                        </td>
                        <td class="style37">
                            <strong>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtPassword" ErrorMessage="Please Enter Valid Password!" 
                                ForeColor="Red">Required Field!</asp:RequiredFieldValidator>
                            </strong></td>
                    </tr>
                    <tr>
                        <td class="style38">
                            &nbsp;</td>
                        <td class="style42">
                            <br />
                            <asp:Button ID="cmdLogin" runat="server" onclick="cmdLogin_Click" 
                                Text="Sign In" Width="95px" BorderStyle="Groove" />
                        </td>
                        <td class="style37">
                            &nbsp;</td>
                    </tr>
                    <tr style="position: relative">
                        <td class="style38">
                            &nbsp;</td>
                        <td class="style44">
                            <strong><em>
                            <asp:Label ID="Label3" runat="server" CssClass="style24" 
                                Text="Both Fields Are Mondatory!!!" style="color: #006699"></asp:Label>
                            </em></strong>
                        </td>
                        <td class="style37">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style39">
                            </td>
                        <td class="style45">
                            <asp:Literal ID="literromsg" runat="server"></asp:Literal>
                        </td>
                        <td class="style41">
                            </td>
                    </tr>
                </table>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                    <table class="style35">
                        <tr>
                            <td>
                                <strong>
                    <asp:ValidationSummary ID="ValidationSummary2" runat="server" 
                        CssClass="style21" 
                        HeaderText="The List Of All The Errors Occured During The Service request : " 
                        ShowMessageBox="True" style="color: #0000FF" />
                                </strong>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
     <br />
    
</div>

                          
    </asp:Content>
