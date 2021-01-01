<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddCar.aspx.cs" Inherits="Travelling.AddCar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <table style="width: 408px">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Car Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCarName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Number Of Seats"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtNoOfSeats" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Price per Day"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPricePerDay" runat="server"></asp:TextBox>
            </td>
        </tr>
            <tr>
            <td>
                
            </td>
            <td>
                <asp:CheckBox ID="cbAvailable" runat="server" />
                <asp:Label ID="Label4" runat="server" Text="Is Available"></asp:Label>
            </td>
        </tr>
        
        <tr><td>
            <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
            </td></tr>
    </table>


</asp:Content>
