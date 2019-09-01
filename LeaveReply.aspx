<%@ Page Title="" Language="C#" MasterPageFile="~/Interface.Master" AutoEventWireup="true" CodeBehind="LeaveReply.aspx.cs" Inherits="VirtualCampus.LeaveReply" %>
<asp:Content ID="Content1" ContentPlaceHolderID="InterfacetitlePlaceHolder" runat="server">
e-Leaves Management Service
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style14
    {
        color: #0066CC;
    }
        .style15
        {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="style6">
    <tr>
        <td class="style12">
            <strong>
            <asp:Label ID="Label2" runat="server" CssClass="style14" 
                Text="Student Leaves List"></asp:Label>
            <br />
            </strong>
            <hr />
        </td>
    </tr>
</table>
<table class="style6">
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
<table class="style6">
    <tr>
        <td>
            <div class="style12">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Leave_no" 
                DataSourceID="SqlDataSource1" Width="1116px" 
                    onrowcommand="GridView1_RowCommand" 
                    EmptyDataText="There Are No Leave Letters Received, Thank You!" 
                   >
                <Columns>
                    <asp:CommandField ShowSelectButton="True" HeaderText="Selection" />
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
                    <asp:ButtonField CommandName="Accept" HeaderText="Accept" Text="Accept" >
                    <ControlStyle BorderStyle="Solid" />
                    </asp:ButtonField>
                    <asp:ButtonField CommandName="Reject" HeaderText="Reject" Text="Reject" >
                    <ControlStyle BorderStyle="Solid" />
                    </asp:ButtonField>
                    <asp:CommandField HeaderText="Delete Record" ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                DeleteCommand="DELETE FROM Leavesdata WHERE (Leave_no = @Leave_no) AND (Student_id = @Student_id) AND (Student_name = @Student_name)" 
                InsertCommand="INSERT INTO Leavesdata(Leave_no, Student_id, Student_name, Leave_Date, Reason, Status) VALUES (@Leave_no, @Student_id, @Student_name, @Leave_Date, @Reason, @Status)" 
                SelectCommand="SELECT Leave_no, Student_id, Student_name, Leave_Date, Reason, Status FROM Leavesdata" 
                
                UpdateCommand="UPDATE Leavesdata SET Status = @Accepted WHERE (Leave_no = @Leave_no) AND (Student_id = @Student_id) AND (Student_name = @Student_name)" 
                ConflictDetection="CompareAllValues">
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
                <UpdateParameters>
                    <asp:Parameter Name="Accepted" DefaultValue="Accepted" Type="String" />
                    <asp:Parameter Name="Leave_no" />
                    <asp:Parameter Name="Student_id" />
                    <asp:Parameter Name="Student_name" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
    <table class="style6">
        <tr>
            <td class="style12">
                <strong>
                <asp:Label ID="lblWhatHappened" runat="server" CssClass="style15"></asp:Label>
                </strong>
            </td>
        </tr>
    </table>
</asp:Content>
