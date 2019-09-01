<%@ Page Title="" Language="C#" MasterPageFile="~/StudentInterface.Master" AutoEventWireup="true" CodeBehind="NotifyInbox.aspx.cs" Inherits="VirtualCampus.NotifyInbox" %>
<asp:Content ID="Content1" ContentPlaceHolderID="titleholder" runat="server">
Notifications Inbox
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style16
    {
        width: 31px;
    }
    .style17
    {
        width: 279px;
    }
        .style18
        {
            color: #FF0000;
        }
        .style19
        {
            color: #0000FF;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="style6">
    <tr>
        <td class="style12">
            <strong>
            <asp:Label ID="Label2" runat="server" Text="Notification Inbox "></asp:Label>
            <br />
            </strong>
            <hr />
            <table class="style6">
                <tr>
                    <td class="style17">
                        &nbsp;</td>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            DataSourceID="SqlDataSource1" 
                            EmptyDataText="There Are No Messages Or Notifications!" Width="564px" 
                            CssClass="style15" onrowcommand="GridView1_RowCommand">
                            <Columns>
                                <asp:BoundField DataField="File_id" HeaderText="File_id" 
                                    SortExpression="File_id" />
                                <asp:BoundField DataField="Filename" HeaderText="Filename" 
                                    SortExpression="Filename" />
                                <asp:BoundField DataField="Date" HeaderText="Date" 
                                    SortExpression="Date" />
                                <asp:BoundField DataField="Remarks" HeaderText="Remarks" 
                                    SortExpression="Remarks" />
                                <asp:ButtonField ButtonType="Button" CommandName="Download" 
                                    HeaderText="Download" Text="Download" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                            SelectCommand="SELECT * FROM [Adminfiles]"></asp:SqlDataSource>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <table class="style6">
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" CssClass="style18" 
                            Text="These Notifications Are Confidntial In Nature, Never Display or Disclose or Distribute Anywhere...."></asp:Label>
                    </td>
                </tr>
            </table>
            <table class="style6">
                <tr>
                    <td>
                        <strong>
                        <asp:Label ID="lblDownDel" runat="server" CssClass="style19"></asp:Label>
                        </strong>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>
