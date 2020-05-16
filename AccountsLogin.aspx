<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="AccountsLogin.aspx.cs" Inherits="VirtualCampus.ApplyScholarship" %>
<asp:Content ID="Content1" ContentPlaceHolderID="titlePlaceHolder" runat="server">
Accounts Department Login
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style14
        {
            height: 244px;
        }
        .style15
        {
            width: 472px;
            text-align: right;
        }
        .style17
        {
            width: 341px;
        }
        .style18
        {
            width: 277px;
            text-align: left;
        }
        .style21
        {
            color: #FF0000;
            font-size: large;
        }
        .style22
        {
            width: 472px;
            text-align: right;
            height: 28px;
        }
        .style23
        {
            width: 277px;
            text-align: left;
            height: 28px;
        }
        .style24
        {
            width: 341px;
            height: 28px;
        }
        .style26
        {
            width: 277px;
            text-align: center;
        }
        .style27
        {
            color: #0000FF;
        }
    .style28
    {
        text-align: center;
    }
        .style31
        {
            height: 96px;
            width: 1139px;
        }
        .style32
        {
            height: 96px;
            width: 1136px;
        }
        .style33
        {
            height: 96px;
            width: 1000px;
        }
        .style34
        {
            font-family: Cambria;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="style31">
        <tr>
            <td>
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
    <table class="style33">
        <tr>
            <td class="style28">
                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong>&nbsp;<asp:Image ID="Image5" 
                    runat="server" ImageUrl="~/ImagesUsed/AccLog.png" />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <div class="style14">
                    <table class="style32">
                        <tr>
                            <td class="style15">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label2" runat="server" Text="Username :"></asp:Label>
                            </td>
                            <td class="style18">
                                <strong>
                                <asp:TextBox ID="txtUsername" runat="server" Width="246px" Height="22px" 
                                    placeholder="Enter Accounts ID" CssClass="style34"></asp:TextBox>
                                </strong>
                            </td>
                            <td class="style17">
                                <strong>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ErrorMessage="Please Provide Username!" CssClass="style21" 
                                    ControlToValidate="txtUsername">*</asp:RequiredFieldValidator>
                                </strong>
                            </td>
                        </tr>
                        <tr>
                            <td class="style15">
                                <asp:Label ID="Label3" runat="server" Text="Password :"></asp:Label>
                            </td>
                            <td class="style18">
                                <asp:TextBox ID="txtPassword" runat="server" Width="246px" Height="22px" placeholder="Enter Accounts Password" 
                                    TextMode="Password"></asp:TextBox>
                            </td>
                            <td class="style17">
                                <strong>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ErrorMessage="Please Provide Password!" CssClass="style21" 
                                    ControlToValidate="txtPassword">*</asp:RequiredFieldValidator>
                                </strong>
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                </td>
                            <td class="style23">
                                <asp:Button ID="cmdLogin" runat="server" Text="Login Securely" 
                                    onclick="cmdLogin_Click" />
                                <asp:Button ID="cmdClear" runat="server" Text="Clear" 
                                    onclick="cmdClear_Click" Width="67px" />
                                <asp:Button ID="cmdExit" runat="server" Text="Exit" onclick="cmdExit_Click" 
                                    Width="76px" CausesValidation="False" />
                            </td>
                            <td class="style24">
                                </td>
                        </tr>
                        <tr>
                            <td class="style15">
                                &nbsp;</td>
                            <td class="style26">
                                <asp:Label ID="lblWhatHappened" runat="server"></asp:Label>
                            </td>
                            <td class="style17">
                                &nbsp;</td>
                        </tr>
                    </table>
                    <table class="style32">
                        <tr>
                            <td class="style28">
                                <strong>
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                                    CssClass="style27" ShowMessageBox="True" />
                                </strong>
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>
