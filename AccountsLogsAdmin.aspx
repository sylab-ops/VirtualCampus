<%@ Page Title="" Language="C#" MasterPageFile="~/Interface.Master" AutoEventWireup="true" CodeBehind="AccountsLogsAdmin.aspx.cs" Inherits="VirtualCampus.AccountsLogsAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="InterfacetitlePlaceHolder" runat="server">
Account's Login's Tracker[Administrator Mode]
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style14
        {
            height: 17px;
            text-align: center;
        }
        .style15
        {
            text-align: left;
        }
        .style16
        {
            width: 389px;
        }
        .style17
        {
            width: 58%;
        }
        .style18
        {
            width: 493px;
        }
        .style19
        {
            color: #0066CC;
        }
        .style20
        {
            text-align: left;
            width: 160px;
        }
        .style21
        {
            font-size: large;
            color: #FF0000;
        }
        .style22
        {
            color: #0000FF;
        }
        .style23
        {
            font-size: medium;
            color: #FF3399;
        }
        .style24
        {
            text-align: center;
            width: 160px;
        }
        .style25
        {
            font-size: medium;
            color: #990099;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="style6">
        <tr>
            <td>
                <strong>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" 
                    Text="Accounts Department Login's Tracker"></asp:Label>
                <br />
                </strong>
                <hr />
                <table class="style6">
                    <tr>
                        <td class="style18">
                            <div>
                                <table class="style17">
                                    <tr>
                                        <td class="style16">
                                            <div class="style15">
                                                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
                                                    AllowSorting="True" AutoGenerateColumns="False" Caption="Tracked Data List" 
                                                    CellPadding="4" DataSourceID="SqlDataSource2" 
                                                    EmptyDataText="No Logs Found Yet! Tracking Is In Active Mode" 
                                                    ForeColor="#333333" GridLines="Horizontal" ShowFooter="True" 
                                                    ShowHeaderWhenEmpty="True" Width="487px">
                                                    <AlternatingRowStyle BackColor="White" />
                                                    <Columns>
                                                        <asp:BoundField DataField="Session_User" HeaderText="Session_User" 
                                                            SortExpression="Session_User" />
                                                        <asp:BoundField DataField="LogDateTime" HeaderText="LogDateTime" 
                                                            SortExpression="LogDateTime" />
                                                        <asp:BoundField DataField="Status" HeaderText="Status" 
                                                            SortExpression="Status" />
                                                    </Columns>
                                                    <EditRowStyle BackColor="#2461BF" />
                                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                                    <RowStyle BackColor="#EFF3FB" />
                                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                                </asp:GridView>
                                            </div>
                                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                                                SelectCommand="SELECT * FROM [AccountsLog]"></asp:SqlDataSource>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                        <td>
                            <div>
                                <table class="style6">
                                    <tr>
                                        <td>
                                            <strong>
                                            <asp:Label ID="Label3" runat="server" CssClass="style19" 
                                                Text="Change Accounts Department Password"></asp:Label>
                                            <br />
                                            </strong>
                                            <hr />
                                            <table class="style6">
                                                <tr>
                                                    <td>
                                                        <strong>
                                                        <asp:Label ID="Label4" runat="server" Text="Current Username :"></asp:Label>
                                                        </strong>
                                                    </td>
                                                    <td class="style20">
                                                        <strong>
                                                        <asp:Label ID="lblCurrentUser" runat="server" CssClass="style21"></asp:Label>
                                                        </strong>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <strong>
                                                        <asp:Label ID="Label5" runat="server" Text="Current Password :"></asp:Label>
                                                        </strong>
                                                    </td>
                                                    <td class="style24">
                                                        <strong>
                                                        <asp:TextBox ID="txtCurPassword" runat="server" CssClass="style25" 
                                                            ReadOnly="True" Width="152px"></asp:TextBox>
                                                        </strong>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="Label6" runat="server" Text=" "></asp:Label>
                                                    </td>
                                                    <td class="style20">
                                                        <asp:TextBox ID="txtNewPassword" runat="server" Width="152px"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                            ControlToValidate="txtNewPassword" CssClass="style22" 
                                                            ErrorMessage="Must Enter New Password!" Font-Bold="True" ForeColor="Blue">(*) Must Enter New Password!</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td class="style20">
                                                        <asp:Button ID="cmdChange" runat="server" onclick="cmdChange_Click" 
                                                            Text="Change Password" />
                                                    </td>
                                                    <td class="style15">
                                                        <asp:Button ID="cmdExit" runat="server" onclick="cmdExit_Click" 
                                                            Text="Exit Page" CausesValidation="False" />
                                                    </td>
                                                </tr>
                                            </table>
                                            <table class="style6">
                                                <tr>
                                                    <td>
                                                        <strong>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <asp:Label ID="lblWhatHappened" runat="server" CssClass="style23"></asp:Label>
                                                        </strong>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
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
