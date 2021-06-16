<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Travelling.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 27px;
            width : 150px;
        }
           .auto-style2 {
               height: 23px;
           }
    </style>
    
     <Table Id="table" class="table" >
            <tr>
                <th Colspan="2" class="auto-style2">Payment</th>
                
            </tr>
            <tr>
                <td class="auto-style1">Owner Name:</td>
                <td class="auto-style1"><asp:TextBox ID="txtowner" width="250" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Card No:</td>
                <td><asp:TextBox ID="txtId" width="250" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><asp:TextBox ID="txtpw" width="250" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Amount:</td>
                <td><asp:TextBox ID="txtAmt" width="250" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td  >Select Payment:</td>
                <td>
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Image/master.jpg" OnClick="ImageButton1_Click" Width="80px" Height="50px" /> &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Image/visa.png" OnClick="ImageButton2_Click" Width="80px" Height="50px"/> &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Image/paypal.png" OnClick="ImageButton3_Click" Width="80px" Height="50px"/>
                    <br />
                    <asp:Panel ID="pnlPayment" runat="server">
                    </asp:Panel>
                </td>
            </tr>
         
        </Table>
    
</asp:Content>
