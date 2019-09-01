<%@ Page Title="" Language="C#" MasterPageFile="~/Interface.Master" AutoEventWireup="true" CodeBehind="UpDownFiles.aspx.cs" Inherits="VirtualCampus.UpDownFiles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="InterfacetitlePlaceHolder" runat="server">
File Management Service, Upload/Download Service
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style17
    {
        font-size: 15pt;
        color: #000000;
    }
        .style18
        {
            width: 455px;
        }
        .style19
        {
            font-weight: bold;
        }
        .style20
        {
            font-size: 12px;
            color: #009900;
        }
        .style21
        {
            font-size: small;
            color: #FF0000;
        }
        .style22
        {
            color: #00CCFF;
        }
        .style23
        {
            font-size: small;
            color: #FF0000;
            background-color: #FFFF99;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="style6">
    <tr>
        <td class="style12">
            <strong>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" CssClass="style17" 
                Text="Upload And Download Files"></asp:Label>
            <br />
            </strong>
            <table class="style6">
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <table class="style6">
                <tr>
                    <td class="style18" style="border: medium solid #0099CC">
                        <br />
                        <strong>
                        <asp:Label ID="lblDownDel" runat="server" CssClass="style21"></asp:Label>
                        </strong>
                        <br />
                        <br />
                        <strong>All Types Of Files Are Supported!</strong><br />
                        <br />
                        <strong>
                        <asp:Label ID="Label3" runat="server" Text="Browse file :" CssClass="style22"></asp:Label>
                        </strong>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                        <br />
                        <br />
                        <strong>
                        <asp:Label ID="lblConStatus" runat="server" CssClass="style20"></asp:Label>
                        </strong>
                        <br />
                        <asp:Label ID="lbluploadstatus" runat="server" CssClass="style21"></asp:Label>
                        <br />
                        <strong>
                        <asp:Button ID="cmdUpload" runat="server" CssClass="style19" 
                            onclick="cmdUpload_Click" Text="Upload" Width="76px" />
                        </strong>
                    </td>
                    <td style="border: medium ridge #FF9900">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
                            EmptyDataText="There Are No Documents Uploaded Yet To Display " 
                            AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="Horizontal" 
                            Height="175px" onrowcommand="GridView1_RowCommand" 
                            Width="639px" DataKeyNames="File_id">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="File_id" HeaderText="File_id" 
                                    SortExpression="File_id" />
                                <asp:BoundField DataField="Filename" HeaderText="Filename" 
                                    SortExpression="Filename" />
                                <asp:ButtonField ButtonType="Button" CommandName="Download" 
                                    HeaderText="Download" Text="Download" />
                                <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="Delete" 
                                    Text="Delete" />
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
                            DeleteCommand="DELETE FROM [files] WHERE [File_id] = @File_id" 
                            InsertCommand="INSERT INTO [files] ([Filename]) VALUES (@Filename)" 
                            SelectCommand="SELECT [File_id], [Filename] FROM [files]" 
                            UpdateCommand="UPDATE files SET [File_id] = @File_id, [Filename] = @Filename WHERE File_id=@File_id">
                            <DeleteParameters>
                                <asp:Parameter Name="File_id" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Filename" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="File_id" />
                                <asp:Parameter Name="Filename" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
</table>
    <table class="style6">
        <tr>
            <td class="style12">
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" CssClass="style23" 
                    
                    Text="Caution : This Feature Is For The Cloud Documents Management Purpose,Don't Upload Unncessary &amp; Invalid Files.."></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
