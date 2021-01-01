<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Travelling.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TravellingConnectionString %>"
        SelectCommand="
SELECT       [PlaceID],P.PlaceName,[CarID],C.CarName,[UID],[Period],U.UserName,C.PricePerDay*O.Period as Amt
FROM [dbo].[Order] as O 
inner join [Places] as P on P.ID=O.PlaceID 
inner join [Car] as C On C.ID=O.CarID
inner join [User] as U on U.ID=O.UID
where UID=@UID
" DeleteCommand="DELETE FROM [dbo].[Order]
      WHERE UID=@UID">
        <DeleteParameters>
            <asp:SessionParameter Name="UID" SessionField="ID" />
        </DeleteParameters>
        <SelectParameters>
            <asp:SessionParameter Name="UID" SessionField="ID" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="443px">
        <Columns>
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
            <asp:BoundField DataField="PlaceName" HeaderText="PlaceName" SortExpression="PlaceName" />
            <asp:BoundField DataField="CarName" HeaderText="CarName" SortExpression="CarName" />
            <asp:BoundField DataField="Period" DataFormatString="{0:d} Day(s)" HeaderText="Period" SortExpression="Period" />
            <asp:BoundField DataField="Amt" DataFormatString="{0:d} Kyats" HeaderText="Total Amount" SortExpression="Amt" />
            <asp:CommandField DeleteText="Cancel" ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>

    <asp:Button ID="btnOrder" runat="server" Text="Order" OnClick="btnOrder_Click" />
    &nbsp;<asp:Label ID="Label1" runat="server" Text="Or"></asp:Label>
&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Select Places</asp:LinkButton>
    </asp:Content>
