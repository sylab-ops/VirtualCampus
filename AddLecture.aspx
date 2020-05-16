<%@ Page Title="" Language="C#" MasterPageFile="~/Interface.Master" AutoEventWireup="true" CodeBehind="AddLecture.aspx.cs" Inherits="VirtualCampus.UpdateStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="InterfacetitlePlaceHolder" runat="server">
Add New Lecturer
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style14
    {
        color: #6699FF;
      
    }
        .style15
        {
            text-align: center;
            height: 21px;
        }
        .style16
        {
            width: 126px;
        }
        .style17
        {
            width: 138px;
        }
        .style19
        {
            width: 69px;
        }
        .style20
        {
            width: 126px;
            height: 22px;
        }
        .style21
        {
            width: 138px;
            height: 22px;
        }
        .style23
        {
            width: 69px;
            height: 22px;
        }
        .style24
        {
            height: 22px;
        }
        .style25
        {
            color: #FF0000;
        }
        .style27
        {
            width: 202px;
        }
        .style28
        {
            width: 202px;
            height: 22px;
        }
        .style29
        {
            width: 135px;
        }
        .style30
        {
            width: 135px;
            height: 22px;
        }
        .style31
        {
            width: 69px;
            text-align: right;
        }
        .style32
        {
            margin-bottom: 0px;
        }
    .style33
    {
        color: #009900;
    }
    .style34
    {
        color: #FF0066;
    }
        .style35
        {
            color: #000000;
            width: 1350px;
            text-align: left;
            height: 596px;
            margin: 10px auto;
        }
        .style36
        {
            color: #666666;
        }
        .style37
        {
            color: #FF0000;
            font-size: large;
        }
        .style38
        {
            width: 135px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
  
    <table class="style6">
    <tr>
        <td class="style15">
            <strong>
            <br />
            <asp:Label ID="Label2" runat="server" CssClass="style35" 
                Text="Add New Lecturer"></asp:Label>
            <br />
            </strong>
            <hr />
        </td>
    </tr>
</table>
  
    <table class="style6">
        <tr>
            <td class="style27">
                &nbsp;</td>
            <td class="style16">
                <strong>
                <asp:Label ID="Label3" runat="server" Text="Lecturer Name :" CssClass="style36"></asp:Label>
                </strong>
            </td>
            <td class="style17">
                <asp:TextBox ID="txtlname" runat="server"></asp:TextBox>
            </td>
            <td class="style17">
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="txtlname" CssClass="style37" 
                    ErrorMessage="Lecture Name Empty!">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtlname" ErrorMessage="Enter only Characters" 
                    ValidationExpression="[a-zA-Z]*$"></asp:RegularExpressionValidator>
                </strong>
            </td>
            <td class="style29">
                <strong>
                <asp:Label ID="Label13" runat="server" Text="Permanent Address :" 
                    CssClass="style36"></asp:Label>
                </strong>
            </td>
            <td class="style19">
                <asp:TextBox ID="txtPerAddress" runat="server" TextMode="MultiLine" 
                    Width="104px"></asp:TextBox>
            </td>
            <td>
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtPerAddress" CssClass="style37" 
                    ErrorMessage="Permanent Address Cannot Be E">*</asp:RequiredFieldValidator>
                </strong>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style27">
                &nbsp;</td>
            <td class="style16">
                <strong>
                <asp:Label ID="Label4" runat="server" Text="Mobile Number :" CssClass="style36"></asp:Label>
                </strong>
            </td>
            <td class="style17">
                <asp:TextBox ID="txtlmobile" runat="server"></asp:TextBox>
            </td>
            <td class="style17">
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="txtlmobile" CssClass="style37" 
                    ErrorMessage="Mobile No. Empty!">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtlmobile" ErrorMessage="Enter Numbers" 
                    ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
                </strong>
            </td>
            <td class="style29">
                <strong>
                <asp:Label ID="Label14" runat="server" Text="Lecturer Status :" 
                    CssClass="style36"></asp:Label>
                </strong>
            </td>
            <td class="style19">
                <asp:DropDownList ID="DDLlStatus" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DDLlStatus_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td>
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="DDLlStatus" CssClass="style37" 
                    ErrorMessage="Lecture Status Cannot Be Empty">*</asp:RequiredFieldValidator>
                </strong>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style27">
                &nbsp;</td>
            <td class="style16">
                <strong>
                <asp:Label ID="Label5" runat="server" Text="Alternate number :" 
                    CssClass="style36"></asp:Label>
                </strong>
            </td>
            <td class="style17">
                <asp:TextBox ID="txtlalt" runat="server"></asp:TextBox>
            </td>
            <td class="style17">
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="txtlalt" CssClass="style37" 
                    ErrorMessage="Alternate no. Empty!">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtlalt" ErrorMessage="Enter Numbers" 
                    ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
                </strong>
            </td>
            <td class="style29">
                <strong>
                <asp:Label ID="Label15" runat="server" Text="Experience(in Years):" 
                    CssClass="style36"></asp:Label>
                </strong>
            </td>
            <td class="style19">
                <asp:DropDownList ID="DDLlExperience" runat="server" AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td>
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="DDLlExperience" CssClass="style37" 
                    ErrorMessage="Experience Cannot Be Empty">*</asp:RequiredFieldValidator>
                </strong>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style27">
                &nbsp;</td>
            <td class="style16">
                <strong>
                <asp:Label ID="Label6" runat="server" Text="E-Mail ID :" CssClass="style36"></asp:Label>
                </strong>
            </td>
            <td class="style17">
                <asp:TextBox ID="txtlmail" runat="server"></asp:TextBox>
            </td>
            <td class="style17">
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                    ControlToValidate="txtlmail" CssClass="style37" ErrorMessage="E-mail Required">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="txtlmail" ErrorMessage="E-mail Not Valid" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </strong>
            </td>
            <td class="style29">
                <strong>
                <asp:Label ID="Label16" runat="server" Text="Experience Stream :" 
                    CssClass="style36"></asp:Label>
                </strong>
            </td>
            <td class="style19">
                <asp:DropDownList ID="DDLStream" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DDLStream_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td>
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="DDLStream" CssClass="style37" 
                    ErrorMessage="Experience Stream Cannot Be Empty">*</asp:RequiredFieldValidator>
                </strong>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style27">
                &nbsp;</td>
            <td class="style16">
                <strong>
                <asp:Label ID="Label7" runat="server" Text="State :" CssClass="style36"></asp:Label>
                </strong>
            </td>
            <td class="style17">
                <asp:DropDownList ID="ddlState" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="ddlState_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="style17">
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ControlToValidate="ddlState" CssClass="style37" ErrorMessage="Select State!">*</asp:RequiredFieldValidator>
                </strong>
            </td>
            <td class="style29">
                <strong>
                <asp:Label ID="Label17" runat="server" Text="Subject Of Teaching :" 
                    CssClass="style36"></asp:Label>
                </strong>
            </td>
            <td class="style19">
                <asp:DropDownList ID="DDLlSub" runat="server" AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td>
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="DDLlSub" CssClass="style37" 
                    ErrorMessage="Subject Cannot Be Empty">*</asp:RequiredFieldValidator>
                </strong>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style28">
                &nbsp;</td>
            <td class="style20">
                <strong>
                <asp:Label ID="Label8" runat="server" Text="District" CssClass="style36"></asp:Label>
                </strong>
            </td>
            <td class="style21">
                <asp:DropDownList ID="DDLDistrict" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DDLDistrict_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="style21">
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                    ControlToValidate="DDLDistrict" CssClass="style37" 
                    ErrorMessage="Select District!">*</asp:RequiredFieldValidator>
                </strong>
            </td>
            <td class="style30">
                <strong>
                <asp:Label ID="Label18" runat="server" Text="Annual Salary Offered :" 
                    CssClass="style36"></asp:Label>
                </strong>
            </td>
            <td class="style23">
                <asp:DropDownList ID="DDLlAnnualSalry" runat="server" AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td class="style24">
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="DDLlAnnualSalry" CssClass="style37" 
                    ErrorMessage="Annual Salary Cannot Be Empty">*</asp:RequiredFieldValidator>
                </strong>
            </td>
            <td class="style24">
                &nbsp;</td>
            <td class="style24">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style27">
                &nbsp;</td>
            <td class="style16">
                <strong>
                <asp:Label ID="Label9" runat="server" Text="City :" CssClass="style36"></asp:Label>
                </strong>
            </td>
            <td class="style17">
                <asp:DropDownList ID="DDLCity" runat="server">
                </asp:DropDownList>
            </td>
            <td class="style17">
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                    ControlToValidate="DDLCity" CssClass="style37" ErrorMessage="Select City!">*</asp:RequiredFieldValidator>
                </strong>
            </td>
            <td class="style29">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style27">
                &nbsp;</td>
            <td class="style16">
                <strong>
                <asp:Label ID="Label10" runat="server" Text="Year Of Join : " 
                    CssClass="style36"></asp:Label>
                </strong>
            </td>
            <td class="style17">
                <asp:TextBox ID="txtlJoinYear" runat="server"></asp:TextBox>
            </td>
            <td class="style17">
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                    ControlToValidate="txtlJoinYear" CssClass="style37" 
                    ErrorMessage="Select Year Of Join!">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="txtlJoinYear" ErrorMessage="Enter Only Numbers" 
                    ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
                </strong>
            </td>
            <td class="style29">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style27">
                &nbsp;</td>
            <td class="style16">
                <strong>
                <asp:Label ID="Label11" runat="server" Text="Qualification :" 
                    CssClass="style36"></asp:Label>
                </strong>
            </td>
            <td class="style17">
                <asp:TextBox ID="txtlQfn" runat="server"></asp:TextBox>
            </td>
            <td class="style17">
                &nbsp;</td>
            <td class="style29">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtlQfn" CssClass="style25" 
                    ErrorMessage="Qualification Cannot Be Empty">*</asp:RequiredFieldValidator>
            </td>
            <td class="style19">
                &nbsp;</td>
            <td>
                <strong>
                <asp:Label ID="lblRegStatus" runat="server" CssClass="style34"></asp:Label>
                <asp:Label ID="lblSuccessReg" runat="server" CssClass="style33"></asp:Label>
                </strong></td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style27">
                &nbsp;</td>
            <td class="style16">
                <strong>
                <asp:Label ID="Label12" runat="server" Text="Present Address :" 
                    CssClass="style36"></asp:Label>
                </strong>
            </td>
            <td class="style17">
                <asp:TextBox ID="txtPreAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="style17">
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                    ControlToValidate="txtPreAddress" CssClass="style37" 
                    ErrorMessage="Select Present Address!">*</asp:RequiredFieldValidator>
                </strong>
            </td>
            <td class="style29">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtPreAddress" CssClass="style37" 
                    ErrorMessage="Present Address Cannot Be Empty">*</asp:RequiredFieldValidator>
            </td>
            <td class="style31">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style27">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td class="style38">
                <asp:Button ID="cmdAddLecture" runat="server" Text="Add Lecture" 
                    onclick="cmdAddLecture_Click" />
                </td>
            <td class="style31">
                <asp:Button ID="cmdClear" runat="server" Text="Clear Data" 
                    CausesValidation="False" onclick="cmdClear_Click" />
                </td>
            <td>
                <asp:Button ID="cmdExit" runat="server" Text="Exit Saving No Changes" 
                    CausesValidation="False" CssClass="style32" Width="149px" 
                    onclick="cmdExit_Click" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style27">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td class="style29">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
  
    <table class="style6">
        <tr>
            <td class="style12">
                <strong>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                    CssClass="style34" />
                </strong>
            </td>
        </tr>
    </table>
  
</asp:Content>
