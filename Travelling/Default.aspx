<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Travelling._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <form >
        <div>

           
            <br />
           
          
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal" SeparatorStyle-Width="10" RepeatColumns="5" CellSpacing="10" style="margin-left: 70px" Width="1110px ">
                <ItemStyle BorderStyle="None" />
                <ItemTemplate>
                 

                            <a href="Details.aspx?id=<%# Eval("id") %>">
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("PlaceName") %>' Font-Bold="True" Font-Size="Medium"></asp:Label>
                                <br>
                                <br></br>
                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("Image") %>' Style="width: 120px; height: 150px" />
                            <br>
                            <br></br>
                            </br>
                                </br>
                                </a>
                     <br>
                                    <br></br>
                                    </br>
                    
                </ItemTemplate>

<SeparatorStyle Width="10px"></SeparatorStyle>
            </asp:DataList>
            <br />
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TravellingConnectionString %>" SelectCommand="SELECT * FROM [Places]"></asp:SqlDataSource>

        </div>
    </form>


</asp:Content>
