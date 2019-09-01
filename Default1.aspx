<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Default1.aspx.cs" Inherits="VirtualCampus.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="titleplaceholder" runat="server">
Virtual Campus Administration Portal - Home
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Timer ID="Timer1" runat="server" Interval="3000" ontick="Timer1_Tick">
            </asp:Timer>
            <asp:Image ID="Image1" Height="390px" Width="1160px" runat="server" />
        </ContentTemplate>
    </asp:UpdatePanel>
    </asp:Content>
