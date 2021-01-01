<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="Travelling.LogIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="padding:20px">
        <div >
            <table style="height: 67px; width: 176px;" >
                <tr >
                    <td >
            <asp:Image ID="Image1" runat="server" imageurl="~/Image/user.png"/>
                        </td>
                    <td>
            <asp:Literal ID="Literal1" runat="server">UserName</asp:Literal>
                        </td>
                    <td >
            <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                        </td>
                </tr>

          
          
                <tr >
                    <td >
            <asp:Image ID="Image2" runat="server" imageurl="~/Image/icons8-password-window-24.png"/>
                        </td>
                    <td>
            <asp:Literal ID="Literal2" runat="server">Password</asp:Literal>
                        </td>
                    <td >
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                        </td>
                </tr>

            </table>
        </div>
        <br />
        <div style="padding-left:80px">
            <asp:Button ID="btnLogIn" runat="server" Text="Log In" OnClick="btnLogIn_Click1"  />
        </div>
        <br />
        Don't have an account? <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SignUp.aspx">Register</asp:HyperLink>




    </div>
</asp:Content>
