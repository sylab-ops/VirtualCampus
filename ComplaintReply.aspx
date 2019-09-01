<%@ Page Title="" Language="C#" MasterPageFile="~/Interface.Master" AutoEventWireup="true" CodeBehind="ComplaintReply.aspx.cs" Inherits="VirtualCampus.ComplaintReply" %>
<asp:Content ID="Content1" ContentPlaceHolderID="InterfacetitlePlaceHolder" runat="server">
Complaints Reply Service
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style14
    {
        color: #0099FF;
    }
    .style15
    {
        margin-left: 0px;
    }
    .style16
    {
        text-align: left;
        width: 436px;
    }
    .style17
    {
        color: #3333FF;
    }
        .style18
        {
            font-size: medium;
            color: #FF0000;
        }
        .style19
        {
            color: #0000FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="style6">
    <tr>
        <td class="style12">
            <strong>
            <asp:Label ID="Label2" runat="server" CssClass="style14" 
                Text="Complaints Inbox &amp; Reply Mechanism"></asp:Label>
            <br />
            </strong>
            <hr />
            <table class="style6">
                <tr>
                    <td class="style16">
                        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label7" runat="server" CssClass="style14" 
                            Text="Complaint Addressal Section"></asp:Label>
                        </strong>
                        <br />
                        <br />
                        <asp:Label ID="Label6" runat="server" Text="Complaint_id :"></asp:Label>
                        <asp:TextBox ID="txtComplaint_id" runat="server"></asp:TextBox>
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            CssClass="style18" ErrorMessage="Please Provide Complaint_id!" 
                            ControlToValidate="txtComplaint_id">*</asp:RequiredFieldValidator>
                        </strong>
                        <br />
                        <asp:Label ID="Label5" runat="server" Text="Student_id :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtStudent_id" runat="server"></asp:TextBox>
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            CssClass="style18" ErrorMessage="Please Provide Student_id!" 
                            ControlToValidate="txtStudent_id">*</asp:RequiredFieldValidator>
                        </strong>
                        <br />
                        <asp:Label ID="Label3" runat="server" Text="Subject :"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtSubject" runat="server" CssClass="style15" Width="170px"></asp:TextBox>
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            CssClass="style18" ErrorMessage="Please Provide Subject!" 
                            ControlToValidate="txtSubject">*</asp:RequiredFieldValidator>
                        </strong>
                        <br />
                        <asp:Label ID="Label4" runat="server" Text="Details :"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtReplydetails" runat="server" Height="84px" 
                            TextMode="MultiLine" Width="340px"></asp:TextBox>
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            CssClass="style18" ErrorMessage="Please Provide Details!" 
                            ControlToValidate="txtReplydetails">*</asp:RequiredFieldValidator>
                        </strong>
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="cmdReply" runat="server" onclick="cmdReply_Click" 
                            Text="Reply " />
                        <asp:Button ID="cmdClear" runat="server" onclick="cmdClear_Click" 
                            Text="Clear" CausesValidation="False" />
                        <asp:Button ID="cmdExit" runat="server" onclick="cmdExit_Click" Text="Exit" 
                            CausesValidation="False" />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            DataKeyNames="Complaint_id,Student_id" DataSourceID="SqlDataSource1" 
                            AllowPaging="True" CellPadding="4" 
                            EmptyDataText="No Messages Received! Please  Comeback After Sometimes..Thank You For Your Patience." 
                            ForeColor="#333333" GridLines="Horizontal" Width="671px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:CommandField HeaderText="Selection" ShowSelectButton="True" />
                                <asp:CommandField HeaderText="Delete Complaint" ShowDeleteButton="True" />
                                <asp:BoundField DataField="Complaint_id" HeaderText="Complaint_id" 
                                    InsertVisible="False" ReadOnly="True" SortExpression="Complaint_id" />
                                <asp:BoundField DataField="Student_id" HeaderText="Student_id" 
                                    SortExpression="Student_id" />
                                <asp:BoundField DataField="Studentname" HeaderText="Studentname" 
                                    SortExpression="Studentname" />
                                <asp:BoundField DataField="Subject" HeaderText="Subject" 
                                    SortExpression="Subject" />
                                <asp:BoundField DataField="ComplaintDetails" HeaderText="ComplaintDetails" 
                                    SortExpression="ComplaintDetails" />
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConflictDetection="CompareAllValues" 
                            ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                            DeleteCommand="DELETE FROM [ComplaintPosting] WHERE [Complaint_id] = @original_Complaint_id AND [Student_id] = @original_Student_id AND (([Subject] = @original_Subject) OR ([Subject] IS NULL AND @original_Subject IS NULL)) AND [ComplaintDetails] = @original_ComplaintDetails" 
                            InsertCommand="INSERT INTO [ComplaintPosting] ([Student_id], [Subject], [ComplaintDetails]) VALUES (@Student_id, @Subject, @ComplaintDetails)" 
                            OldValuesParameterFormatString="original_{0}" 
                            SelectCommand="SELECT Complaint_id, Student_id, Studentname, Subject, ComplaintDetails FROM ComplaintPosting" 
                            
                            UpdateCommand="UPDATE [ComplaintPosting] SET [Student_id] = @Student_id, [Subject] = @Subject, [ComplaintDetails] = @ComplaintDetails WHERE [Complaint_id] = @original_Complaint_id AND [Student_id] = @original_Student_id AND (([Subject] = @original_Subject) OR ([Subject] IS NULL AND @original_Subject IS NULL)) AND [ComplaintDetails] = @original_ComplaintDetails">
                            <DeleteParameters>
                                <asp:Parameter Name="original_Complaint_id" Type="Int32" />
                                <asp:Parameter Name="original_Student_id" Type="Int32" />
                                <asp:Parameter Name="original_Subject" Type="String" />
                                <asp:Parameter Name="original_ComplaintDetails" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Student_id" Type="Int32" />
                                <asp:Parameter Name="Subject" Type="String" />
                                <asp:Parameter Name="ComplaintDetails" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Student_id" Type="Int32" />
                                <asp:Parameter Name="Subject" Type="String" />
                                <asp:Parameter Name="ComplaintDetails" Type="String" />
                                <asp:Parameter Name="original_Complaint_id" Type="Int32" />
                                <asp:Parameter Name="original_Student_id" Type="Int32" />
                                <asp:Parameter Name="original_Subject" Type="String" />
                                <asp:Parameter Name="original_ComplaintDetails" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
            <table class="style6">
                <tr>
                    <td>
                        <strong>
                        <asp:Label ID="lblWhatHappened" runat="server" CssClass="style17"></asp:Label>
                        </strong>
                    </td>
                    <td class="style12">
                        <strong>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                            CssClass="style19" HeaderText="Please Correct Following Recommendations :" />
                        </strong>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>
