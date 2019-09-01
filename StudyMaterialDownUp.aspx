<%@ Page Title="" Language="C#" MasterPageFile="~/StudentInterface.Master" AutoEventWireup="true" CodeBehind="StudyMaterialDownUp.aspx.cs" Inherits="VirtualCampus.StudyMaterialDownUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="titleholder" runat="server">
Student File Management Service
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style16
    {
        color: #00CCFF;
    }
    .style17
    {
        color: #0099FF;
        font-size: small;
    }
    .style18
    {
        color: #000000;
    }
    .style19
    {
        color: #FF3300;
    }
    .style20
    {
        color: #FF0000;
    }
    .style21
    {
        color: #006600;
    }
    .style22
    {
        font-weight: bold;
    }
        .style23
        {
            width: 420px;
            text-align: left;
        }
        .style24
        {
            color: #663300;
        }
        .style25
        {
            color: #006666;
        }
        .style26
        {
            color: #663300;
            background-color: #FFFF66;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="style6">
    <tr>
        <td class="style12">
            <strong>
            <asp:Label ID="Label2" runat="server" CssClass="style17" 
                Text="Student Files Management"></asp:Label>
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
                    <td class="style23" style="border: medium ridge #0099FF">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label4" runat="server" Text="Current Student_id :"></asp:Label>
                        <strong>
                        <asp:Label ID="lblCurrentUser" runat="server" CssClass="style19"></asp:Label>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </strong>
                        <asp:Label ID="Label5" runat="server" Text="Current Student Name :"></asp:Label>
                        <strong>
                        <asp:Label ID="lblCurrentUsername" runat="server" CssClass="style20"></asp:Label>
                        <br />
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label3" runat="server" 
                            Text="Upload All Your Documents One By One" CssClass="style18"></asp:Label>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label6" runat="server" Text="Browse File :" CssClass="style24"></asp:Label>
                        <asp:FileUpload ID="FileUpload1" runat="server" 
                     />
                        <br />
                        <br />
                        <asp:Label ID="Label7" runat="server" CssClass="style26" Text="Enter Remarks:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtRemarks" runat="server" Height="48px" TextMode="MultiLine" 
                            Width="196px"></asp:TextBox>
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:Label ID="lblConStatus" runat="server" CssClass="style21"></asp:Label>
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lbluploadstatus" runat="server" CssClass="style25"></asp:Label>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" CssClass="style22" 
                            Text="Upload &amp; Save" onclick="Button1_Click" />
                        </strong>
                    </td>
                    <td style="border: medium ridge #0099FF">
                        <asp:GridView ID="GridView1" runat="server" CssClass="style18" CellPadding="4" 
                            EmptyDataText="There Are No Files Here!" ForeColor="#333333" 
                            GridLines="None" Height="90px" Width="679px" AutoGenerateColumns="False" 
                            DataKeyNames="Student_id,File_id" DataSourceID="SqlDataSource1" 
                            onrowcommand="GridView1_RowCommand">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="Student_id" HeaderText="Student_id" 
                                    SortExpression="Student_id" />
                                <asp:BoundField DataField="File_id" HeaderText="File_id" 
                                    SortExpression="File_id" />
                                <asp:BoundField DataField="Filename" HeaderText="Filename" 
                                    SortExpression="Filename" />
                                <asp:BoundField DataField="Remarks" HeaderText="Remarks" 
                                    SortExpression="Remarks" />
                                <asp:ButtonField CommandName="Download" HeaderText="Download" Text="Download" 
                                    ButtonType="Button" />
                                <asp:ButtonField CommandName="Delete" HeaderText="Delete" Text="Delete" 
                                    ButtonType="Button" />
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
                            DeleteCommand="DELETE FROM Studentfiles WHERE (Student_id = @Student_id) AND (File_id = @File_id)" 
                            InsertCommand="INSERT INTO [Studentfiles] ([Student_id][File_id],[Filename],[Remarks]) VALUES (@Student_id,@File_id,@Filename,@Remarks)" 
                            SelectCommand="SELECT Student_id, File_id, Filename, Remarks FROM Studentfiles" 
                            
                            UpdateCommand="UPDATE Studentfiles SET [Student_id]=@Student_id,[File_id] = @File_id, [Filename] = @Filename,Remarks=@Remarks WHERE Student_id=@Student_id AND File_id=@File_id">
                            <DeleteParameters>
                                <asp:Parameter Name="Student_id" />
                                <asp:Parameter Name="File_id" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Student_id" />
                                <asp:Parameter Name="File_id" />
                                <asp:Parameter Name="Filename" />
                                <asp:Parameter Name="Remarks" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Student_id" />
                                <asp:Parameter Name="File_id" />
                                <asp:Parameter Name="Filename" />
                                <asp:Parameter Name="Remarks" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <br />
                    </td>
                </tr>
            </table>
            <table class="style6">
                <tr>
                    <td>
                        <strong>
                        <asp:Label ID="lblDownDel" runat="server"></asp:Label>
                        </strong></td>
                    <td>
                        <strong>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                            CssClass="style20" Width="631px" />
                        </strong></td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>
