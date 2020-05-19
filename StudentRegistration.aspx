<%@ Page Title="" Language="C#" MasterPageFile="~/Interface.Master" AutoEventWireup="true" CodeBehind="StudentRegistration.aspx.cs" Inherits="VirtualCampus.StudentRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="InterfacetitlePlaceHolder" runat="server">
New Student Registration
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style6
    {
        width: 100%;
    }
        .style8
        {
            width: 132px;
            background-color: rgb(240,254,254);
        }
        .style9
        {
            width: 91px;
        }
        .style10
        {
            width: 253px;
        }
        .style11
        {
            width: 285px;
        }
        .style12
        {
            width: 155px;
        }
        .style15
        {
            width: 28px;
            background-color: rgb(240,254,254);
        }
        .style16
        {
            width: 64px;
            background-color: rgb(240,254,254);
        }
        .style17
        {
            width: 92px;
            background-color: rgb(240,254,254);
        }
        .style18
        {
            width: 196px;
            background-color: rgb(240,254,254);
        }
        .style19
        {
            width: 245px;
        background-color: rgb(240,254,254);
    }
        .style21
        {
            width: 119px;
            background-color: rgb(240,254,254);
        }
        .style22
        {
            width: 90px;
            background-color: rgb(240,254,254);
        }
        .style23
        {
            width: 152px;
            background-color:rgb(240,254,254);
        }
        .style24
        {
            width: 69px;
            background-color: rgb(240,254,254);
        }
        .style25
        {
            width: 159px;
            background-color: rgb(240,254,254);
        }
        .style27
        {
            width: 129px;
            background-color: rgb(240,254,254);
        }
        .style29
    {
        width: 97px;
    }
    .style30
    {
        width: 128px;
    }
    .style31
    {
        width: 142px;
    }
    .style33
    {
        width: 226px;
    }
    .style35
    {
        width: 293px;
        text-align: right;
    }
    .style37
    {
        width: 201px;
    }
    .style39
    {
        height: 22px;
    }
    .style40
    {
        width: 293px;
        text-align: right;
        height: 22px;
    }
    .style41
    {
        width: 201px;
        height: 22px;
    }
    .style42
    {
        height: 42px;
        background-color: #FFFF99;
    }
    .style43
    {
        width: 252px;
        text-align: left;
    }
    .style44
    {
        width: 176px;
        text-align: right;
    }
    .style45
    {
        width: 70px;
    }
    .style46
    {
            width: 105px;
            text-align: left;
            background-color: rgb(240,254,254);
        }
    .style48
    {
            width: 83px;
            text-align: left;
            background-color: rgb(240,254,254);
        }
    .style49
    {
            width: 155px;
            text-align: left;
            background-color: rgb(240,254,254);
        }
    .style50
    {
            width: 42px;
            background-color: rgb(240,254,254);
        }
    .style51
    {
        font-family: Arial, Helvetica, sans-serif;
        color: #000000;
        font-size: 15px;
    }
    .style52
    {
        
    }
    .style53
    {
        width: 285px;
        text-decoration: none;
        background-color: rgb(240,254,254);
    }
    .style54
    {
        width: 253px;
        color: #CC66FF;
        background-color: rgb(240,254,254);
    }
    .style55
    {
        width: 100%;
        height: 157px;
    }
    .style56
    {
        background-color: rgb(240,254,254);
        text-align: center;
    }
    .style58
    {
        color: #000099;
    }
    .style59
    {
        background-color: rgb(240,254,254);
        color: #000099;
    }
    .style61
    {
        text-align: center;
    }
    .style62
    {
        color: #000000;
    }
    .style63
    {
        color: #FF0000;
    }
    .style66
    {
            width: 116px;
            background-color: rgb(240,254,254);
        }
    .style68
    {
        width: 114px;
    }
    .style69
    {
        font-weight: bold;
    }
        .style70
        {
            background-color: rgb(240,254,254);
        }
        .style71
        {
            background-color: #FFFFFF;
            margin-left: 0px;
        }
        .style73
        {
            width: 155px;
            text-align: center;
            background-color: rgb(240,254,254);
        }
        .style74
        {
            width: 142px;
            background-color: rgb(240,254,254);
        }
        .style76
    {
        background-color: #FFFFFF;
    }
    .style77
    {
        color: #CC0066;
        background-color: #FFFF00;
    }
    .style78
    {
        color: #33CCCC;
        background-color: #FFFF99;
    }
    .style79
    {
        background-color: #FFFF99;
    }
        .style80
        {
            color: #FF0066;
        }
        .style81
        {
            width: 26px;
            background-color: rgb(240,254,254);
        }
        .style82
        {
            width: 136px;
            text-align: left;
            background-color: rgb(240,254,254);
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="style6">
    <tr>
        <td style="text-align: center; overflow: visible;" class="style52">
            <strong>
            <asp:Label ID="Label2" runat="server" Text="New Student Registration" 
                CssClass="style51"></asp:Label>
            <br />
            <hr />
            <br />
            </strong>
            <table class="style6">
                <tr>
                    <td class="style54">
                        <strong>
                        <asp:Label ID="Label3" runat="server" 
                            Text="Personal Information" CssClass="style58"></asp:Label>
                        </strong>
                    </td>
                    <td class="style53">
                        <strong>
                        <asp:Label ID="Label4" runat="server" 
                            Text="Physical Identity" CssClass="style58"></asp:Label>
                        </strong>
                    </td>
                    <td class="style19">
                        <strong>
                        <asp:Label ID="Label17" runat="server" 
                            Text="Basic Information" CssClass="style58"></asp:Label>
                        </strong>
                    </td>
                    <td class="style70">
                        <strong>
                        <asp:Label ID="Label30" runat="server" Text="Social Networks " 
                            CssClass="style59"></asp:Label>
                        </strong>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
    <table class="style6" style="border: thin none #FFFFFF;">
        <tr>
            <td class="style46" >
                <strong>
                <asp:Label ID="Label5" runat="server" Text="First Name :"></asp:Label>
                </strong>
            </td>
            <td class="style8" >
                <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
            </td>
            <td class="style50" style="border-style: none" >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="*" ControlToValidate="txtfname" ForeColor="Red">*</asp:RequiredFieldValidator>
                <strong>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtfname" CssClass="style80" ErrorMessage="a-z" 
                    ValidationExpression="[a-zA-Z]*$"></asp:RegularExpressionValidator>
                </strong>
            </td>
            <td class="style48" >
                <strong>
                <asp:Label ID="Label11" runat="server" Text="Gender :"></asp:Label>
                </strong>
            </td>
            <td class="style82" >
                <strong>
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Gender" 
                    Text="Male" CssClass="style70" />
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Gender" 
                    Text="Female" CssClass="style70" />
                </strong>&nbsp;<strong><asp:RadioButton ID="RadioButton3" runat="server" 
                    GroupName="Gender" Text=" *" CssClass="style70" />
                </strong>
            </td>
            <td class="style15" >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ErrorMessage="*" ControlToValidate="txtfname" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="style16" >
                <strong>
                <asp:Label ID="Label18" runat="server" Text="Country :"></asp:Label>
                </strong>
            </td>
            <td class="style49" >
                <asp:DropDownList ID="DDLCountry" runat="server" AutoPostback="true"
                    onselectedindexchanged="DDLCountry_SelectedIndexChanged" 
                    CssClass="style71">
                </asp:DropDownList>
            </td>
            <td class="style81" >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ErrorMessage="*" ControlToValidate="DDLCountry" ForeColor="Red" 
                    InitialValue="--Select--">*</asp:RequiredFieldValidator>
            </td>
            <td class="style17" >
                <strong>
                <asp:Label ID="Label24" runat="server" Text="E-Mail Adress :"></asp:Label>
                </strong>
            </td>
            <td class="style18" >
                <asp:TextBox ID="txtMail" runat="server" TextMode="Email"></asp:TextBox>
            </td>
            <td class="style70" >
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style46" >
                <strong>
                <asp:Label ID="Label6" runat="server" Text="Middle Name :"></asp:Label>
                </strong>
            </td>
            <td class="style8">
                <asp:TextBox ID="txtmname" runat="server"></asp:TextBox>
            </td>
            <td class="style50" style="border-style: none" >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="RequiredFieldValidator" ControlToValidate="txtmname" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
                <strong>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtmname" CssClass="style80" ErrorMessage="a-z" 
                    ValidationExpression="[a-zA-Z]*$"></asp:RegularExpressionValidator>
                </strong>
            </td>
            <td class="style48" >
                <strong>
                <asp:Label ID="Label12" runat="server" Text="Birth Place :"></asp:Label>
                </strong>
            </td>
            <td class="style82" >
                <asp:TextBox ID="txtbirthPlace" runat="server"></asp:TextBox>
            </td>
            <td class="style15" >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ErrorMessage="*" ControlToValidate="txtbirthPlace" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="style16" >
                <strong>
                <asp:Label ID="Label19" runat="server" Text="State :"></asp:Label>
                </strong>
            </td>
            <td class="style49" >
                <asp:DropDownList ID="DDLState" runat="server" AutoPostback="true"
                    onselectedindexchanged="DDLState_SelectedIndexChanged" CssClass="style76">
                </asp:DropDownList>
            </td>
            <td class="style81" >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                    ErrorMessage="*" ControlToValidate="DDLState" ForeColor="Red" 
                    InitialValue="Select State">*</asp:RequiredFieldValidator>
            </td>
            <td class="style17" >
                <strong>
                <asp:Label ID="Label25" runat="server" Text="LinkedIn ID :"></asp:Label>
                </strong>
            </td>
            <td class="style18" >
                <asp:TextBox ID="txtLinkedIN" runat="server" 
                    TextMode="Email"></asp:TextBox>
            </td>
            <td class="style70" >
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style46" >
                <strong>
                <asp:Label ID="Label7" runat="server" Text="Last Name :"></asp:Label>
                </strong>
            </td>
            <td class="style8" >
                <asp:TextBox ID="txtlname" runat="server"></asp:TextBox>
            </td>
            <td class="style50" style="border-style: none" >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="RequiredFieldValidator" ControlToValidate="txtlname" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
                <strong>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtlname" CssClass="style80" ErrorMessage="a-z" 
                    ValidationExpression="[a-zA-Z]*$"></asp:RegularExpressionValidator>
                </strong>
            </td>
            <td class="style48" >
                <strong>
                <asp:Label ID="Label13" runat="server" Text="D.O.B :"></asp:Label>
                </strong>
            </td>
            <td class="style82" >
                <asp:DropDownList ID="DDLDay" runat="server" AutoPostBack="True" 
                    Height="21px" Width="33px" CssClass="style70" DataTextFormatString="---">
                    <asp:ListItem>---</asp:ListItem>
                    <asp:ListItem Value="1"></asp:ListItem>
                    <asp:ListItem Value="2"></asp:ListItem>
                    <asp:ListItem Value="3"></asp:ListItem>
                    <asp:ListItem Value="4"></asp:ListItem>
                    <asp:ListItem Value="5"></asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>16</asp:ListItem>
                    <asp:ListItem>17</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>19</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>21</asp:ListItem>
                    <asp:ListItem>22</asp:ListItem>
                    <asp:ListItem>23</asp:ListItem>
                    <asp:ListItem>24</asp:ListItem>
                    <asp:ListItem>25</asp:ListItem>
                    <asp:ListItem>26</asp:ListItem>
                    <asp:ListItem>27</asp:ListItem>
                    <asp:ListItem>28</asp:ListItem>
                    <asp:ListItem>29</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                    <asp:ListItem>31</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="DDLMonth" runat="server" AutoPostBack="True" 
                    Height="20px" Width="44px">
                    <asp:ListItem>---</asp:ListItem>
                    <asp:ListItem Value="Jan"></asp:ListItem>
                    <asp:ListItem>Feb</asp:ListItem>
                    <asp:ListItem>Mar</asp:ListItem>
                    <asp:ListItem>April</asp:ListItem>
                    <asp:ListItem>May</asp:ListItem>
                    <asp:ListItem>June</asp:ListItem>
                    <asp:ListItem>July</asp:ListItem>
                    <asp:ListItem>Aug</asp:ListItem>
                    <asp:ListItem>Sep</asp:ListItem>
                    <asp:ListItem>Oct</asp:ListItem>
                    <asp:ListItem>Nov</asp:ListItem>
                    <asp:ListItem>Dec</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="DDLYear" runat="server" AutoPostBack="True" 
                    Height="20px" Width="55px" CssClass="style70" 
                    onselectedindexchanged="DDLYear_SelectedIndexChanged">
                    <asp:ListItem>---</asp:ListItem>
                    <asp:ListItem Value="2014">1980</asp:ListItem>
                    <asp:ListItem>1981</asp:ListItem>
                    <asp:ListItem>1982</asp:ListItem>
                    <asp:ListItem>1983</asp:ListItem>
                    <asp:ListItem>1984</asp:ListItem>
                    <asp:ListItem>1985</asp:ListItem>
                    <asp:ListItem>1986</asp:ListItem>
                    <asp:ListItem>1987</asp:ListItem>
                    <asp:ListItem>1988</asp:ListItem>
                    <asp:ListItem>1989</asp:ListItem>
                    <asp:ListItem>1990</asp:ListItem>
                    <asp:ListItem>1991</asp:ListItem>
                    <asp:ListItem>1992</asp:ListItem>
                    <asp:ListItem>1993</asp:ListItem>
                    <asp:ListItem>1994</asp:ListItem>
                    <asp:ListItem>1995</asp:ListItem>
                    <asp:ListItem>1996</asp:ListItem>
                    <asp:ListItem>1997</asp:ListItem>
                    <asp:ListItem>1998</asp:ListItem>
                    <asp:ListItem>1999</asp:ListItem>
                    <asp:ListItem>2000</asp:ListItem>
                    <asp:ListItem>2001</asp:ListItem>
                    <asp:ListItem>2002</asp:ListItem>
                    <asp:ListItem>2003</asp:ListItem>
                    <asp:ListItem>2004</asp:ListItem>
                    <asp:ListItem>2005</asp:ListItem>
                    <asp:ListItem Value="2006"></asp:ListItem>
                    <asp:ListItem Value="2007"></asp:ListItem>
                    <asp:ListItem Value="2008"></asp:ListItem>
                    <asp:ListItem Value="2009"></asp:ListItem>
                    <asp:ListItem Value="2010"></asp:ListItem>
                    <asp:ListItem Value="2011"></asp:ListItem>
                    <asp:ListItem Value="2012"></asp:ListItem>
                    <asp:ListItem Value="2013"></asp:ListItem>
                    <asp:ListItem Value="2014"></asp:ListItem>
                    <asp:ListItem Value="2015"></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style15" >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ErrorMessage="*" ControlToValidate="DDLYear" ForeColor="Red" 
                    InitialValue="---">*</asp:RequiredFieldValidator>
            </td>
            <td class="style16" >
                <strong>
                <asp:Label ID="Label20" runat="server" Text="City :"></asp:Label>
                </strong>
            </td>
            <td class="style49" >
                <asp:DropDownList ID="DDLCity" runat="server" AutoPostback="true" 
                    CssClass="style76">
                </asp:DropDownList>
            </td>
            <td class="style81" >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                    ErrorMessage="*" ControlToValidate="DDLCity" ForeColor="Red" 
                    InitialValue="Select City">*</asp:RequiredFieldValidator>
            </td>
            <td class="style17" >
                <strong>
                <asp:Label ID="Label26" runat="server" Text="Facebook ID :"></asp:Label>
                </strong>
            </td>
            <td class="style18" >
                <asp:TextBox ID="txtfbID" runat="server" TextMode="Email"></asp:TextBox>
            </td>
            <td class="style70" >
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style46" >
                <strong>
                <asp:Label ID="Label8" runat="server" Text="Mother Name :"></asp:Label>
                </strong>
            </td>
            <td class="style8" >
                <asp:TextBox ID="txtmtname" runat="server"></asp:TextBox>
            </td>
            <td class="style50" style="border-style: none" >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="RequiredFieldValidator" ControlToValidate="txtmtname" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
                <strong>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="txtmtname" CssClass="style80" ErrorMessage="a-z" 
                    ValidationExpression="[a-zA-Z]*$"></asp:RegularExpressionValidator>
                </strong>
            </td>
            <td class="style48" >
                <strong>
                <asp:Label ID="Label14" runat="server" Text="Nationality :"></asp:Label>
                </strong>
            </td>
            <td class="style82" >
                <asp:TextBox ID="txtNationality" runat="server"></asp:TextBox>
            </td>
            <td class="style15" >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ErrorMessage="*" ControlToValidate="txtNationality" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="style16" >
                <strong>
                <asp:Label ID="Label21" runat="server" Text="Pin Code :"></asp:Label>
                </strong>
            </td>
            <td class="style73" >
                <asp:TextBox ID="txtpin" runat="server" MaxLength="6"></asp:TextBox>
            </td>
            <td class="style81" >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                    ErrorMessage="*" ControlToValidate="txtpin" ForeColor="Red">*</asp:RequiredFieldValidator>
                <strong>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                    ControlToValidate="txtpin" CssClass="style80" ErrorMessage="0-9" 
                    ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
                </strong>
            </td>
            <td class="style17" >
                <strong>
                <asp:Label ID="Label27" runat="server" Text="Twitter ID :"></asp:Label>
                </strong>
            </td>
            <td class="style18" >
                <asp:TextBox ID="txtTwitterID" runat="server" 
                    TextMode="Email"></asp:TextBox>
            </td>
            <td class="style70" >
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style46" >
                <strong>
                <asp:Label ID="Label9" runat="server" Text="Father Name :"></asp:Label>
                </strong>
            </td>
            <td class="style8" >
                <asp:TextBox ID="txtftname" runat="server"></asp:TextBox>
            </td>
            <td class="style50" style="border-style: none" >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ErrorMessage="RequiredFieldValidator" ControlToValidate="txtftname" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
                <strong>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="txtftname" CssClass="style80" ErrorMessage="a-z" 
                    ValidationExpression="[a-zA-Z]*$"></asp:RegularExpressionValidator>
                </strong>
            </td>
            <td class="style48" >
                <strong>
                <asp:Label ID="Label15" runat="server" Text="Age :"></asp:Label>
                </strong>
            </td>
            <td class="style82" >
                <asp:TextBox ID="txtAge" runat="server" MaxLength="2" 
                    ontextchanged="txtAge_TextChanged" Enabled="False"></asp:TextBox>
            </td>
            <td class="style15" >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ErrorMessage="*" ControlToValidate="txtAge" ForeColor="Red">*</asp:RequiredFieldValidator>
                <strong>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator10" 
                    runat="server" ControlToValidate="txtAge" CssClass="style80" ErrorMessage="0-9" 
                    ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
                </strong>
            </td>
            <td class="style16" >
                <strong>
                <asp:Label ID="Label22" runat="server" Text="Contact No."></asp:Label>
                </strong>
            </td>
            <td class="style73" >
                <asp:TextBox ID="txtContact" runat="server" MaxLength="10"></asp:TextBox>
            </td>
            <td class="style81" >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                    ErrorMessage="*" ControlToValidate="txtContact" ForeColor="Red">*</asp:RequiredFieldValidator>
                <strong>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                    ControlToValidate="txtContact" CssClass="style80" ErrorMessage="0-9" 
                    ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
                </strong>
            </td>
            <td class="style17" >
                <strong>
                <asp:Label ID="Label28" runat="server" Text="Naukri ID :"></asp:Label>
                </strong>
            </td>
            <td class="style18" >
                <asp:TextBox ID="txtNaukriID" runat="server" 
                    TextMode="Email"></asp:TextBox>
            </td>
            <td class="style70" >
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style46" >
                <strong>
                <asp:Label ID="Label10" runat="server" Text="Guardian(if any) :"></asp:Label>
                </strong>
            </td>
            <td class="style8" >
                <asp:TextBox ID="txtgname" runat="server"></asp:TextBox>
            </td>
            <td class="style50" style="border-style: none" >
                <strong>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                    ControlToValidate="txtgname" CssClass="style80" ErrorMessage="a-z" 
                    ValidationExpression="[a-zA-Z]*$"></asp:RegularExpressionValidator>
                </strong></td>
            <td class="style48" >
                <strong>
                <asp:Label ID="Label16" runat="server" Text="Blood Group :"></asp:Label>
                </strong>
            </td>
            <td class="style82" >
                <asp:TextBox ID="txtBloodGroup" runat="server"></asp:TextBox>
            </td>
            <td class="style15" >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ErrorMessage="*" ControlToValidate="txtBloodGroup" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="style16" >
                <strong>
                <asp:Label ID="Label23" runat="server" Text="Mobile No. :"></asp:Label>
                </strong>
            </td>
            <td class="style73" >
                <asp:TextBox ID="txtMobile" runat="server" MaxLength="10"></asp:TextBox>
            </td>
            <td class="style81" >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                    ErrorMessage="*" ControlToValidate="txtMobile" ForeColor="Red">*</asp:RequiredFieldValidator>
                <strong>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" 
                    ControlToValidate="txtMobile" CssClass="style80" ErrorMessage="0-9" 
                    ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
                </strong>
            </td>
            <td class="style17" >
                <strong>
                <asp:Label ID="Label29" runat="server" Text="Blog Address :"></asp:Label>
                </strong>
            </td>
            <td class="style18" >
                <asp:TextBox ID="txtBlogAddress" runat="server" 
                    TextMode="Url"></asp:TextBox>
            </td>
            <td class="style70" >
                &nbsp;</td>
        </tr>
    </table>
    <table class="style6">
        <tr>
            <td class="style56">
                <hr />
                <strong>
                <br />
                <asp:Label ID="Label57" runat="server" CssClass="style58" 
                    Text="Family Information"></asp:Label>
                </strong></td>
        </tr>
    </table>
    <table class="style6">
        <tr>
            <td class="style22">
                <strong>
                <asp:Label ID="Label31" runat="server" Text="Relationship :"></asp:Label>
                </strong>
            </td>
            <td class="style21">
                <asp:DropDownList ID="DDLRelationship" runat="server" CssClass="style76">
                    <asp:ListItem>Select Relationship</asp:ListItem>
                    <asp:ListItem>Father</asp:ListItem>
                    <asp:ListItem>Mother</asp:ListItem>
                    <asp:ListItem>Brother</asp:ListItem>
                    <asp:ListItem>Sister</asp:ListItem>
                    <asp:ListItem>Relative</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style66">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                    ErrorMessage="*" ControlToValidate="DDLRelationship" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="style27">
                <strong>
                <asp:Label ID="Label34" runat="server" Text="No. Of Dependents :"></asp:Label>
                </strong>
            </td>
            <td class="style23">
                <asp:DropDownList ID="DDLDependents" runat="server" CssClass="style76">
                    <asp:ListItem>No. Of Dependents</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style74">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" 
                    ErrorMessage="*" ControlToValidate="DDLDependents" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="style24">
                <strong>
                <asp:Label ID="Label37" runat="server" Text="Category :"></asp:Label>
                </strong>
            </td>
            <td class="style25">
                <asp:DropDownList ID="DDLCategory" runat="server" AutoPostBack="True" 
                    CssClass="style76" 
                    onselectedindexchanged="DDLCategory_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="style70">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" 
                    ErrorMessage="*" ControlToValidate="DDLCategory" ForeColor="Red" 
                    InitialValue="--Select--">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style22">
                <strong>
                <asp:Label ID="Label32" runat="server" Text="Occupation :"></asp:Label>
                </strong>
            </td>
            <td class="style21">
                <asp:DropDownList ID="DDLOccupation" runat="server" CssClass="style76">
                    <asp:ListItem>Select Occupation</asp:ListItem>
                    <asp:ListItem>Government Employee</asp:ListItem>
                    <asp:ListItem>Self-Employed</asp:ListItem>
                    <asp:ListItem>Employee</asp:ListItem>
                    <asp:ListItem>Self Employee</asp:ListItem>
                    <asp:ListItem>Agriculture</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style66">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                    ErrorMessage="*" ControlToValidate="DDLOccupation" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="style27">
                <strong>
                <asp:Label ID="Label35" runat="server" Text="Phone Home :"></asp:Label>
                </strong>
            </td>
            <td class="style23">
                <asp:TextBox ID="txtPhoneHome" runat="server" MaxLength="10"></asp:TextBox>
            </td>
            <td class="style74">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" 
                    ErrorMessage="*" ControlToValidate="txtPhoneHome" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="style24">
                <strong>
                <asp:Label ID="Label38" runat="server" Text="Caste :"></asp:Label>
                </strong>
            </td>
            <td class="style25">
                <asp:DropDownList ID="DDLCaste" runat="server" CssClass="style76">
                    <asp:ListItem>Select Caste</asp:ListItem>
                    <asp:ListItem>Adi Karnataka</asp:ListItem>
                    <asp:ListItem>Adi Dravida</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style70">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" 
                    ErrorMessage="*" ControlToValidate="DDLCaste" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style22">
                <strong>
                <asp:Label ID="Label33" runat="server" Text="Annual Income :"></asp:Label>
                </strong>
            </td>
            <td class="style21">
                <asp:DropDownList ID="DDLAnnualIncome" runat="server" CssClass="style76">
                    <asp:ListItem>Select Annual Income</asp:ListItem>
                    <asp:ListItem>1 Lakhs</asp:ListItem>
                    <asp:ListItem>2 Lakhs</asp:ListItem>
                    <asp:ListItem>3 Lakhs</asp:ListItem>
                    <asp:ListItem>More Than 3 Lakhs</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style66">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                    ErrorMessage="*" ControlToValidate="DDLAnnualIncome" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="style27">
                <strong>
                <asp:Label ID="Label36" runat="server" Text="Religion :"></asp:Label>
                </strong>
            </td>
            <td class="style23">
                <asp:DropDownList ID="DDLReligion" runat="server" AutoPostBack="True" 
                    CssClass="style76" 
                    onselectedindexchanged="DDLReligion_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="style74">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" 
                    ErrorMessage="*" ControlToValidate="DDLReligion" ForeColor="Red" 
                    InitialValue="--Select--">*</asp:RequiredFieldValidator>
            </td>
            <td class="style24">
                <strong>
                <asp:Label ID="Label39" runat="server" Text="Mother Tongue :"></asp:Label>
                </strong>
            </td>
            <td class="style25">
                <asp:DropDownList ID="DDLMotherTongue" runat="server" CssClass="style76">
                    <asp:ListItem>Mother Tongue</asp:ListItem>
                    <asp:ListItem>English</asp:ListItem>
                    <asp:ListItem>French</asp:ListItem>
                    <asp:ListItem>Kannada</asp:ListItem>
                    <asp:ListItem>Tamil</asp:ListItem>
                    <asp:ListItem>Telugu</asp:ListItem>
                    <asp:ListItem>Malayalam</asp:ListItem>
                    <asp:ListItem>Hindi</asp:ListItem>
                    <asp:ListItem>Marathi</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style70">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" 
                    ErrorMessage="*" ControlToValidate="DDLMotherTongue" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
    <table class="style6">
        <tr>
            <td class="style52">
                <hr />
                <strong>
                <br />
                <asp:Label ID="Label58" runat="server" CssClass="style58" 
                    Text="Previous College Information"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label59" runat="server" CssClass="style58" 
                    Text="Current Admission Details"></asp:Label>
                <span class="style52">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span>
                <asp:Label ID="Label60" runat="server" CssClass="style59" 
                    Text="Initial Fee Payment"></asp:Label>
                <span class="style52">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span>
                <asp:Label ID="Label61" runat="server" CssClass="style59" 
                    Text="Permanent Address"></asp:Label>
                </strong></td>
        </tr>
    </table>
    <table class="style55">
        <tr>
            <td class="style29">
                <strong>
                <asp:Label ID="Label40" runat="server" Text="Colege Name :"></asp:Label>
                </strong>
            </td>
            <td class="style30">
                <asp:TextBox ID="txtCollegeName" runat="server" BackColor="White"></asp:TextBox>
            </td>
            <td class="style31">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" 
                    ErrorMessage="*" ControlToValidate="txtCollegeName" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="style31">
                <strong>
                <asp:Label ID="Label52" runat="server" Text="Date Of Admission :"></asp:Label>
                </strong>
            </td>
            <td class="style31">
                <asp:TextBox ID="txtDOA" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td class="style31">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator32" runat="server" 
                    ErrorMessage="*" ControlToValidate="txtDOA" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="style68">
                <strong>
                <asp:Label ID="Label43" runat="server" Text="Total Fee :"></asp:Label>
                </strong>
            </td>
            <td class="style33">
                <asp:TextBox ID="txttotfee" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label46" runat="server" Text="Permanent Address :"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style29">
                <strong>
                <asp:Label ID="Label41" runat="server" Text="Address :"></asp:Label>
                </strong>
            </td>
            <td class="style30">
                <asp:TextBox ID="txtPAddress" runat="server"></asp:TextBox>
            </td>
            <td class="style31">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" 
                    ErrorMessage="*" ControlToValidate="txtPAddress" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="style31">
                <strong>
                <asp:Label ID="Label53" runat="server" Text="Course :"></asp:Label>
                </strong>
            </td>
            <td class="style31">
                <asp:DropDownList ID="DDLCourse" runat="server" CssClass="style76" 
                    AutoPostBack="True" AppendDataBoundItems="True" 
                    onselectedindexchanged="DDLCourse_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="style31">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator33" runat="server" 
                    ErrorMessage="*" ControlToValidate="DDLCourse" ForeColor="Red" 
                    InitialValue="--Select--">*</asp:RequiredFieldValidator>
            </td>
            <td class="style68">
                <strong>
                <asp:Label ID="Label44" runat="server" Text="Remaining Fee :"></asp:Label>
                </strong>
            </td>
            <td class="style33">
                <asp:TextBox ID="txtremfee" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style29">
                <strong>
<asp:Label ID="Label42" runat="server" Text="Course :"></asp:Label>
                </strong>
            </td>
            <td class="style30">
                <asp:TextBox ID="txtPCourse" runat="server"></asp:TextBox>
            </td>
            <td class="style31">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" 
                    ErrorMessage="*" ControlToValidate="txtPCourse" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="style31">
                <strong>
                <asp:Label ID="Label54" runat="server" Text="Semester :"></asp:Label>
                </strong>
            </td>
            <td class="style31">
                <asp:DropDownList ID="DDLSemester" runat="server" CssClass="style76" 
                    AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td class="style31">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator34" runat="server" 
                    ErrorMessage="*" ControlToValidate="DDLSemester" ForeColor="Red" 
                    InitialValue="--Select-- ">*</asp:RequiredFieldValidator>
            </td>
            <td class="style68">
                <strong>
                <asp:Label ID="Label45" runat="server" Text="Initial Payment :"></asp:Label>
                </strong>
            </td>
            <td class="style33">
                <asp:TextBox ID="txtpayingfee" runat="server"> </asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator36" runat="server" 
                    ErrorMessage="*" ControlToValidate="txtpayingfee" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style29">
                <strong>Year Passed :</strong></td>
            <td class="style30">
                <asp:TextBox ID="txtPYear" runat="server"></asp:TextBox>
            </td>
            <td class="style31">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" 
                    ErrorMessage="*" ControlToValidate="txtPYear" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="style31">
                <strong>
                <asp:Label ID="Label55" runat="server" Text="Section :"></asp:Label>
                </strong>
            </td>
            <td class="style31">
                <asp:DropDownList ID="DDLSection" runat="server" CssClass="style76">
                    <asp:ListItem>A</asp:ListItem>
                    <asp:ListItem>B</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style31">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator35" runat="server" 
                    ErrorMessage="*" ControlToValidate="DDLSection" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="style68">
                &nbsp;</td>
            <td class="style33">
                <strong>
                <asp:Button ID="cmdFeecalc" runat="server" Text="Pay Fee And Calculate" 
                    onclick="cmdFeecalc_Click" CausesValidation="False" CssClass="style69" 
                  />
                </strong>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator37" runat="server" 
                    ErrorMessage="Address Field Required!" ControlToValidate="txtAddress" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style29">
                <strong>Promo Status :</strong></td>
            <td class="style30">
                <asp:DropDownList ID="DDLPromo" runat="server" CssClass="style76">
                    <asp:ListItem>Passed</asp:ListItem>
                    <asp:ListItem>Exempted</asp:ListItem>
                    <asp:ListItem>Failed</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style31">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" 
                    ErrorMessage="*" ControlToValidate="DDLPromo" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="style31">
                <strong>
                <asp:Label ID="Label56" runat="server" Text="Roll No :"></asp:Label>
                </strong>
            </td>
            <td class="style31">
                <asp:TextBox ID="txtrollno" runat="server"></asp:TextBox>
            </td>
            <td class="style31">
                &nbsp;</td>
            <td class="style68">
                &nbsp;</td>
            <td class="style33">
                <asp:Label ID="Label63" runat="server" CssClass="style77" 
                    Text="Please Click &amp; Calculate Before Proceeding Registration!"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
</table>
    <table class="style6">
        <tr>
            <td style="border: thin solid #008000; background-color: #99CCFF" 
                class="style61">
                <strong>
                <asp:Label ID="Label62" runat="server" CssClass="style58" 
                    Text="Student Login Account Assignement"></asp:Label>
                </strong></td>
        </tr>
</table>
<table class="style6">
    <tr>
        <td>
            &nbsp;</td>
        <td class="style35">
            &nbsp;</td>
        <td class="style37">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style35">
            <strong>
            <asp:Label ID="Label47" runat="server" Text="Username :"></asp:Label>
            </strong>
        </td>
        <td class="style37">
            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator38" runat="server" 
                ErrorMessage="Username Is Mobdatory!" ControlToValidate="txtUsername" 
                ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style39">
        </td>
        <td class="style40">
            <strong>
            <asp:Label ID="Label48" runat="server" Text="Password :"></asp:Label>
            </strong>
        </td>
        <td class="style41">
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        </td>
        <td class="style39">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator39" runat="server" 
                ErrorMessage="Password Is Mondatory!" ControlToValidate="txtPassword" 
                ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
        <td class="style39">
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style35">
            &nbsp;</td>
        <td class="style37">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
<table class="style6">
    <tr>
        <td class="style42" 
            
            style="border: thin groove #0000FF; text-align: center;">
            <strong>
            <asp:Label ID="Label49" runat="server" Text="Note :" CssClass="style63"></asp:Label>
            <asp:Label ID="Label50" runat="server" 
                
                Text="This Login Convention Made Only For The Particular Registering Student.Please Proceed The Same To The Concerned Student." 
                CssClass="style62"></asp:Label>
            </strong>
        </td>
    </tr>
</table>
<table class="style6">
    <tr>
        <td class="style43">
            <strong>
            <asp:Label ID="lblRegistration" runat="server" ForeColor="#003300" 
                CssClass="style78"></asp:Label>
            </strong>
        </td>
        <td class="style44">
            <strong>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label runat="server" style="text-align: left" Text="Student ID is :" 
                ID="Label51" ForeColor="#FF99FF" CssClass="style79"></asp:Label>
            </strong>
        </td>
        <td>
            <strong>
            <asp:Label ID="lblRegID" runat="server" ForeColor="#339933" CssClass="style79"></asp:Label>
            </strong>
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
<table class="style6">
    <tr>
        <td style="text-align: right">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <strong>
            <asp:Button ID="cmdRegister" runat="server" style="text-align: center" 
                Text="Register" onclick="cmdRegister_Click" ForeColor="#0066FF" 
                CssClass="style69" />
            </strong>
        </td>
        <td class="style45" style="text-align: center">
            <strong>
            <asp:Button ID="cmdReset" runat="server" Text="Reset" 
                onclick="cmdReset_Click" CausesValidation="False" ForeColor="#CC66FF" 
                CssClass="style69" />
            </strong>
        </td>
        <td>
            <strong>
            <asp:Button ID="cmdExit" runat="server" Text="Exit Registration" 
                onclick="cmdExit_Click" CausesValidation="False" ForeColor="#CC0066" 
                CssClass="style69" />
            </strong>
        </td>
    </tr>
</table>
    </asp:Content>
