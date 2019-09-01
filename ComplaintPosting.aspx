<%@ Page Title="" Language="C#" MasterPageFile="~/StudentInterface.Master" AutoEventWireup="true" CodeBehind="ComplaintPosting.aspx.cs" Inherits="VirtualCampus.ComplaintPosting" %>
<asp:Content ID="Content1" ContentPlaceHolderID="titleholder" runat="server">
Post Your Complaint
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style16
        {
            font-size: medium;
        }
        .style17
        {
            font-size: medium;
            color: #0099CC;
        }
        .style18
        {
            text-align: left;
            width: 376px;
        }
        .style19
        {
            font-size: small;
        }
        .style20
        {
            font-size: small;
            color: #FF0000;
        }
        .style21
        {
            font-size: small;
            color: #0000FF;
        }
        .style22
        {
            font-size: small;
            color: #FF0000;
            margin-left: 86px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="style6">
        <tr>
            <td class="style12">
                <strong>
                <asp:Label ID="Label2" runat="server" CssClass="style17" Text="Post Complaint"></asp:Label>
                <br />
                </strong>
                <hr />
                <table class="style6">
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                <table class="style6">
                    <tr>
                        <td class="style18" style="border: medium solid #0099CC">
                            <strong>
                            <asp:Label ID="Label6" runat="server" CssClass="style19" Text="Student_id :"></asp:Label>
                            </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtStudent_id" runat="server" Enabled="False" Width="147px"></asp:TextBox>
                            <br />
                            <strong>
                            <asp:Label ID="Label3" runat="server" CssClass="style19" Text="StudentName:"></asp:Label>
                            </strong>&nbsp;
                            <asp:TextBox ID="txtStudentname" runat="server" Enabled="False" Width="144px"></asp:TextBox>
                            <br />
                            <strong>
                            <asp:Label ID="Label4" runat="server" CssClass="style19" Text="Subject :"></asp:Label>
                            </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtSubject" runat="server" Width="247px" 
                                ontextchanged="txtSubject_TextChanged"></asp:TextBox>
                            <br />
                            <strong>
                            <asp:Label ID="Label5" runat="server" CssClass="style19" Text="Details :"></asp:Label>
                            </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtDetails" runat="server" Height="89px" TextMode="MultiLine" 
                                Width="253px"></asp:TextBox>
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="cmdPostComplaint" runat="server" 
                                onclick="cmdPostComplaint_Click" Text="Post Complaint" />
                            <asp:Button ID="cmdReset" runat="server" onclick="cmdReset_Click" 
                                Text="Reset" CausesValidation="False" />
                            <asp:Button ID="cmdexit" runat="server" onclick="cmdexit_Click" Text="Exit" 
                                CausesValidation="False" />
                        </td>
                        <td style="border: medium solid #FF3300">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                CellPadding="4" DataKeyNames="Serial_no" DataSourceID="SqlDataSource1" 
                                EmptyDataText="There Are No Messages! Please File New Complaint!" 
                                ForeColor="#333333" GridLines="None" Height="58px" Width="714px">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="Serial_no" HeaderText="Serial_no" 
                                        InsertVisible="False" ReadOnly="True" SortExpression="Serial_no" />
                                    <asp:BoundField DataField="Subject" HeaderText="Subject" 
                                        SortExpression="Subject" />
                                    <asp:BoundField DataField="Details" HeaderText="Details" 
                                        SortExpression="Details" />
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
                                ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                                DeleteCommand="DELETE FROM [ComplaintReply] WHERE [Serial_no] = @original_Serial_no AND (([Subject] = @original_Subject) OR ([Subject] IS NULL AND @original_Subject IS NULL)) AND [Details] = @original_Details" 
                                InsertCommand="INSERT INTO [ComplaintReply] ([Subject], [Details]) VALUES (@Subject, @Details)" 
                                SelectCommand="SELECT [Serial_no],[Complaint_id],[Student_id], [Subject],[Details] FROM [ComplaintReply] WHERE [Student_id]=@Student_id" 
                                
                                UpdateCommand="UPDATE [ComplaintReply] SET [Subject] = @Subject, [Details] = @Details WHERE [Serial_no] = @original_Serial_no AND (([Subject] = @original_Subject) OR ([Subject] IS NULL AND @original_Subject IS NULL)) AND [Details] = @original_Details" 
                                ConflictDetection="CompareAllValues" 
                                OldValuesParameterFormatString="original_{0}">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_Serial_no" Type="Int32" />
                                    <asp:Parameter Name="original_Subject" Type="String" />
                                    <asp:Parameter Name="original_Details" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="Subject" Type="String" />
                                    <asp:Parameter Name="Details" Type="String" />
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="txtStudent_id" Name="Student_id" 
                                        PropertyName="Text" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="Subject" Type="String" />
                                    <asp:Parameter Name="Details" Type="String" />
                                    <asp:Parameter Name="original_Serial_no" Type="Int32" />
                                    <asp:Parameter Name="original_subject" Type="String" />
                                    <asp:Parameter Name="original_details" Type="String" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <table class="style6">
        <tr>
            <td class="style12">
                <strong>
                            <asp:Label ID="lblWhatHappened" runat="server" CssClass="style20"></asp:Label>
                            </strong>
            </td>
            <td class="style12">
                            <strong>
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                                CssClass="style22" ShowMessageBox="True" Width="252px" />
                            </strong>
            </td>
            <td>
                <strong>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                    runat="server" ControlToValidate="txtSubject" CssClass="style21" 
                    ErrorMessage="Please Provide Subject!">Subject is Empty!</asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtDetails" CssClass="style21" 
                    ErrorMessage="Please Provide Atleast Details!">Details Are Empty!</asp:RequiredFieldValidator>
                            </strong>
            </td>
        </tr>
    </table>
</asp:Content>
