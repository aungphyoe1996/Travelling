<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="Travelling.MainPage" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                 

                           
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("FlowerName") %>' Font-Bold="True" Font-Size="Medium"></asp:Label>
                                <br>
                                </br>
                                <asp:Image Style="width: 120px; height: 150px" ID="Image2" runat="server" ImageUrl='<%# Eval("FlowerPicture") %>' />
                                    <br>
                                    </br>
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("Price") %>' Font-Bold="True" Font-Size="Small"></asp:Label><span style="font-style: bold;"> Kyats</span>
                     <br>
                                    </br>
                    
                </ItemTemplate>

<SeparatorStyle Width="10px"></SeparatorStyle>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TravellingConnectionString %>" SelectCommand="SELECT [PlaceName], [Image] FROM [Places]"></asp:SqlDataSource>
    </div>

</asp:Content>
