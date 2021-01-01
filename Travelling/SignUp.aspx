<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Travelling.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <table style="width: 305px; height: 185px;">
            <tr>
                <td>
                    <asp:Literal ID="Literal1" runat="server">Full Name</asp:Literal>
                </td>
                <td>
                    <asp:TextBox ID="txtFullName" runat="server"></asp:TextBox>
                </td>
            </tr>
              <tr>
                <td>
                    <asp:Literal ID="Literal2" runat="server">Address</asp:Literal>
                </td>
                <td>
                    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                </td>
            </tr>
              <tr>
                <td>
                    <asp:Literal ID="Literal3" runat="server">Email</asp:Literal>
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
            </tr>
              <tr>
                <td>
                    <asp:Literal ID="Literal4" runat="server">Phone No.</asp:Literal>
                </td>
                <td>
                    <asp:TextBox ID="txtPhoneNo" runat="server"></asp:TextBox>
                </td>
            </tr>
              <tr>
                <td>
                    <asp:Literal ID="Literal5" runat="server">User Name</asp:Literal>
                </td>
                <td>
                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                </td>
            </tr>
              <tr>
                <td>
                    <asp:Literal ID="Literal6" runat="server">Password</asp:Literal>
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
    </div><br />
    <div style="padding-left:80px">
        <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
    </div>
    <asp:Label ID="lbl1" runat="server" Text="Label" Visible="false"  ForeColor="Red"></asp:Label>
    <br />
    Already have an account? <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/LogIn.aspx">Log In</asp:HyperLink>
</asp:Content>
