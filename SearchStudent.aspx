<%@ Page Title="" Language="C#" MasterPageFile="~/Interface.Master" AutoEventWireup="true" CodeBehind="SearchStudent.aspx.cs" Inherits="VirtualCampus.SearchStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="InterfacetitlePlaceHolder" runat="server">
Search/Update/Delete Student
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style15
    {
        text-align: left;
        width: 222px;
    }
    .style16
    {
        background-color: #FFFFCC;
    }
    .style17
    {
        color: #FF0000;
    }
    .style18
    {
        text-align: right;
        width: 530px;
    }
    .style19
    {
        width: 126px;
    }
    .style20
    {
        color: #009999;
    }
    .style21
    {
        color: #009933;
    }
    .style22
    {
            width: 76px;
        }
    .style23
    {
        width: 152px;
    }
    .style24
    {
        width: 48px;
    }
    .style26
    {
        width: 52px;
    }
    .style27
    {
        width: 129px;
    }
    .style28
    {
        width: 44px;
    }
    .style29
    {
        width: 135px;
    }
        .style30
        {
            text-align: right;
        }
        .style31
        {
            width: 76px;
            height: 32px;
        }
        .style32
        {
            width: 152px;
            height: 32px;
        }
        .style33
        {
            width: 48px;
            height: 32px;
        }
        .style35
        {
            width: 52px;
            height: 32px;
        }
        .style36
        {
            width: 129px;
            height: 32px;
        }
        .style37
        {
            width: 44px;
            height: 32px;
        }
        .style38
        {
            width: 135px;
            height: 32px;
        }
        .style39
        {
            width: 134px;
            height: 32px;
        }
        .style40
        {
            width: 134px;
        }
        .style41
        {
            text-align: left;
            width: 161px;
        }
        .style42
        {
            font-size: medium;
            color: #000000;
        }
        .style43
        {
            color: #FF3300;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   
<table class="style6">
    <tr>
        <td>
            <hr title="See The Information Below" />
            <table class="style6">
                <tr>
                    <td class="style12">
                        <strong>
                        <br />
                        <asp:Label ID="Label35" runat="server" CssClass="style42" 
                            Text="Search/Edit/Update/Delete Student Personal Information"></asp:Label>
                        <br />
                        </strong>
                    </td>
                </tr>
            </table>
            <table class="style6">
                <tr>
                    <td class="style18">
                        <strong>
                        <asp:Label ID="Label2" runat="server" CssClass="style20" 
                            Text="Enter Student_id In The Search Engine Box :"></asp:Label>
                        </strong>
                    </td>
                    <td class="style15">
                        <asp:TextBox ID="txtSearchInput" runat="server" BorderStyle="Ridge" 
                            CssClass="style16" Width="208px"></asp:TextBox>
                    </td>
                    <td class="style19">
                        <asp:Button ID="cmdBeginSearch" runat="server" Text="Begin Search " 
                            onclick="Button1_Click" />
                    </td>
                    <td>
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtSearchInput" CssClass="style17" 
                            ErrorMessage="Search Input Required"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                    <td>
                        <strong>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="txtSearchInput" CssClass="style21" 
                            ErrorMessage="Enter Only Numbers" SetFocusOnError="True" 
                            ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
                        </strong>
                    </td>
                </tr>
            </table>
            <table class="style6">
                <tr>
                    <td class="style12">
                        <strong>
                        <asp:Label ID="lblNotify" runat="server" CssClass="style43"></asp:Label>
                        </strong>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<table class="style6">
    <tr>
        <td class="style31">
            <asp:Label ID="Label3" runat="server" Text="Firstname :"></asp:Label>
        </td>
        <td class="style32">
            <asp:TextBox ID="txtfname" runat="server" Enabled="False"></asp:TextBox>
        </td>
        <td class="style33">
            <asp:Label ID="Label11" runat="server" Text="Nationality:"></asp:Label>
        </td>
        <td class="style39">
            <asp:TextBox ID="txtnationality" runat="server" Enabled="False"></asp:TextBox>
        </td>
        <td class="style35">
            <asp:Label ID="Label19" runat="server" Text="Mobile Number:"></asp:Label>
        </td>
        <td class="style36">
            <asp:TextBox ID="txtmobile" runat="server" Enabled="False"></asp:TextBox>
        </td>
        <td class="style37">
            <asp:Label ID="Label27" runat="server" Text="Family Occupation:"></asp:Label>
        </td>
        <td class="style38">
            <asp:TextBox ID="txtoccupation" runat="server" Enabled="False"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style22">
            <asp:Label ID="Label4" runat="server" Text="Middlename :"></asp:Label>
        </td>
        <td class="style23">
            <asp:TextBox ID="txtmname" runat="server" Enabled="False"></asp:TextBox>
        </td>
        <td class="style24">
            <asp:Label ID="Label12" runat="server" Text="Age:"></asp:Label>
        </td>
        <td class="style40">
            <asp:TextBox ID="txtage" runat="server" Enabled="False"></asp:TextBox>
        </td>
        <td class="style26">
            <asp:Label ID="Label20" runat="server" Text="E-Mail:"></asp:Label>
        </td>
        <td class="style27">
            <asp:TextBox ID="txtmail" runat="server" Enabled="False"></asp:TextBox>
        </td>
        <td class="style28">
            <asp:Label ID="Label28" runat="server" Text="Annual Income:"></asp:Label>
        </td>
        <td class="style29">
            <asp:TextBox ID="txtannualincome" runat="server" Enabled="False"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style22">
            <asp:Label ID="Label5" runat="server" Text="Lastname:"></asp:Label>
        </td>
        <td class="style23">
            <asp:TextBox ID="txtlname" runat="server" Enabled="False"></asp:TextBox>
        </td>
        <td class="style24">
            <asp:Label ID="Label13" runat="server" Text="BloodGroup:"></asp:Label>
        </td>
        <td class="style40">
            <asp:TextBox ID="txtbg" runat="server" Enabled="False"></asp:TextBox>
        </td>
        <td class="style26">
            <asp:Label ID="Label21" runat="server" Text="LinkedInID:"></asp:Label>
        </td>
        <td class="style27">
            <asp:TextBox ID="txtlinkedin" runat="server" Enabled="False"></asp:TextBox>
        </td>
        <td class="style28">
            <asp:Label ID="Label29" runat="server" Text="Dependents:"></asp:Label>
        </td>
        <td class="style29">
            <asp:TextBox ID="txtdependents" runat="server" Enabled="False"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style22">
            <asp:Label ID="Label6" runat="server" Text="Father Name:"></asp:Label>
        </td>
        <td class="style23">
            <asp:TextBox ID="txtftname" runat="server" Enabled="False"></asp:TextBox>
        </td>
        <td class="style24">
            <asp:Label ID="Label14" runat="server" Text="Country:"></asp:Label>
        </td>
        <td class="style40">
            <asp:TextBox ID="txtcountry" runat="server" Enabled="False"></asp:TextBox>
        </td>
        <td class="style26">
            <asp:Label ID="Label22" runat="server" Text="FacebookID:"></asp:Label>
        </td>
        <td class="style27">
            <asp:TextBox ID="txtfb" runat="server" Enabled="False"></asp:TextBox>
        </td>
        <td class="style28">
            <asp:Label ID="Label30" runat="server" Text="PhoneHome:"></asp:Label>
        </td>
        <td class="style29">
            <asp:TextBox ID="txtphonehome" runat="server" Enabled="False"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style22">
            <asp:Label ID="Label7" runat="server" Text="Mother Name:"></asp:Label>
        </td>
        <td class="style23">
            <asp:TextBox ID="txtmtname" runat="server" Enabled="False"></asp:TextBox>
        </td>
        <td class="style24">
            <asp:Label ID="Label15" runat="server" Text="State:"></asp:Label>
        </td>
        <td class="style40">
            <asp:TextBox ID="txtstate" runat="server" Enabled="False"></asp:TextBox>
        </td>
        <td class="style26">
            <asp:Label ID="Label23" runat="server" Text="TwitterID:"></asp:Label>
        </td>
        <td class="style27">
            <asp:TextBox ID="txttwitter" runat="server" Enabled="False"></asp:TextBox>
        </td>
        <td class="style28">
            <asp:Label ID="Label31" runat="server" Text="Religion:"></asp:Label>
        </td>
        <td class="style29">
            <asp:TextBox ID="txtreligion" runat="server" Enabled="False"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style22">
            <asp:Label ID="Label8" runat="server" Text="Guardian Name:"></asp:Label>
        </td>
        <td class="style23">
            <asp:TextBox ID="txtGuardian" runat="server" Enabled="False"></asp:TextBox>
        </td>
        <td class="style24">
            <asp:Label ID="Label16" runat="server" Text="City:"></asp:Label>
        </td>
        <td class="style40">
            <asp:TextBox ID="txtcity" runat="server" Enabled="False"></asp:TextBox>
        </td>
        <td class="style26">
            <asp:Label ID="Label24" runat="server" Text="NaukriID:"></asp:Label>
        </td>
        <td class="style27">
            <asp:TextBox ID="txtnaukri" runat="server" Enabled="False"></asp:TextBox>
        </td>
        <td class="style28">
            <asp:Label ID="Label32" runat="server" Text="Category:"></asp:Label>
        </td>
        <td class="style29">
            <asp:TextBox ID="txtcategory" runat="server" Enabled="False"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style22">
            <asp:Label ID="Label9" runat="server" Text="Gender"></asp:Label>
        </td>
        <td class="style23">
            <asp:TextBox ID="txtgender" runat="server" Enabled="False"></asp:TextBox>
        </td>
        <td class="style24">
            <asp:Label ID="Label17" runat="server" Text="PinCode:"></asp:Label>
        </td>
        <td class="style40">
            <asp:TextBox ID="txtpin" runat="server" Enabled="False"></asp:TextBox>
        </td>
        <td class="style26">
            <asp:Label ID="Label25" runat="server" Text="BlogAddress:"></asp:Label>
        </td>
        <td class="style27">
            <asp:TextBox ID="txtblog" runat="server" Enabled="False"></asp:TextBox>
        </td>
        <td class="style28">
            <asp:Label ID="Label33" runat="server" Text="Caste:"></asp:Label>
        </td>
        <td class="style29">
            <asp:TextBox ID="txtcaste" runat="server" Enabled="False"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style22">
            <asp:Label ID="Label10" runat="server" Text="D.O.B:"></asp:Label>
        </td>
        <td class="style23">
            <asp:TextBox ID="txtdob" runat="server" Enabled="False"></asp:TextBox>
        </td>
        <td class="style24">
            <asp:Label ID="Label18" runat="server" Text="Contact Number:"></asp:Label>
        </td>
        <td class="style40">
            <asp:TextBox ID="txtcontact" runat="server" Enabled="False"></asp:TextBox>
        </td>
        <td class="style26">
            <asp:Label ID="Label26" runat="server" Text="Relationship:"></asp:Label>
        </td>
        <td class="style27">
            <asp:TextBox ID="txtrelationship" runat="server" Enabled="False"></asp:TextBox>
        </td>
        <td class="style28">
            <asp:Label ID="Label34" runat="server" Text="MotherTongue:"></asp:Label>
        </td>
        <td class="style29">
            <asp:TextBox ID="txtmothertongue" runat="server" Enabled="False"></asp:TextBox>
        </td>
    </tr>
</table>
<table class="style6">
    <tr>
        <td class="style30">
            <asp:Button ID="cmdEdit" runat="server" Text="Edit This Record" 
                CausesValidation="False" Width="111px" onclick="cmdEdit_Click" />
            <asp:Button ID="cmdUpdate" runat="server" Text="Update Record" 
                CausesValidation="False" onclick="cmdUpdate_Click" />
        </td>
        <td class="style41">
            <asp:Button ID="cmdDelete" runat="server" Text="Delete This Record" 
                CausesValidation="False" Width="159px" onclick="cmdDelete_Click" />
        </td>
        <td>
            <asp:Button ID="cmdExit" runat="server" Text="Exit Search Engine" 
                CausesValidation="False" onclick="cmdExit_Click" />
        </td>
    </tr>
</table>
   
</asp:Content>
