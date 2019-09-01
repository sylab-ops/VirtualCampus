<%@ Page Title="" Language="C#" MasterPageFile="~/AccountsInterface.Master" AutoEventWireup="true" CodeBehind="Scholarshiptransaction.aspx.cs" Inherits="VirtualCampus.Scholarshiptransaction" %>
<asp:Content ID="Content1" ContentPlaceHolderID="InterfacetitlePlaceHolder" runat="server">
Scholarship Management System
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style15
    {
        color: #000000;
        font-size: medium;
    }
    .style16
    {
        width: 278px;
    }
    .style17
    {
        font-size: 13px;
    }
    .style18
    {
        height: 316px;
        width: 393px;
    }
    .style19
    {
        width: 404px;
    }
    .style20
    {
        height: 309px;
    }
        .style21
        {
            text-align: left;
        }
        .style22
        {
            text-align: left;
            width: 253px;
        }
        .style23
        {
            width: 147px;
        }
        .style24
        {
            color: #3333FF;
        }
        .style25
        {
            font-weight: bold;
            background-color: #FFFFCC;
        }
        .style26
        {
            font-weight: bold;
            color: #0000FF;
            background-color: #FFFFCC;
        }
        .style28
        {
            text-align: left;
            width: 141px;
        }
        .style29
        {
            text-align: left;
            width: 183px;
        }
        .style30
        {
            font-size: large;
            color: #FF0000;
        }
        .style31
        {
            width: 98%;
        }
        .style32
        {
            text-align: left;
            width: 195px;
        }
        .style33
        {
            font-size: large;
        }
        .style34
        {
            text-align: right;
        }
        .style35
        {
            text-align: left;
            width: 55px;
        }
        .style36
        {
            color: #FF0000;
            background-color: #FFFF66;
        }
        .style37
        {
            color: #FF0000;
            background-color: #FFFF99;
        }
        .style38
        {
            text-align: left;
            width: 181px;
        }
        .style39
        {
            font-weight: bold;
            background-color: #F0FFFF;
            color: #808080;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="style6">
    <tr>
        <td class="style12">
            <strong>
            <asp:Label ID="Label2" runat="server" CssClass="style15" 
                Text="Scholarship Updation Portal"></asp:Label>
            <br />
            <br />
            </strong>
            <table class="style6">
                <tr>
                    <td class="style16">
                        <div>
                            <strong><span class="style17">Eligible Students List</span></strong><br />
                            <strong>
                            <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource1" 
                                DataTextField="Student_id" DataValueField="Student_id" Height="327px" 
                                Width="268px" AutoPostBack="True" CssClass="style39" 
                                onselectedindexchanged="ListBox1_SelectedIndexChanged"></asp:ListBox>
                            </strong>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                                SelectCommand="SELECT [Student_id] FROM [ScholarshipStat] ORDER BY [Student_Caste]">
                            </asp:SqlDataSource>
                        </div>
                    </td>
                    <td class="style19">
                        <div class="style18">
                            <table class="style6">
                                <tr>
                                    <td>
                                        <strong>Selected Student Details</strong></td>
                                </tr>
                            </table>
                            <table class="style6">
                                <tr>
                                    <td class="style38">
                                        <strong>
                                        <asp:Label ID="Label5" runat="server" Text="Student_id :" CssClass="style24"></asp:Label>
                                        </strong>
                                    </td>
                                    <td class="style21">
                                        <strong>
                                        <asp:Label ID="lblid" runat="server" CssClass="style37"></asp:Label>
                                        </strong></td>
                                </tr>
                                <tr>
                                    <td class="style38">
                                        <strong>
                                        <asp:Label ID="Label6" runat="server" Text="Student Name :" CssClass="style24"></asp:Label>
                                        </strong>
                                    </td>
                                    <td class="style21">
                                        <strong>
                                        <asp:Label ID="lblname" runat="server" CssClass="style37"></asp:Label>
                                        </strong></td>
                                </tr>
                                <tr>
                                    <td class="style38">
                                        <strong>
                                        <asp:Label ID="Label7" runat="server" Text="Student Class :" CssClass="style24"></asp:Label>
                                        </strong>
                                    </td>
                                    <td class="style21">
                                        <strong>
                                        <asp:Label ID="lblclass" runat="server" CssClass="style37"></asp:Label>
                                        </strong></td>
                                </tr>
                                <tr>
                                    <td class="style38">
                                        <strong>
                                        <asp:Label ID="Label8" runat="server" Text="Student Semester" 
                                            CssClass="style24"></asp:Label>
                                        </strong>
                                    </td>
                                    <td class="style21">
                                        <strong>
                                        <asp:Label ID="lblsemester" runat="server" CssClass="style37"></asp:Label>
                                        </strong></td>
                                </tr>
                                <tr>
                                    <td class="style38">
                                        <strong>
                                        <asp:Label ID="Label9" runat="server" Text="Student Caste :" CssClass="style24"></asp:Label>
                                        </strong>
                                    </td>
                                    <td class="style21">
                                        <strong>
                                        <asp:Label ID="lblCaste" runat="server" CssClass="style37"></asp:Label>
                                        </strong></td>
                                </tr>
                                <tr>
                                    <td class="style38">
                                        <strong>
                                        <asp:Label ID="Label10" runat="server" Text="Sub Caste :" CssClass="style24"></asp:Label>
                                        </strong>
                                    </td>
                                    <td class="style21">
                                        <strong>
                                        <asp:Label ID="lblSubCaste" runat="server" CssClass="style37"></asp:Label>
                                        </strong></td>
                                </tr>
                                <tr>
                                    <td class="style38">
                                        <strong>
                                        <asp:Label ID="Label11" runat="server" Text="Status :" CssClass="style24"></asp:Label>
                                        </strong>
                                    </td>
                                    <td class="style21">
                                        <strong>
                                        <asp:Label ID="lblStatus" runat="server" CssClass="style37"></asp:Label>
                                        </strong></td>
                                </tr>
                                <tr>
                                    <td class="style38">
                                        <strong>
                                        <asp:Label ID="Label12" runat="server" Text="Connection Status :" 
                                            CssClass="style24"></asp:Label>
                                        </strong>
                                    </td>
                                    <td class="style21">
                                        <strong>
                                        <asp:Label ID="lblextra" runat="server" CssClass="style37"></asp:Label>
                                        </strong></td>
                                </tr>
                            </table>
                        </div>
                    </td>
                    <td>
                        <div class="style20">
                            <table class="style6">
                                <tr>
                                    <td>
                                        <strong>Register Scholarship Transaction</strong></td>
                                </tr>
                            </table>
                            <table class="style6">
                                <tr>
                                    <td class="style22">
                                        <br />
                                        Are You Previously Applied For Scholarship?</td>
                                    <td class="style21">
                                        <strong>
                                        <asp:RadioButton ID="YesNo" runat="server" GroupName="YesNo" Text="Yes" 
                                            AutoPostBack="True" oncheckedchanged="YesNo_CheckedChanged" />
                                        <asp:RadioButton ID="YesNo1" runat="server" GroupName="YesNo" Text="No" 
                                            AutoPostBack="True" oncheckedchanged="YesNo1_CheckedChanged" />
                                        </strong>
                                    </td>
                                </tr>
                            </table>
                            <table class="style6">
                                <tr>
                                    <td>
                                        <hr />
                                    </td>
                                </tr>
                            </table>
                            <table class="style31">
                                <tr>
                                    <td class="style23">
                                        <strong>
                                        <asp:Label ID="Label3" runat="server" Text="Enter Scholarship Reg No:"></asp:Label>
                                        </strong>
                                    </td>
                                    <td class="style32">
                                        &nbsp;</td>
                                    <td class="style21">
                                        &nbsp;</td>
                                </tr>
                            </table>
                            <table class="style6">
                                <tr>
                                    <td class="style28">
                                        <asp:Label ID="Label13" runat="server" Text="Scholarship Reg No:"></asp:Label>
                                    </td>
                                    <td class="style29">
                                        <strong>
                                        <asp:TextBox ID="txtregno" runat="server" CssClass="style26" Width="189px"></asp:TextBox>
                                        </strong>
                                    </td>
                                    <td class="style21">
                                        <strong>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                            ControlToValidate="txtregno" CssClass="style30" ErrorMessage="*">*</asp:RequiredFieldValidator>
                                        </strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style28">
                                        <asp:Label ID="Label14" runat="server" Text="Date Of Register : "></asp:Label>
                                    </td>
                                    <td class="style29">
                                        <strong>
                                        <asp:TextBox ID="txtregdate" runat="server" CssClass="style26" Width="189px"></asp:TextBox>
                                        </strong>
                                    </td>
                                    <td class="style21">
                                        <strong>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                            ControlToValidate="txtregdate" CssClass="style30" ErrorMessage="*">*</asp:RequiredFieldValidator>
                                        </strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style28">
                                        <asp:Label ID="Label15" runat="server" Text="Application Status :"></asp:Label>
                                    </td>
                                    <td class="style29">
                                        <strong>
                                        <asp:DropDownList ID="ddlstatus" runat="server" CssClass="style26" 
                                            AutoPostBack="True" onselectedindexchanged="ddlstatus_SelectedIndexChanged" 
                                            Width="189px">
                                        </asp:DropDownList>
                                        </strong>
                                    </td>
                                    <td class="style21">
                                        <strong>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                            ControlToValidate="ddlstatus" CssClass="style30" ErrorMessage="*">*</asp:RequiredFieldValidator>
                                        </strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style28">
                                        <asp:Label ID="Label16" runat="server" Text="Scholarship Status:"></asp:Label>
                                    </td>
                                    <td class="style29">
                                        <strong>
                                        <asp:DropDownList ID="ddlDispenseStatus" runat="server" CssClass="style26" 
                                            AutoPostBack="True" Width="189px">
                                        </asp:DropDownList>
                                        </strong>
                                    </td>
                                    <td class="style21">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style28">
                                        <asp:Label ID="Label17" runat="server" Text="Amount Recieved Date :"></asp:Label>
                                    </td>
                                    <td class="style29">
                                        <strong>
                                        <asp:TextBox ID="txtamtRecDate" runat="server" CssClass="style25" Width="189px"></asp:TextBox>
                                        </strong>
                                    </td>
                                    <td class="style21">
                                        <strong>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                            ErrorMessage="*" ForeColor="Red" ControlToValidate="txtamtRecDate" 
                                            CssClass="style33">*</asp:RequiredFieldValidator>
                                        </strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style28">
                                        <asp:Label ID="Label18" runat="server" Text="Amount Received:"></asp:Label>
                                    </td>
                                    <td class="style29">
                                        <strong>
                                        <asp:TextBox ID="txtamtreceived" runat="server" CssClass="style26" 
                                            Width="189px"></asp:TextBox>
                                        </strong>
                                    </td>
                                    <td class="style21">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style28">
                                        <asp:Label ID="Label19" runat="server" Text="Date Of Paid :"></asp:Label>
                                    </td>
                                    <td class="style29">
                                        <strong>
                                        <asp:TextBox ID="txtpaiddate" runat="server" CssClass="style26" Width="189px"></asp:TextBox>
                                        </strong>
                                    </td>
                                    <td class="style21">
                                        &nbsp;</td>
                                </tr>
                            </table>
                            <table class="style6">
                                <tr>
                                    <td>
                                        <strong>
                                        <asp:Label ID="lblWhatHappened" runat="server" CssClass="style24"></asp:Label>
                                        </strong>
                                    </td>
                                </tr>
                            </table>
                            <table class="style6">
                                <tr>
                                    <td class="style34">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="cmdSave" runat="server" Text="Save &amp; Update" 
                                            Width="162px" onclick="cmdSave_Click" />
                                    </td>
                                    <td class="style35">
                                        <asp:Button ID="cmdReset" runat="server" CausesValidation="False" Text="Reset" 
                                            onclick="cmdReset_Click" />
                                    </td>
                                    <td class="style21">
                                        <asp:Button ID="cmdexit" runat="server" CausesValidation="False" Text="Exit" 
                                            Width="51px" onclick="cmdexit_Click" />
                                    </td>
                                </tr>
                            </table>
                            <table class="style6">
                                <tr>
                                    <td>
                                        <strong>
                                        <asp:Label ID="lblSC" runat="server" CssClass="style36" 
                                            Text="SC Students Register Here :"></asp:Label>
                                        <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#0033CC" 
                                            NavigateUrl="http://164.100.80.23/sw2">Click Here To Register</asp:HyperLink>
                                        </strong>
                                        <br />
                                        <strong>
                                        <asp:Label ID="lblST" runat="server" CssClass="style36" 
                                            Text="ST Students Register Here :"></asp:Label>
                                        <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="#0033CC" 
                                            NavigateUrl="http://164.100.80.23/sw3" Target="_blank">Click Here To Register</asp:HyperLink>
                                        </strong>
                                        <br />
                                        <strong>
                                        <asp:Label ID="lblOBC" runat="server" CssClass="style36" 
                                            Text="OBC Students Register Here :"></asp:Label>
                                        <asp:HyperLink ID="HyperLink3" runat="server" ForeColor="#0033CC" 
                                            NavigateUrl="http://www.karepass.cgg.gov.in">Click Here To Register</asp:HyperLink>
                                        <br />
                                        Note: Please Right Click On Link &amp; Open In New Tab.</strong></td>
                                </tr>
                            </table>
                        </div>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>
