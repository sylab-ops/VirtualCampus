<%@ Page Title="" Language="C#" MasterPageFile="~/Interface.Master" AutoEventWireup="true" CodeBehind="HolidaySettings.aspx.cs" Inherits="VirtualCampus.HolidaySettings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="InterfacetitlePlaceHolder" runat="server">
Set Holiday On The go 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        
        .style15
        {
            width: 438px;
            text-align: left;
        }
    .style16
    {
        width: 329px;
    }
    .style17
    {
        color: #990033;
    }
    .style18
    {
        font-size: medium;
        color: #0000FF;
    }
    .style19
    {
        text-align: left;
    }
        .style20
        {
            font-weight: bold;
        }
        .style21
        {
            color: #FF3300;
        }
        .style22
        {
            color: #FF0000;
            font-size: small;
            background-color: #FFFFCC;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="style6">
        <tr>
            <td class="style12">
                <strong>
                <asp:Label ID="Label2" runat="server" CssClass="style14" Text="Holiday Setter"></asp:Label>
                <br />
                </strong>
                <hr />
                <table class="style6">
                    <tr>
                        <td>
                            <strong>
                            <asp:Label ID="lblUpdateStatus" runat="server" CssClass="style21"></asp:Label>
                            </strong></td>
                    </tr>
                </table>
                <table class="style6" style="border: medium ridge #0099FF">
                    <tr>
                        <td class="style16" style="border: medium ridge #0099CC">
                            &nbsp;<strong><asp:Label ID="Label1" runat="server" 
                                Text="Select Holiday Date Here" CssClass="style17"></asp:Label></strong>
                            <br />
                            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                                BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" 
                                Font-Size="9pt" ForeColor="Black" Height="233px" NextPrevFormat="ShortMonth" 
                                Width="324px" ondayrender="Calendar1_DayRender">
                                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                                    Height="8pt" />
                                <DayStyle BackColor="#CCCCCC" />
                                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                                <OtherMonthDayStyle ForeColor="#999999" />
                                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" 
                                    Font-Size="12pt" ForeColor="White" Height="12pt" />
                                <TodayDayStyle BackColor="#999999" ForeColor="White" />
                            </asp:Calendar>
                        </td>
                        <td class="style15" style="border: medium ridge #0099CC">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <strong>
                            <asp:Label ID="Label3" runat="server" CssClass="style18" 
                                Text="Reason For The Holiday"></asp:Label>
                            </strong>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <strong>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtReason" CssClass="style22" 
                                ErrorMessage="***Reason Required!***">*** Enter Reason First***</asp:RequiredFieldValidator>
                            </strong>&nbsp;<asp:TextBox ID="txtReason" runat="server" Height="137px" TextMode="MultiLine" 
                                Width="416px"></asp:TextBox>
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <strong>
                            <asp:Button ID="Button1" runat="server" CssClass="style20" 
                                onclick="Button1_Click" Text="Set Holiday" />
                            </strong>
                        </td>
                        <td class="style19" style="border: medium inset #0099CC">
                            <div class="style12">
                            <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                                BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" 
                                CellSpacing="1" GridLines="None" AllowPaging="True" 
                                    AutoGenerateColumns="False" 
                                    DataKeyNames="HolidayCount,DateOfHoliday,ReasonForHoliday" 
                                    DataSourceID="SqlDataSource1" EmptyDataText="There Are No Holidays Set Yet">
                                <Columns>
                                    <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                                    <asp:BoundField DataField="HolidayCount" HeaderText="HolidayCount" 
                                        InsertVisible="False" ReadOnly="True" SortExpression="HolidayCount" />
                                    <asp:BoundField DataField="DateOfHoliday" HeaderText="DateOfHoliday" 
                                        SortExpression="DateOfHoliday" />
                                    <asp:BoundField DataField="ReasonForHoliday" HeaderText="ReasonForHoliday" 
                                        SortExpression="ReasonForHoliday" />
                                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                                </Columns>
                                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#33276A" />
                            </asp:GridView>
                            </div>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                                DeleteCommand="DELETE FROM HolidaySetting WHERE (HolidayCount = @HolidayCount) AND (DateOfHoliday = @DateOfHoliday) AND (ReasonForHoliday = @ReasonForHoliday)" 
                                InsertCommand="INSERT INTO HolidaySetting(DateOfHoliday, ReasonForHoliday) VALUES (@DateOfHoliday, @ReasonForHoliday)" 
                                SelectCommand="SELECT HolidayCount, DateOfHoliday, ReasonForHoliday FROM HolidaySetting" 
                                UpdateCommand="UPDATE HolidaySetting SET DateOfHoliday = @DateOfHoliday, ReasonForHoliday = @ReasonForHoliday WHERE (HolidayCount = @HolidayCount)">
                                <DeleteParameters>
                                    <asp:Parameter Name="HolidayCount" />
                                    <asp:ControlParameter ControlID="txtReason" Name="ReasonForHoliday" 
                                        PropertyName="Text" />
                                    <asp:ControlParameter ControlID="Calendar1" Name="DateOfHoliday" 
                                        PropertyName="SelectedDate" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="DateOfHoliday" />
                                    <asp:Parameter Name="ReasonForHoliday" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:ControlParameter ControlID="Calendar1" Name="DateOfHoliday" 
                                        PropertyName="SelectedDate" />
                                    <asp:ControlParameter ControlID="txtReason" Name="ReasonForHoliday" 
                                        PropertyName="Text" />
                                    <asp:Parameter Name="HolidayCount" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
