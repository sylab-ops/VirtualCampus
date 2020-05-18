<%@ Page Title="" Language="C#" MasterPageFile="~/Interface.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="VirtualCampus.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="InterfacetitlePlaceHolder" runat="server">
Change Student Password
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server"> 
    <style type="text/css">
        .style15
        {
            width: 361px;
            font-size: medium;
            color: #000000;
        }
        .style28
        {
            width: 617px;
            text-align: center;
            background-color: rgb(240,254,254);
        }
        .style29
        {
            width: 374px;
            text-align: justify;
            background-color: rgb(240,254,254);
        }
        .style30
        {
            width: 246px;
            text-align: right;
            background-color: rgb(240,254,254);
        }
        .style32
        {
            width: 157px;
            text-align: right;
            background-color: rgb(240,254,254);
        }
        .style36
        {
            font-weight: bold;
        }
        .style37
        {
            width: 170px;
            background-color: rgb(240,254,254);
        }
        .style38
        {
            width: 1125px;
            text-align: center;
            background-color: rgb(240,254,254);
        }
        .style39
        {
            width: 246px;
            text-align: right;
            height: 22px;
            background-color: rgb(240,254,254);
        }
        .style40
        {
            width: 374px;
            text-align: justify;
            height: 22px;
            background-color: rgb(240,254,254);
        }
        .style41
        {
            width: 157px;
            text-align: right;
            height: 22px;
        }
        .style42
        {
            width: 170px;
            height: 22px;
        }
        .style43
        {
            height: 22px;
            width: 67px;
        }
        .style44
        {
            text-align: center;
            color: #FF66FF;
            background-color: rgb(240,254,254);
        }
        .style45
        {
            text-align: center;
            background-color: rgb(240,254,254);
        }
        .style49
        {
            text-align: center;
            background-color: rgb(240,254,254);
        }
        .style51
        {
            background-color: #FFFF99;
        }
        .style52
        {
            background-color: rgb(240,254,254);
            margin-bottom: 0px;
        }
        .style53
        {
            width: 100%;
            background-color: rgb(240,254,254);
        }
        .style54
        {
            background-color: rgb(240,254,254);
            width: 67px;
        }
    .style55
    {
        color: #FF0000;
    }
    .style57
    {
        background-color: rgb(240,254,254);
        color: #0000FF;
        text-decoration: underline;
    }
        .style58
        {
            color: #009900;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="style53">
    <tr>
        <td class="style44">
            <strong>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Change Student Password " 
                CssClass="style15"></asp:Label>
            <br />
            <br />
            </strong>
        </td>
    </tr>
</table>
    <table class="style9">
        <tr>
            <td class="style45">
                <strong>
                
                <asp:Label ID="Label3" runat="server" Text="Enter Student ID To Search :"></asp:Label>
                <asp:TextBox ID="txtSearch" runat="server" CssClass="style51" 
                    Width="190px" MaxLength="5" 
                    ValidationGroup="Search Database For The Students details using Their ID's" 
                    ViewStateMode="Enabled"></asp:TextBox>
                <asp:Button ID="cmdSearch" runat="server" 
                    Text="Search" onclick="cmdSearch_Click" CausesValidation="False" 
                    Width="143px" Height="26px" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    CssClass="style16" ErrorMessage="Please Enter Student id!" 
                    ControlToValidate="txtSearch" ForeColor="Red">Required Field!</asp:RequiredFieldValidator>
                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                    runat="server" ControlToValidate="txtSearch" CssClass="style55" 
                    Display="Dynamic" ErrorMessage="Please Enter Only Numbers!" 
                    SetFocusOnError="True" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
                <br />
                <asp:Label ID="lblinfo" runat="server" CssClass="style18" ForeColor="#006600" 
                    style="color: #FF0000"></asp:Label>
                </strong>
            </td>
        </tr>
    </table>
    <table class="style6">
        <tr>
            <td class="style28">
                <strong>
                <br />
                <asp:Label ID="Label14" runat="server" CssClass="style57" 
                    Text="Found Search Details Below"></asp:Label>
                </strong>
            </td>
            <td class="style49">
                <strong>
                <asp:Label ID="Label15" runat="server" CssClass="style57" 
                    Text="Change Password Section"></asp:Label>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="style28">
                &nbsp;</td>
            <td class="style49">
                &nbsp;</td>
        </tr>
    </table>
    <table>
        <tr>
            <td class="style30">
                <strong>
                <asp:Label ID="Label16" runat="server" Text="Student ID :"></asp:Label>
                </strong>
            </td>
            <td class="style29">
                <strong>
                <asp:TextBox ID="txtStuID" runat="server" CssClass="style36" Enabled="False"></asp:TextBox>
                </strong>
            </td>
            <td class="style32">
                <strong>
                <asp:Label ID="Label22" runat="server" Text="Current User :"></asp:Label>
                </strong>
            </td>
            <td class="style37">
                <strong>
                <asp:Label ID="lblCurrentUser" runat="server" ForeColor="Red"></asp:Label>
                </strong>
            </td>
            <td 
                class="style54">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style30">
                <strong>
                <asp:Label ID="Label17" runat="server" Text="Student Name :"></asp:Label>
                </strong>
            </td>
            <td class="style29">
                <strong>
                <asp:TextBox ID="txtStuName" runat="server" CssClass="style36" Enabled="False"></asp:TextBox>
                </strong>
            </td>
            <td class="style32">
                &nbsp;</td>
            <td class="style37">
                &nbsp;</td>
            <td 
                class="style54">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style30">
                <strong>
                <asp:Label ID="Label18" runat="server" Text="Student Class"></asp:Label>
                </strong>
            </td>
            <td class="style29">
                <strong>
                <asp:TextBox ID="txtStuClass" runat="server" CssClass="style36" Enabled="False"></asp:TextBox>
                </strong>
            </td>
            <td class="style32">
                <strong>
                <asp:Label ID="Label23" runat="server" Text="New Password :"></asp:Label>
                </strong>
            </td>
            <td class="style37">
                <asp:TextBox ID="txtNewPass" runat="server"></asp:TextBox>
            </td>
            <td 
                class="style54">
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtNewPass" ErrorMessage="Enter New Password !" 
                    ForeColor="Blue">*</asp:RequiredFieldValidator>
                </strong></td>
        </tr>
        <tr>
            <td class="style30">
                <strong>
                <asp:Label ID="Label19" runat="server" Text="Class Year :"></asp:Label>
                </strong>
            </td>
            <td class="style29">
                <strong>
                <asp:TextBox ID="txtYear" runat="server" CssClass="style36" Enabled="False"></asp:TextBox>
                </strong>
            </td>
            <td class="style32">
                <strong>
                <asp:Label ID="Label24" runat="server" Text="retype Password :"></asp:Label>
                </strong>
            </td>
            <td class="style37">
                <asp:TextBox ID="txtRePass" runat="server"></asp:TextBox>
            </td>
            <td 
                class="style54">
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtRePass" ErrorMessage="Enter retype Password!" 
                    ForeColor="#3333FF">*</asp:RequiredFieldValidator>
                </strong></td>
        </tr>
        <tr>
            <td class="style30">
                <strong>
                <asp:Label ID="Label20" runat="server" Text="Class Section :"></asp:Label>
                </strong>
            </td>
            <td class="style29">
                <strong>
                <asp:TextBox ID="txtSection" runat="server" CssClass="style36" Enabled="False"></asp:TextBox>
                </strong>
            </td>
            <td class="style32">
                &nbsp;</td>
            <td class="style37">
                <strong>
                <asp:Button ID="cmdChangePwd" runat="server" CssClass="style36" 
                    Text="Change Password" onclick="cmdChangePwd_Click" />
                </strong></td>
            <td 
                class="style54">
                <strong>
                <asp:Button ID="cmdReset" runat="server" CssClass="style36" Text="Reset" 
                    onclick="cmdReset_Click" />
                </strong></td>
        </tr>
        <tr>
            <td class="style39">
                <strong>
                <asp:Label ID="Label21" runat="server" Text="Old Password :"></asp:Label>
                </strong>
            </td>
            <td class="style40">
                <strong>
                <asp:TextBox ID="txtOldPwd" runat="server" CssClass="style36" Enabled="False"></asp:TextBox>
                </strong>
            </td>
            <td class="style41">
                </td>
            <td class="style42">
                <strong>
                <asp:Label ID="lblPassChanged" runat="server" ForeColor="#009900" 
                    CssClass="style58"></asp:Label>
                </strong>
            </td>
            <td class="style43">
                </td>
        </tr>
    </table>
       <table>
        <tr>
            <td class="style38">
                <strong>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" 
                    CssClass="style52" Height="36px" />
                </strong>
            </td>
        </tr>
    </table>
</asp:Content>
