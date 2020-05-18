<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="StudentLogin.aspx.cs" Inherits="VirtualCampus.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="titleplaceholder" runat="server">
Student Secure login
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style6
        {
            width: 100%;
        }
        .style14
        {
            width: 100%;
        }
        .style19
        {
            width: 2px;
            background-color:  rgb(240,254,254);
        }
        .style21
        {
            width: 100%;
            height: 121px;
            background-color: rgb(240,254,254);
        }
        .style32
        {
            width: 100%;
            height: 35px;
        }
        .style34
        {
            width: 646px;
            height: 86px;
            position: absolute;
            top: 460px;
            left: 491px;
            z-index: 1;
        color: #FF9900;
    }
        .style35
        {
            text-align: center;
            background-color:  rgb(240,254,254);
        }
        .style36
        {
            background-color:  rgb(240,254,254);
        }
        .style41
        {
            text-align: center;
            background-color: rgb(240,254,254);
            font-family: Walter;
            color: #0000FF;
            font-size: 13px;
        }
        .style50
    {
        width: 394px;
    }
    .style53
    {
        width: 390px;
    }
    .style54
    {
        text-align: right;
        left: 47px;
        top: 104px;
    }
    .style55
    {
        text-align: left;
        left: 108px;
        top: 114px;
        width: 390px;
    }
    .style56
    {
        color: #FF0000;
    }
        .style57
        {
            height: 356px;
        }
        .style59
        {
            width: 390px;
            text-align: center;
            height: 16px;
        }
        .style60
        {
        width: 390px;
        text-align: right;
    }
    .style61
    {
        color: #666666;
    }
    .style62
    {
        width: 199px;
    }
        .style63
        {
            height: 16px;
        }
        .style64
        {
            width: 199px;
            height: 16px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div id="StudentLogin" class="style57">
    <table class="style14">
        <tr>
            <td class="style36">
                <table class="style32">
                    <tr>
                        <td class="style41" style="border-style: none">
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/ImagesUsed/Stulog.png" />
                            <br />
                        </td>
                    </tr>
                </table>
                <table class="style14">
                    <tr>
                        <td class="style50">
                            &nbsp;</td>
                        <td>
<table class="style29">
                    <tr>
                        <td class="style63">
                            </td>
                        <td class="style59">
                            <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                            </strong></td>
                        <td class="style64">
                            </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style60">
                            <strong>
                            <asp:Label ID="Label4" runat="server" Text="Enter Student_id :" 
                                CssClass="style61"></asp:Label>
                            </strong>
                            <asp:TextBox ID="txtStudent_id" runat="server" placeholder="Enter Student id" 
                                CssClass="style46" Width="267px" Height="24px"></asp:TextBox>
                        </td>
                        <td class="style62">
                            <strong>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="txtStudent_id" CssClass="style56" 
                                ErrorMessage="Student_id Cannot Be Empty!">Required Field!</asp:RequiredFieldValidator>
                            </strong></td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style60">
                            <strong>
                            <asp:Label ID="Label1" runat="server" Text="Enter Username :" 
                                CssClass="style61"></asp:Label>
                            </strong>
                            <asp:TextBox ID="txtStuUsername" runat="server" 
                                placeholder=" Enter Your Username!!!" Width="267px" CssClass="style46" 
                             ToolTip="Username Of The Sign In!" Height="24px"></asp:TextBox>
                        </td>
                        <td class="style62">
                            <strong>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtStuUsername" ErrorMessage="Please Enter Valid User ID!" 
                                ForeColor="Red">Required Field!</asp:RequiredFieldValidator>
                            </strong></td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style60">
                            <strong>
                            <asp:Label ID="Label2" runat="server" Text="Enter Password :" 
                                CssClass="style61"></asp:Label>
                            </strong>
                            <asp:TextBox ID="txtStuPassword" runat="server" 
                                placeholder=" Enter Your Password!!!" Width="267px" CssClass="style46" 
                                TextMode="Password" ToolTip="Password Of The Sign In!" Height="24px"></asp:TextBox>
                        </td>
                        <td class="style62">
                            <strong>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtStuPassword" ErrorMessage="Please Enter Valid Password!" 
                                ForeColor="Red">Required Field!</asp:RequiredFieldValidator>
                            </strong></td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style53">
                            &nbsp;</td>
                        <td class="style62">
                            &nbsp;</td>
                    </tr>
                    <tr style="position: relative">
                        <td class="style54">
                            &nbsp;</td>
                        <td class="style55">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                            <asp:Button ID="cmdLogin" runat="server" 
                                Text="Login Securely" Width="116px" onclick="cmdLogin_Click" />
                            <asp:Button ID="cmdReset" runat="server" Text="Reset" Width="89px" 
                                CausesValidation="False" onclick="cmdReset_Click" />
                        </td>
                        <td class="style62">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style53">
                            <strong>
                            <asp:Label ID="lblLoginFailured" runat="server" CssClass="style38" 
                                style="color: #006699"></asp:Label>
                            </strong>
                        </td>
                        <td class="style62">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style53">
                            <strong>
                            <asp:Label ID="lblLoginFailured1" runat="server" CssClass="style39" 
                                style="color: #006699"></asp:Label>
                            </strong>
                        </td>
                        <td class="style62">
                            <em>
                            <asp:Label ID="Label3" runat="server" CssClass="style24" 
                                Text="All Fields Are Mondatory!!!" style="color: #FF0066"></asp:Label>
                            </em></td>
                    </tr>
                </table>
                            </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                <table class="style21">
                    <tr>
                        <td class="style35">
&nbsp;
<em>
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                                CssClass="style34" ForeColor="#0000CC" 
                                HeaderText="The List Of Errors That Caused Your Login To Be Unsuccessful :" 
                                ShowMessageBox="True" />
                            </em>
                        </td>
                        <td class="style19">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </div>
</asp:Content>
