<%@ Page Title="" Language="C#" MasterPageFile="~/Interface.Master" AutoEventWireup="true" CodeBehind="Notifications.aspx.cs" Inherits="VirtualCampus.Notifications" %>
<asp:Content ID="Content1" ContentPlaceHolderID="InterfacetitlePlaceHolder" runat="server">
e-Notifications Service
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style14
    {
        color: #0066CC;
    }
    .style15
    {
        width: 531px;
        text-align: left;
    }
    .style16
    {
        color: #FF0000;
    }
    .style17
    {
        color: #FFFFFF;
            background-color: #009999;
        }
    .style18
    {
        color: #990099;
    }
    .style19
    {
        color: #0000FF;
            font-size: medium;
        }
    .style20
    {
        font-size: medium;
    }
        .style21
        {
            margin-top: 0px;
        }
        .style22
        {
            color: #663300;
            background-color: #FFFF99;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="style6">
    <tr>
        <td class="style12">
            <strong>
            <asp:Label ID="Label2" runat="server" CssClass="style14" 
                Text="Notifications Uploder"></asp:Label>
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
        <td class="style15" style="border: medium ridge #0099FF">
            <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" CssClass="style19" 
                Text="Browse &amp; Upload Notifications"></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" CssClass="style18" 
                Text="Browse Document :"></asp:Label>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblConStatus" runat="server" CssClass="style17"></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lbluploadstatus" runat="server" CssClass="style22"></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label7" runat="server" Text="Remarks :"></asp:Label>
            <asp:TextBox ID="txtRemarks" runat="server" Height="68px" TextMode="MultiLine" 
                Width="306px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtRemarks" CssClass="style20" 
                ErrorMessage="Entering Remarks Are Mondatory" ForeColor="Red">*</asp:RequiredFieldValidator>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:Button ID="cmdUpload" runat="server" Text="Upload Document" 
                onclick="cmdUpload_Click" />
            <br />
            </strong>
        </td>
        <td style="border: medium ridge #0099FF">
            <div class="style12">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataSourceID="SqlDataSource1" 
                ForeColor="#333333" GridLines="None" Width="570px" CssClass="style21" 
                EmptyDataText="There Are No Notications Uploaded Yet!" Height="116px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="File_id" HeaderText="File_id" 
                        SortExpression="File_id" />
                    <asp:BoundField DataField="Filename" HeaderText="Filename" 
                        SortExpression="Filename" />
                    <asp:BoundField DataField="Date" HeaderText="Date" 
                        SortExpression="Date" />
                    <asp:BoundField DataField="Remarks" HeaderText="Remarks" 
                        SortExpression="Remarks" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                DeleteCommand="DELETE FROM Adminfiles WHERE (File_id = @File_id) AND (Filename = @Filename) AND (Remarks = @Remarks)" 
                InsertCommand="INSERT INTO Adminfiles(File_id, Filename, Remarks) VALUES (@File_id, @Filename, @Remarks)" 
                SelectCommand="SELECT File_id, Filename, Date, Remarks FROM Adminfiles" 
                
                UpdateCommand="UPDATE Adminfiles SET File_id = @File_id, Filename = @Filename, Remarks = @Remarks">
                <DeleteParameters>
                    <asp:Parameter Name="File_id" />
                    <asp:Parameter Name="Filename" />
                    <asp:Parameter Name="Remarks" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="File_id" />
                    <asp:Parameter Name="Filename" />
                    <asp:Parameter Name="Remarks" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="File_id" />
                    <asp:Parameter Name="Filename" />
                    <asp:Parameter Name="Remarks" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
<table class="style6">
    <tr>
        <td>
            <asp:Label ID="lblDownDel" runat="server" ForeColor="Red"></asp:Label>
        </td>
        <td class="style12">
            <strong>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                CssClass="style16" />
            </strong>
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
