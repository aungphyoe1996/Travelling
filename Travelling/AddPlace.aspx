<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddPlace.aspx.cs" Inherits="Travelling.AddPlace" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <table>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Place Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPlaceName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Description"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
            </td>
        </tr>
        
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Choose Image"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
                
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TravellingConnectionString %>" SelectCommand="SELECT * FROM [Places]"></asp:SqlDataSource>
                
            </td>
        </tr>
        <tr><td>
            <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
            </td></tr>
    </table>



</asp:Content>
