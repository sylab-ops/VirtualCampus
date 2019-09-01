<%@ Page Title="" Language="C#" MasterPageFile="~/StudentInterface.Master" AutoEventWireup="true" CodeBehind="HolidayDetails.aspx.cs" Inherits="VirtualCampus.HolidayDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="titleholder" runat="server">
Details Of Holidays
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style16
    {
        color: #0000FF;
    }
    .style17
    {
        color: #0000FF;
        background-color: #FFFFCC;
    }
    .style18
    {
        text-align: left;
        height: 17px;
    }
        .style20
        {
            margin-left: 0px;
            background-color: #FFFF99;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="style6">
    <tr>
        <td class="style12">
            <strong>
            <asp:Label ID="Label2" runat="server" CssClass="style17" 
                Text="Details Of Holidays"></asp:Label>
            <br />
            </strong>
            <hr />
            <table class="style6">
                <tr>
                    <td class="style18">
                        <table class="style6">
                            <tr>
                                <td>
                                    <strong>
                                    <asp:GridView ID="GridView1" runat="server" 
                                        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="HolidayCount" 
                                        DataSourceID="SqlDataSource1" Width="1114px" BackColor="#FFFF99" 
                                        BorderColor="#336666" BorderStyle="Ridge" BorderWidth="3px" CellPadding="4" 
                                        CssClass="style20" GridLines="Horizontal" Height="67px" 
                                        
                                        EmptyDataText="No Holidays Are Hosted Yet! Please Try Back After Sometimes">
                                        <Columns>
                                            <asp:CommandField ShowSelectButton="True" HeaderText="Strengthen Row" 
                                                SelectText="Highlight" />
                                            <asp:BoundField DataField="HolidayCount" HeaderText="HolidayCount" 
                                                InsertVisible="False" ReadOnly="True" SortExpression="HolidayCount" />
                                            <asp:BoundField DataField="DateOfHoliday" HeaderText="DateOfHoliday" 
                                                SortExpression="DateOfHoliday" />
                                            <asp:BoundField DataField="ReasonForHoliday" HeaderText="ReasonForHoliday" 
                                                SortExpression="ReasonForHoliday" />
                                        </Columns>
                                        <FooterStyle BackColor="White" ForeColor="#333333" />
                                        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="White" ForeColor="#333333" />
                                        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                        <SortedAscendingHeaderStyle BackColor="#487575" />
                                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                        <SortedDescendingHeaderStyle BackColor="#275353" />
                                    </asp:GridView>
                                    </strong>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                                        SelectCommand="SELECT * FROM [HolidaySetting]"></asp:SqlDataSource>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>
