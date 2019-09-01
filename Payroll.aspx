<%@ Page Title="" Language="C#" MasterPageFile="~/AccountsInterface.Master" AutoEventWireup="true" CodeBehind="Payroll.aspx.cs" Inherits="VirtualCampus.Payroll" %>
<asp:Content ID="Content1" ContentPlaceHolderID="InterfacetitlePlaceHolder" runat="server">
Employee Payroll Management Service
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style14
        {
            width: 100%;
            height: 309px;
        }
        .style15
        {
            width: 420px;
            background-color: rgb(240,254,254);
        }
        .style17
        {
            width: 100%;
            height: 173px;
        }
        .style29
        {
            color: #FF0000;
        }
        .style33
        {
            width: 99%;
        }
        .style34
        {
            font-size: medium;
            color: #FF0000;
        }
        .style35
        {
            text-align: center;
            width: 203px;
            background-color: rgb(240,254,254);
            color: #808080;
        }
        .style36
        {
            width: 145px;
            background-color: rgb(240,254,254);
            text-align: center;
            color: #000066;
        }
        .style38
        {
            color: #009933;
        }
    .style39
    {
        font-size: medium;
    }
    .style43
    {
        background-color: rgb(240,254,254);
    }
    .style44
    {
        text-align: left;
        background-color: rgb(240,254,254);
    }
    .style45
    {
        width: 171px;
        background-color: rgb(240,254,254);
    }
    .style46
    {
        width: 757px;
    }
    .style47
    {
        width: 192px;
        text-align: left;
    }
    .style48
    {
        text-align: left;
    }
    .style49
    {
        width: 285px;
    }
    .style50
    {
        font-size: 15px;
    }
        .style51
        {
            color: #000066;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="style6">
        <tr>
            <td class="style12">
                <strong>
                <br />
                <asp:Label ID="Label11" runat="server" Text="Employee Payroll  System" 
                    CssClass="style39"></asp:Label>
                <br />
                </strong>
                <table class="style6">
                    <tr>
                        <td class="style46">
                            <div>
                                <table class="style25">
                                    <tr>
                                        <td class="style16">
                                            <strong>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="Label3" runat="server" Text="Select Employee  Below" 
                                                CssClass="style50"></asp:Label>
                                            </strong>
                                        </td>
                                    </tr>
                                </table>
                                <table class="style42">
                                    <tr>
                                        <td class="style32">
                                            <strong>
                                            <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" 
                                                DataSourceID="SqlDataSource1" DataTextField="Lecture_id" 
                                                DataValueField="Lecture_id" Height="64px" Width="262px" 
                                                AppendDataBoundItems="True" 
                                                onselectedindexchanged="ListBox1_SelectedIndexChanged" 
                                                 Rows="5" CssClass="style40" 
                                                style="font-weight: bold; color: #808080; background-color: #F0FFFF;"></asp:ListBox>
                                            </strong>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                                                SelectCommand="SELECT [Lecture_id], [Lecturer_Name] FROM [lectureReg]"></asp:SqlDataSource>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                        <td class="style22">
                            <div>
                                <table class="style24">
                                    <tr>
                                        <td class="style49">
                                            <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="Label4" runat="server" Text="Employee Details" 
                                                CssClass="style39"></asp:Label>
                                            </strong>
                                        </td>
                                    </tr>
                                </table>
                                <table class="style41">
                                    <tr>
                                        <td class="style48">
                                            <strong>
                                            <asp:Label ID="Label5" runat="server" CssClass="style29" Text="EmployeeID:"></asp:Label>
                                            </strong>
                                        </td>
                                        <td class="style47">
                                            <strong>
                                            <asp:Label ID="lblID" runat="server" CssClass="style28" 
                                                style="background-color: #FFFFCC"></asp:Label>
                                            </strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style48">
                                            <strong>
                                            <asp:Label ID="Label6" runat="server" CssClass="style30" Text="Employee Name:" 
                                                style="color: #3366FF"></asp:Label>
                                            </strong>
                                        </td>
                                        <td class="style47">
                                            <strong>
                                            <asp:Label ID="lblName" runat="server" CssClass="style28" 
                                                style="color: #FF66FF; background-color: #FFFFCC"></asp:Label>
                                            </strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style48">
                                            <strong>
                                            <asp:Label ID="Label7" runat="server" CssClass="style30" Text="Department:" 
                                                style="color: #3366FF"></asp:Label>
                                            </strong>
                                        </td>
                                        <td class="style47">
                                            <strong>
                                            <asp:Label ID="lblDept" runat="server" CssClass="style28" 
                                                style="color: #FF66FF; background-color: #FFFFCC"></asp:Label>
                                            </strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style48">
                                            <strong>
                                            <asp:Label ID="Label8" runat="server" CssClass="style30" Text="Subject:" 
                                                style="color: #3366FF"></asp:Label>
                                            </strong>
                                        </td>
                                        <td class="style47">
                                            <strong>
                                            <asp:Label ID="lblSubject" runat="server" CssClass="style28" 
                                                style="color: #FF66FF; background-color: #FFFFCC"></asp:Label>
                                            </strong>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                        <td class="style26">
                            <div>
                            </div>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <table class="style17">
        <tr>
            <td>
                <table class="style14">
                    <tr>
                        <td class="style15" style="border: medium solid #C0C0C0">
                            <div>
                                <table class="style33">
                                    <tr>
                                        <td class="style44">
                                            <strong>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="Label9" runat="server" Text="Salary Calculator" 
                                                CssClass="style39"></asp:Label>
                                            </strong>
                                        </td>
                                    </tr>
                                </table>
                                <table class="style6">
                                    <tr>
                                        <td class="style43">
                                            <strong>
                                            <asp:Label ID="Label10" runat="server" Text="Basic Salary:"></asp:Label>
                                            </strong>
                                        </td>
                                        <td class="style44">
                                            <asp:TextBox ID="txtCalculateSalary" runat="server"></asp:TextBox>
                                            <asp:Button ID="Button1" runat="server" Text="Calculate" 
                                                onclick="Button1_Click" />
                                        </td>
                                        <td class="style43">
                                            <strong>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                ControlToValidate="txtCalculateSalary" CssClass="style34" 
                                                ErrorMessage="Input Basic Salary">*</asp:RequiredFieldValidator>
                                            </strong>
                                        </td>
                                        <td class="style43">
                                            <strong>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                ControlToValidate="txtCalculateSalary" CssClass="style29" 
                                                ErrorMessage="Only Numbers" ValidationExpression="\d{0,9}">Only Numbers</asp:RegularExpressionValidator>
                                            </strong>
                                        </td>
                                    </tr>
                                </table>
                                <table class="style33">
                                    <tr>
                                        <td class="style35" style="border-style: solid; border-width: thin">
                                            <strong>Employee Name :</strong></td>
                                        <td class="style36" style="border-style: solid; border-width: thin">
                                            <strong>
                                            <asp:Label ID="lblEmpName" runat="server" CssClass="style51"></asp:Label>
                                            </strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style35" style="border-style: solid; border-width: thin">
                                            <strong>Employee Number :</strong></td>
                                        <td class="style36" style="border-style: solid; border-width: thin">
                                            <strong>
                                            <asp:Label ID="lblEmpID" runat="server" CssClass="style51"></asp:Label>
                                            </strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style35" style="border-style: solid; border-width: thin">
                                            <strong>Basic Salary :</strong></td>
                                        <td class="style36" style="border-style: solid; border-width: thin">
                                            <strong>
                                            <asp:Label ID="lblEmpBasic" runat="server" CssClass="style51"></asp:Label>
                                            </strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style35" style="border-style: solid; border-width: thin">
                                            <strong>HRA (40% Of Basic) :</strong></td>
                                        <td class="style36" style="border-style: solid; border-width: thin">
                                            <strong>
                                            <asp:Label ID="lblHRA" runat="server" CssClass="style51"></asp:Label>
                                            </strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style35" style="border-style: solid; border-width: thin">
                                            <strong>DA (60% Of Basic) :</strong></td>
                                        <td class="style36" style="border-style: solid; border-width: thin">
                                            <strong>
                                            <asp:Label ID="lblDA" runat="server" CssClass="style51"></asp:Label>
                                            </strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style35" style="border-style: solid; border-width: thin">
                                            <strong>Gross Salary :</strong></td>
                                        <td class="style36" style="border-style: solid; border-width: thin">
                                            <strong>
                                            <asp:Label ID="lblGross" runat="server" CssClass="style51"></asp:Label>
                                            </strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style35" style="border-style: solid; border-width: thin">
                                            <strong>PF (13% Of Basic) :</strong></td>
                                        <td class="style36" style="border-style: solid; border-width: thin">
                                            <strong>
                                            <asp:Label ID="lblPF" runat="server" CssClass="style51"></asp:Label>
                                            </strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style35" style="border-style: solid; border-width: thin">
                                            <strong>Tax (20% Of Gross) :</strong></td>
                                        <td class="style36" style="border-style: solid; border-width: thin">
                                            <strong>
                                            <asp:Label ID="lblTax" runat="server" CssClass="style51"></asp:Label>
                                            </strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style35" style="border-style: solid; border-width: thin">
                                            <strong>Deductions (PF+Tax) :</strong></td>
                                        <td class="style36" style="border-style: solid; border-width: thin">
                                            <strong>
                                            <asp:Label ID="lblDeductions" runat="server" CssClass="style51"></asp:Label>
                                            </strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style35" style="border-style: solid; border-width: thin">
                                            <strong>Net Salary(Gross-Deductions) :</strong></td>
                                        <td class="style36" style="border-style: solid; border-width: thin">
                                            <strong>
                                            <asp:Label ID="lblTotal" runat="server" BackColor="#FFFF66" ForeColor="Red" 
                                                CssClass="style51"></asp:Label>
                                            </strong>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                        <td class="style45" style="border: medium solid #C0C0C0">
                            <asp:Button ID="Button3" runat="server" Height="26px"
                                Text="Change Basic" CausesValidation="False" onclick="Button3_Click" />
                            <br />
                            <asp:Button ID="Button2" runat="server" Text="Assign Salary" 
                                CausesValidation="False" onclick="Button2_Click" />
                            <br />
                            <asp:Button ID="Button4" runat="server" Text="Exit Transaction" 
                                CausesValidation="False" onclick="Button4_Click" />
                            <br />
                            <strong>
                            <asp:Label ID="lblWhatHappened" runat="server" CssClass="style38"></asp:Label>
                            </strong>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
