<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Testing.aspx.cs" Inherits="Travelling.Testing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
    <input type="datetime" id="dtpicker" runat="server">
        <asp:Button ID="btn" runat="server" Text="Click" OnClick="btn_Click" />
        <br />
        <br />
        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        <br />
        <br />
        <br />
        </div>
</asp:Content>
