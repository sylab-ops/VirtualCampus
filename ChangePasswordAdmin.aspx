<%@ Page Title="" Language="C#" MasterPageFile="~/Interface.Master" AutoEventWireup="true" CodeBehind="ChangePasswordAdmin.aspx.cs" Inherits="VirtualCampus.ChangePasswordAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="InterfacetitlePlaceHolder" runat="server">
Administrator Password Change
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
    .style15
    {
            text-align: right;
            width: 446px;
            background-color: rgb(240,254,254);
        }
    .style16
    {
        text-align: left;
    }
    .style17
    {
            text-align: left;
            width: 102px;
            background-color: rgb(240,254,254);
        }
    .style18
    {
        text-align: right;
        font-weight: bold;
            margin-left: 0px;
        }
    .style19
    {
        text-align: right;
        width: 620px;
    }
    .style20
    {
        width: 100%;
        height: 59px;
    }
    .style22
    {
        background-color: rgb(240,254,254);
    }
        .style24
        {
            text-align: left;
            color: #FF0000;
            font-weight: bold;
        }
        .style25
        {
            text-align: center;
            width: 102px;
        }
        .style26
        {
            color: #FF0000;
        }
        .style27
        {
            width: 100%;
            background-color: rgb(240,254,254);
        }
        .style28
        {
            text-align: left;
            background-color: rgb(240,254,254);
        }
        .style29
        {
            text-align: center;
            width: 102px;
            background-color: rgb(240,254,254);
        }
        .style30
        {
            text-align: right;
            width: 446px;
            background-color: rgb(240,254,254);
            height: 21px;
        }
        .style31
        {
            text-align: left;
            width: 102px;
            background-color: rgb(240,254,254);
            height: 21px;
        }
        .style32
        {
            text-align: left;
            background-color: rgb(240,254,254);
            height: 21px;
        }
        .style33
        {
            background-color: rgb(240,254,254);
        }
        .style34
        {
            width: 100%;
            background-color: rgb(240,254,254);
            height: 76px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="style6">
    <tr>
        <td class="style12">
            <hr />
        </td>
    </tr>
</table>
<table class="style6">
    <tr>
        <td>
            &nbsp;</td>
        <td style="background-color: rgb(240,254,254)" 
            title="Change The Cuurrent Admin Password">
            <div class="style12">
                <table class="style27">
                    <tr>
                        <td class="style8">
                            <strong>
                            <br />
                            Change Current Administrator Password :<br />
                            <br />
                            <br />
                            </strong>
                        </td>
                    </tr>
                </table>
                <table class="style34">
                    <tr>
                        <td class="style15">
                            <br class="style33" />
                            <strong>
                            <asp:Label ID="Label15" runat="server" CssClass="style24" 
                                Text="Current Admin :"></asp:Label>
                            </strong>
                        </td>
                        <td class="style29">
                            <strong>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblCurrentAdmin" runat="server" CssClass="style26"></asp:Label>
                            </strong>
                        </td>
                        <td class="style28">
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="style30">
                            <strong>
                            <asp:Label ID="Label16" runat="server" Text="Old Password :"></asp:Label>
                            </strong>
                        </td>
                        <td class="style31">
                            <strong>
                            <asp:TextBox ID="txtoldPwd" runat="server" CssClass="style24" Width="261px"></asp:TextBox>
                            </strong>
                        </td>
                        <td class="style32">
                            <strong>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="txtoldPwd" ErrorMessage="Enter Old Password!" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                            </strong>
                        </td>
                    </tr>
                    <tr>
                        <td class="style15">
                            <strong>
                            <asp:Label ID="Label17" runat="server" Text="New Password :"></asp:Label>
                            </strong>
                        </td>
                        <td class="style17">
                            <strong>
                            <asp:TextBox ID="txtNewPwd" runat="server" CssClass="style25" 
                                TextMode="Password" Width="261px"></asp:TextBox>
                            </strong>
                        </td>
                        <td class="style28">
                            <strong>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="txtNewPwd" ErrorMessage="Enter New Password!" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                            </strong>
                        </td>
                    </tr>
                    <tr>
                        <td class="style15">
                            <strong>
                            <asp:Label ID="Label18" runat="server" Text="Re-type Password :"></asp:Label>
                            </strong>
                        </td>
                        <td class="style17">
                            <strong>
                            <asp:TextBox ID="txtRnPwd" runat="server" CssClass="style25" 
                                TextMode="Password" Width="261px"></asp:TextBox>
                            </strong>
                        </td>
                        <td class="style28">
                            <strong>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                ControlToValidate="txtRnPwd" ErrorMessage="re-type New Password!" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                            </strong>
                        </td>
                    </tr>
                </table>
                <table class="style6">
                    <tr>
                        <td class="style19">
                            <strong>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="cmdChangePwd" runat="server" CssClass="style18" 
                                onclick="cmdChangePwd_Click" Text="Change Password" Width="173px" />
                            </strong>
                        </td>
                        <td class="style16">
                            &nbsp;&nbsp;<asp:Button ID="cmdReset" runat="server" CausesValidation="False" 
                                CssClass="style22" onclick="cmdReset_Click" style="font-weight: bold" 
                                Text="Reset" Width="83px" BackColor="#CCCCCC" />
                        </td>
                    </tr>
                </table>
                <table class="style6">
                    <tr>
                        <td class="style8">
                            <strong>
                            <asp:Label ID="lblPassChanged" runat="server"></asp:Label>
                            </strong>
                        </td>
                    </tr>
                </table>
                <table class="style20">
                    <tr>
                        <td class="style8">
                            <strong>
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                                ForeColor="#0000CC" ShowMessageBox="True" />
                            </strong>
                        </td>
                    </tr>
                </table>
            </div>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
