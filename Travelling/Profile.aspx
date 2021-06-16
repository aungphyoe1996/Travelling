<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Travelling.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TravellingConnectionString %>"
        SelectCommand="
SELECT       [PlaceID],P.PlaceName,[CarID],C.CarName,[UID],[Period],U.UserName,C.PricePerDay*O.Period as Amt
FROM [dbo].[Order] as O 
inner join [Places] as P on P.ID=O.PlaceID 
inner join [Car] as C On C.ID=O.CarID
inner join [User] as U on U.ID=O.UID
where UID=@UID" DeleteCommand="DELETE FROM [dbo].[Order]
      WHERE UID=@UID and PlaceID=@PlaceID">
        <DeleteParameters>
            <asp:Parameter Name="UID"/>
            <asp:Parameter Name="PlaceID" />
        </DeleteParameters>
        <SelectParameters>
            <asp:SessionParameter Name="UID" SessionField="ID" Type="Int32"/>
        </SelectParameters>
    </asp:SqlDataSource>
    
<asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="UID,PlaceID">
    <Columns>
        <asp:BoundField DataField="PlaceID" HeaderText="PlaceID" SortExpression="PlaceID" Visible="False" />
        <asp:BoundField DataField="PlaceName" HeaderText="PlaceName" SortExpression="PlaceName" />
        <asp:BoundField DataField="CarID" HeaderText="CarID" SortExpression="CarID" Visible="False" />
        <asp:BoundField DataField="CarName" HeaderText="CarName" SortExpression="CarName" />
        <asp:BoundField DataField="UID" HeaderText="UID" SortExpression="UID" Visible="False" />
        <asp:BoundField DataField="Period" HeaderText="Period" SortExpression="Period" DataFormatString="{0:d} Day(s)" />
        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
        <asp:BoundField DataField="Amt" HeaderText="Amount" ReadOnly="True" SortExpression="Amt" DataFormatString="{0:d} Kyats" />
        <asp:ButtonField CommandName="Delete" Text="Cancel" />
    </Columns>
    </asp:GridView>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Literal ID="Literal1" runat="server" Text="Total"></asp:Literal>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtTotalAmt" runat="server" Width="89px"></asp:TextBox>
&nbsp;Kyats<br />
    <br />
    <asp:Button ID="btnOrder" runat="server" Text="Order" OnClick="btnOrder_Click" />
    &nbsp;<asp:Label ID="Label1" runat="server" Text="Or"></asp:Label>
&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Select Places</asp:LinkButton>
    </asp:Content>
