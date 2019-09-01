<%@ Page Title="" Language="C#" MasterPageFile="~/StudentInterface.Master" AutoEventWireup="true" CodeBehind="RequestEHoliday.aspx.cs" Inherits="VirtualCampus.RequestEHoliday" %>
<asp:Content ID="Content1" ContentPlaceHolderID="titleholder" runat="server">
e-Holiday Request Service
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style16
    {
        background-color: #FFFFCC;
    }
    .style17
    {
        color: #009933;
        background-color: #FFFFCC;
    }
    .style18
    {
        width: 189px;
        text-align: left;
    }
    .style19
    {
        text-align: left;
        width: 263px;
    }
    .style20
    {
        color: #FF0000;
        background-color: #FFFF66;
    }
    .style21
    {
        color: #3333FF;
    }
        .style22
        {
            font-weight: bold;
        }
        .style23
        {
            color: #006600;
        }
        .style24
        {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="style6">
    <tr>
        <td class="style12">
            <strong>
            <asp:Label ID="Label2" runat="server" CssClass="style17" 
                Text="Request e-Leave"></asp:Label>
            <br />
            <br />
            <span class="style23">Student_id :</span><asp:Label ID="lblUser" runat="server" 
                CssClass="style24"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span class="style23">Student_Name :</span><asp:Label ID="lblStuName" 
                runat="server" CssClass="style24"></asp:Label>
            </strong>
            <hr />
            <table class="style6">
                <tr>
                    <td class="style18" style="border: medium ridge #0066CC">
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                            BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" 
                            ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px" 
                            ondayrender="Calendar1_DayRender">
                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                                VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" 
                                Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                            <TodayDayStyle BackColor="#CCCCCC" />
                        </asp:Calendar>
                    </td>
                    <td class="style19" style="border: medium ridge #0066CC">
&nbsp; <strong>
                        <asp:Label ID="Label3" runat="server" CssClass="style21" 
                            Text="Reason For Leave :"></asp:Label>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox1" CssClass="style24" 
                            ErrorMessage="Please Provide Reason">(*) Reason Required </asp:RequiredFieldValidator>
                        </strong>
                        <br />
&nbsp;<strong><asp:Label ID="lblWhatHappened" runat="server" CssClass="style20"></asp:Label>
                        </strong>
                        <br />
                        <asp:TextBox ID="TextBox1" runat="server" Height="154px" TextMode="MultiLine" 
                            Width="252px"></asp:TextBox>
                        <br />
                        <br />
                        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" CssClass="style22" 
                            onclick="Button1_Click" Text="Apply For Holiday" />
                        </strong>
                    </td>
                    <td style="border: medium ridge #0066CC">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            DataKeyNames="Leave_no,Expr1" DataSourceID="SqlDataSource1" 
                            EmptyDataText="No Leaves Requested Yet! " Height="16px" Width="739px" 
                            AllowPaging="True" PageSize="3">
                            <Columns>
                                <asp:BoundField DataField="Leave_no" HeaderText="Leave_no" 
                                    InsertVisible="False" ReadOnly="True" SortExpression="Leave_no" />
                                <asp:BoundField DataField="Student_id" HeaderText="Student_id" 
                                    SortExpression="Student_id" />
                                <asp:BoundField DataField="Student_name" HeaderText="Student_name" 
                                    SortExpression="Student_name" />
                                <asp:BoundField DataField="Leave_Date" HeaderText="Leave_Date" 
                                    SortExpression="Leave_Date" />
                                <asp:BoundField DataField="Reason" HeaderText="Reason" 
                                    SortExpression="Reason" />
                                <asp:BoundField DataField="Status" HeaderText="Status" 
                                    SortExpression="Status" />
                                <asp:BoundField DataField="Expr1" HeaderText="Expr1" InsertVisible="False" 
                                    ReadOnly="True" SortExpression="Expr1" />
                                <asp:BoundField DataField="Expr2" HeaderText="Expr2" SortExpression="Expr2" />
                                <asp:BoundField DataField="Expr3" HeaderText="Expr3" SortExpression="Expr3" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                            DeleteCommand="DELETE FROM Leavesdata WHERE (Leave_no = @Leave_no) AND (Student_id = @Student_id) AND (Student_name = @Student_name)" 
                            InsertCommand="INSERT INTO Leavesdata(Leave_no, Student_id, Student_name, Leave_Date, Reason, Status) VALUES (@Leave_no, @Student_id, @Student_name, @Leave_Date, @Reason, @Status)" 
                            SelectCommand="SELECT Leave_no, Student_id, Student_name, Leave_Date, Reason, Status, Leave_no AS Expr1, Student_id AS Expr2, Student_name AS Expr3 FROM Leavesdata WHERE (Leave_no = Leave_no) AND (Student_id = @Student_id) AND (Student_name = @Student_name)" 
                            
                            
                            UpdateCommand="UPDATE Leavesdata SET Student_id = @Student_id, Student_name = @Student_name, Leave_Date = @Leave_Date, Reason = @Reason, Status = @Status WHERE (Leave_no = @Leave_no) AND (Student_id = @student_id) AND (Student_name = @Student_name)">
                            <DeleteParameters>
                                <asp:Parameter Name="Leave_no" />
                                <asp:Parameter Name="Student_id" />
                                <asp:Parameter Name="Student_name" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Leave_no" />
                                <asp:Parameter Name="Student_id" />
                                <asp:Parameter Name="Student_name" />
                                <asp:Parameter Name="Leave_Date" />
                                <asp:Parameter Name="Reason" />
                                <asp:Parameter Name="Status" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblUser" Name="Student_id" 
                                    PropertyName="Text" />
                                <asp:ControlParameter ControlID="lblStuName" Name="Student_name" 
                                    PropertyName="Text" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Student_id" />
                                <asp:Parameter Name="Student_name" />
                                <asp:Parameter Name="Leave_Date" />
                                <asp:Parameter Name="Reason" />
                                <asp:Parameter Name="Status" />
                                <asp:Parameter Name="Leave_no" />
                                <asp:Parameter Name="student_id" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>
