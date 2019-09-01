<%@ Page Title="" Language="C#" MasterPageFile="~/AccountsInterface.Master" AutoEventWireup="true" CodeBehind="StudentFeePay.aspx.cs" Inherits="VirtualCampus.StudentFeePay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="InterfacetitlePlaceHolder" runat="server">
Student Fee Management Service
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style15
        {
            width: 185px;
        }
        .style16
        {
            width: 200px;
        }
        .style17
        {
            width: 62%;
            height: 79px;
        }
        .style18
        {
            width: 80%;
            height: 218px;
        }
        .style19
        {
            width: 96px;
        }
        .style20
        {
            width: 200px;
        }
        .style21
        {
            width: 123%;
            height: 266px;
        }
        .style23
        {
            width: 233px;
        }
        .style24
        {
            width: 290px;
        }
        .style32
        {
            text-align: left;
        }
        .style33
        {
            color: #FF0000;
        }
        .style34
        {
            color: #3366CC;
        }
        .style36
        {
            width: 96px;
            height: 76px;
            text-align: right;
        }
        .style37
        {
            width: 260px;
            height: 76px;
        }
        .style38
        {
            color: #0000CC;
        }
        .style39
        {
            font-size: medium;
            font-weight: bold;
            background-color: #F0FFFF;
            color: #666666;
        }
        .style40
        {
            font-size: medium;
            background-color: #F0FFFF;
        }
        .style42
        {
            font-size: medium;
        }
        .style44
        {
        width: 224px;
        text-align: left;
    }
        .style45
        {
            width: 208px;
            text-align: right;
        }
        .style46
        {
            width: 92%;
        }
        .style47
        {
            width: 60px;
        }
        .style48
        {
            width: 100%;
            margin-left: 43px;
        }
        .style49
        {
            width: 100%;
            margin-left: 32px;
        }
        .style50
        {
            width: 49px;
        }
        .style51
        {
            width: 208px;
            text-align: right;
            height: 52px;
        }
        .style52
        {
            width: 224px;
            text-align: left;
            height: 52px;
        }
        .style53
        {
            width: 49px;
            height: 52px;
        }
        .style54
        {
            width: 60px;
            height: 52px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="style6">
        <tr>
            <td class="style12">
                <strong>
                <asp:Label ID="Label2" runat="server" Text="Student Fee Payment"></asp:Label>
                <br />
                </strong>
                <hr />
            </td>
        </tr>
    </table>
    <table class="style6">
        <tr>
            <td class="style15">
                <div>
                    <table class="style17">
                        <tr>
                            <td class="style16">
                                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label3" runat="server" Text="Students List" CssClass="style40"></asp:Label>
                                </strong>
                            </td>
                        </tr>
                        <tr>
                            <td class="style16">
                                <strong>
                                <asp:ListBox ID="ListBox1" runat="server" Width="167px" AutoPostBack="True" 
                                    CssClass="style39" DataSourceID="SqlDataSource1" DataTextField="Student_id" 
                                    DataValueField="Student_id" Height="212px" 
                                    onselectedindexchanged="ListBox1_SelectedIndexChanged"></asp:ListBox>
                                </strong>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                                    SelectCommand="SELECT [Student_id] FROM [StudentRegistrations]">
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="style16">
                                <asp:Label ID="lblWhatHappened" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
            <td class="style24">
                <div>
                    <table class="style18">
                        <tr>
                            <td class="style23">
                                <table class="style21">
                                    <tr>
                                        <td class="style36">
                                            <strong>
                                            <asp:Label ID="Label23" runat="server" CssClass="style42" Text="Student "></asp:Label>
                                            </strong></td>
                                        <td class="style37">
                                            <strong>
                                            <asp:Label ID="Label15" runat="server" Text="Details" CssClass="style40"></asp:Label>
                                            </strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style19">
                                            <strong>
                                            <asp:Label ID="Label5" runat="server" Text="Student_id :"></asp:Label>
                                            </strong>
                                        </td>
                                        <td class="style20">
                                            <strong>
                                            <asp:Label ID="lblID" runat="server" CssClass="style33"></asp:Label>
                                            </strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style19">
                                            <strong>
                                            <asp:Label ID="Label6" runat="server" Text="StudentName:"></asp:Label>
                                            </strong>
                                        </td>
                                        <td class="style20">
                                            <strong>
                                            <asp:Label ID="lblName" runat="server" CssClass="style34"></asp:Label>
                                            </strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style19">
                                            <strong>
                                            <asp:Label ID="Label7" runat="server" Text="Class :"></asp:Label>
                                            </strong>
                                        </td>
                                        <td class="style20">
                                            <strong>
                                            <asp:Label ID="lblClass" runat="server" CssClass="style34"></asp:Label>
                                            </strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style19">
                                            <strong>
                                            <asp:Label ID="Label8" runat="server" Text="Section :"></asp:Label>
                                            </strong>
                                        </td>
                                        <td class="style20">
                                            <strong>
                                            <asp:Label ID="lblSection" runat="server" CssClass="style34"></asp:Label>
                                            </strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style19">
                                            <strong>
                                            <asp:Label ID="Label9" runat="server" Text="Roll No:"></asp:Label>
                                            </strong>
                                        </td>
                                        <td class="style20">
                                            <strong>
                                            <asp:Label ID="lblRollNo" runat="server" CssClass="style34"></asp:Label>
                                            </strong>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
            <td>
                <div>
                    <table class="style6">
                        <tr>
                            <td class="style32">
                                <strong>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label16" runat="server" Text="Transaction Entry" 
                                    CssClass="style40"></asp:Label>
                                </strong>
                            </td>
                        </tr>
                    </table>
                    <table class="style49">
                        <tr>
                            <td>
                    <table class="style46">
                        <tr>
                            <td class="style45">
                                <strong>
                                <asp:Label ID="Label18" runat="server" Text="Total fee :"></asp:Label>
                                </strong>
                            </td>
                            <td class="style44">
                                <strong>
                                <asp:TextBox ID="txttotfee" runat="server" CssClass="style31" ReadOnly="True" 
                                    style="font-weight: bold; font-size: medium; color: #FF00FF; background-color: #FFFFCC"></asp:TextBox>
                                </strong>
                            </td>
                            <td class="style50">
                                &nbsp;</td>
                            <td class="style47">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style45">
                                <strong>
                                <asp:Label ID="Label19" runat="server" Text="Paid fee:"></asp:Label>
                                &nbsp;&nbsp;
                                </strong></td>
                            <td class="style44">
                                <strong>
                                <asp:TextBox ID="txtpaidfee" runat="server" CssClass="style29" ReadOnly="True" 
                                    style="font-weight: bold; font-size: medium; color: #FF00FF; background-color: #FFFFCC"></asp:TextBox>
                                </strong></td>
                            <td class="style50">
                                &nbsp;</td>
                            <td class="style47">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style45">
                                <strong>
                                <asp:Label ID="Label20" runat="server" Text="Remaining fee:"></asp:Label>
                                </strong></td>
                            <td class="style44">
                                <strong>
                                <asp:TextBox ID="txtremfee" runat="server" CssClass="style29" ReadOnly="True" 
                                    style="font-weight: bold; font-size: medium; color: #FF00FF; background-color: #FFFFCC"></asp:TextBox>
                                </strong></td>
                            <td class="style50">
                                &nbsp;</td>
                            <td class="style47">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style45">
                                <strong>
                                <asp:Label ID="Label21" runat="server" Text="Paying fee:"></asp:Label>
                                </strong></td>
                            <td class="style44">
                                <strong>
                                <asp:TextBox ID="txtpayingfee" runat="server" CssClass="style30" 
                                    style="font-weight: bold; font-size: medium; color: #0000FF; background-color: #FFFFCC"></asp:TextBox>
                                </strong></td>
                            <td class="style50">
                                <strong>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ControlToValidate="txtpayingfee" CssClass="style27" 
                                    ErrorMessage="Must Enter Paying Fee" style="font-size: large; color: #FF0000">*</asp:RequiredFieldValidator>
                                </strong></td>
                            <td class="style47">
                                <strong>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                    ControlToValidate="txtpayingfee" ErrorMessage="Number!" 
                                    ForeColor="Red" ValidationExpression="\d{0,9}"></asp:RegularExpressionValidator>
                                </strong></td>
                        </tr>
                        <tr>
                            <td class="style45">
                                <strong>
                                <asp:Label ID="Label22" runat="server" Text="Re-Enter fee :"></asp:Label>
                                </strong></td>
                            <td class="style44">
                                <strong>
                                <asp:TextBox ID="txtRpayingfee" runat="server" CssClass="style30" 
                                    style="font-weight: bold; font-size: medium; color: #0000FF; background-color: #FFFFCC"></asp:TextBox>
                                </strong></td>
                            <td class="style50">
                                <strong>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                    ControlToValidate="txtRpayingfee" CssClass="style27" 
                                    ErrorMessage="Re-Enter paying Fee!" style="font-size: large; color: #FF0000">*</asp:RequiredFieldValidator>
                                </strong></td>
                            <td class="style47">
                                <strong>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                    ControlToValidate="txtRpayingfee" ErrorMessage="Number!" 
                                    ForeColor="Red" ValidationExpression="\d{0,9}"></asp:RegularExpressionValidator>
                                </strong></td>
                        </tr>
                        <tr>
                            <td class="style51">
                                </td>
                            <td class="style52">
                                <asp:Button ID="cmdcalculate" runat="server" onclick="cmdcalculate_Click" 
                                    Text="Calculate" />
                                <asp:Button ID="cmdpayfee" runat="server" Text="Update fee" 
                                    onclick="cmdpayfee_Click" />
                                <asp:Button ID="cmdClear" runat="server" CausesValidation="False" 
                                    onclick="cmdClear_Click" Text="Clear" />
                            </td>
                            <td class="style53">
                                </td>
                            <td class="style54">
                                </td>
                        </tr>
                    </table>
                                <table class="style6">
                                    <tr>
                                        <td class="style12">
                                            <strong>
                                            <asp:Label ID="lblTransStatus" runat="server"></asp:Label>
                                            </strong>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <table class="style48">
                        <tr>
                            <td class="style12">
                                <strong>
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                                    CssClass="style38" ShowMessageBox="True" />
                                </strong>
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>
