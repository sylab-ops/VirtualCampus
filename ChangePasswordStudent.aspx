<%@ Page Title="" Language="C#" MasterPageFile="~/StudentInterface.Master" AutoEventWireup="true" CodeBehind="ChangePasswordStudent.aspx.cs" Inherits="VirtualCampus.ChangePasswordStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="titleholder" runat="server">
Change Your Password
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style16
    {
        color: #0066CC;
    }
        .style17
        {
            height: 299px;
        }
        .style19
        {
            height: 22px;
            text-align: left;
        }
        .style20
        {
            text-align: left;
            width: 253px;
        }
        .style21
        {
            height: 22px;
            text-align: left;
            width: 253px;
        }
        .style22
        {
            color: #FF0000;
        }
        .style23
        {
            text-align: right;
            width: 494px;
        }
        .style24
        {
            height: 22px;
            text-align: right;
            width: 494px;
        }
        .style25
        {
            text-align: center;
            width: 253px;
        }
        .style26
        {
            text-align: left;
        }
        .style27
        {
            color: #000000;
        }
        .style28
        {
            color: #0000FF;
        }
        .style29
        {
            width: 8px;
        }
        .style30
        {
            color: #FF0000;
            background-color: #FFFF99;
        }
        .style31
        {
            color: #000000;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="style6">
    <tr>
        <td class="style12">
            <strong>
            <br />
            </strong>
            <table class="style6">
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <table class="style6">
                <tr>
                    <td class="style29">
                        &nbsp;</td>
                    <td>
                        <div class="style17">
                            <br />
            <strong>
            <asp:Label ID="Label2" runat="server" CssClass="style31" 
                Text="Change Your Password"></asp:Label>
            </strong>
                            <br />
            <hr />
                            <br />
                            <br />
                            <br />
                            <table class="style6">
                                <tr>
                                    <td class="style12">
                            <table class="style6">
                                <tr>
                                    <td class="style23">
                                        <strong>
                                        <asp:Label ID="Label3" runat="server" Text="Current User ID :" 
                                            CssClass="style27"></asp:Label>
                                        </strong>
                                    </td>
                                    <td class="style20">
                                        <strong>
                                        <asp:Label ID="lblCurrentUserID" runat="server" CssClass="style22"></asp:Label>
                                        </strong>
                                    </td>
                                    <td class="style26">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style23">
                                        <strong>
                                        <asp:Label ID="Label5" runat="server" Text="Current Studentname :" 
                                            CssClass="style27"></asp:Label>
                                        </strong>
                                    </td>
                                    <td class="style20">
                                        <strong>
                                        <asp:Label ID="lblCurrentStudent" runat="server" CssClass="style22"></asp:Label>
                                        </strong>
                                    </td>
                                    <td class="style26">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style23">
                                        <strong>
                                        <asp:Label ID="Label10" runat="server" Text="Current Username :" 
                                            CssClass="style27"></asp:Label>
                                        </strong>
                                    </td>
                                    <td class="style20">
                                        <strong>
                                        <asp:Label ID="lblCurrentUser" runat="server" CssClass="style22"></asp:Label>
                                        </strong>
                                    </td>
                                    <td class="style26">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style23">
                                        <strong>
                                        <asp:Label ID="Label7" runat="server" Text="Enter Your Old Password :"></asp:Label>
                                        </strong>
                                    </td>
                                    <td class="style20">
                                        <asp:TextBox ID="txtoldpwd" runat="server" Width="245px" TextMode="Password"></asp:TextBox>
                                    </td>
                                    <td class="style26">
                                        <strong>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                            ControlToValidate="txtoldpwd" CssClass="style22" 
                                            ErrorMessage="Please Provide Valid Old Password!">Old Password Required!</asp:RequiredFieldValidator>
                                        </strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style24">
                                        <strong>
                                        <asp:Label ID="Label8" runat="server" Text="Enter Your New Password :"></asp:Label>
                                        </strong>
                                    </td>
                                    <td class="style21">
                                        <asp:TextBox ID="txtnewpwd" runat="server" Width="245px" TextMode="Password"></asp:TextBox>
                                    </td>
                                    <td class="style19">
                                        <strong>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                            ControlToValidate="txtnewpwd" CssClass="style22" 
                                            ErrorMessage="Please Provide Valid New Password!">New Password Required!</asp:RequiredFieldValidator>
                                        </strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style23">
                                        <strong>
                                        <asp:Label ID="Label9" runat="server" Text="Retype New Password:"></asp:Label>
                                        </strong>
                                    </td>
                                    <td class="style20">
                                        <asp:TextBox ID="txtrnewpwd" runat="server" Width="245px" TextMode="Password"></asp:TextBox>
                                    </td>
                                    <td class="style26">
                                        <strong>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                            ControlToValidate="txtrnewpwd" CssClass="style22" 
                                            ErrorMessage="Pleaes Provide Matching Re-type Password">Re-type New Password!</asp:RequiredFieldValidator>
                                        </strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style23">
                                        &nbsp;</td>
                                    <td class="style20">
                                        <asp:Button ID="cmdChange" runat="server" onclick="cmdChange_Click" 
                                            Text="Change Password" />
                                        <asp:Button ID="cmdClear" runat="server" CausesValidation="False" 
                                            Text="Clear" onclick="cmdClear_Click" />
                                        <asp:Button ID="cmdExit" runat="server" CausesValidation="False" Text="Exit" 
                                            onclick="cmdExit_Click" />
                                    </td>
                                    <td class="style26">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style23">
                                        &nbsp;</td>
                                    <td class="style25">
                                        <strong>
                                        <asp:Label ID="lblPassChanged" runat="server" CssClass="style30"></asp:Label>
                                        </strong>
                                    </td>
                                    <td class="style26">
                                        &nbsp;</td>
                                </tr>
                            </table>
                                        <strong>
                                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                                            CssClass="style28" ShowMessageBox="True" />
                                        </strong>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>
