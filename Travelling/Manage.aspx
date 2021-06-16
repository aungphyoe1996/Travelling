<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Manage.aspx.cs" Inherits="Travelling.Manage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin-top:10px">
     
                 
<br />
        <asp:GridView ID="GridView1" OnRowDataBound="GridView1_RowDataBound" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
            
            <Columns>
                <asp:TemplateField HeaderText="No.">
    <ItemTemplate>
        <asp:Label ID="lblSerial" runat="server"></asp:Label>
    </ItemTemplate>
</asp:TemplateField>
                <asp:BoundField DataField="PlaceName" HeaderText="PlaceName" SortExpression="PlaceName" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <%--<asp:BoundField DataField="Period" HeaderText="Period" SortExpression="Period" />--%>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>





            <EditRowStyle BackColor="#999999" />
                     <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                     <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                     <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                     <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                     <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                     <SortedAscendingCellStyle BackColor="#E9E7E2" />
                     <SortedAscendingHeaderStyle BackColor="#506C8C" />
                     <SortedDescendingCellStyle BackColor="#FFFDF8" />
                     <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
            
                 &nbsp;<a href="AddPlace.aspx" style="animation:none">Add Place</a>
                 <br />
                 <br />
                 <br />
                 
                  
         <asp:GridView ID="GridView2" OnRowDataBound="GridView1_RowDataBound" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource3">
                     <Columns>

                         <asp:TemplateField HeaderText="No.">
    <ItemTemplate>
        <asp:Label ID="lblSerial" runat="server"></asp:Label>
    </ItemTemplate>
</asp:TemplateField>

                         <asp:BoundField DataField="CarName" HeaderText="CarName" SortExpression="CarName" />
                         <asp:BoundField DataField="ArrivalDate" HeaderText="ArrivalDate" SortExpression="ArrivalDate" DataFormatString="{0:dd-MMM-yyyy}" />
                         <asp:BoundField DataField="Seat" HeaderText="Seat" SortExpression="Seat" />
                         <asp:BoundField DataField="PricePerDay" HeaderText="PricePerDay" SortExpression="PricePerDay" />
                         <asp:CheckBoxField DataField="IsAvailable" HeaderText="IsAvailable" SortExpression="IsAvailable" />
                         <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />

                     </Columns>
              <EditRowStyle BackColor="#999999" />
                     <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                     <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                     <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                     <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                     <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                     <SortedAscendingCellStyle BackColor="#E9E7E2" />
                     <SortedAscendingHeaderStyle BackColor="#506C8C" />
                     <SortedDescendingCellStyle BackColor="#FFFDF8" />
                     <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
                 &nbsp;<a href="AddCar.aspx" style="animation:none">Add Car</a>
                  
                 <br />
            
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TravellingConnectionString %>"
                SelectCommand="SELECT * FROM [Places]" DeleteCommand="DELETE FROM Places where ID=@ID" UpdateCommand="update [Places] set PlaceName=@PlaceName,Description=@Description WHERE (ID=@ID)">
                <DeleteParameters>
                    <asp:Parameter Name="ID" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="PlaceName" />
                    <asp:Parameter Name="Description" />
                    <asp:Parameter Name="ID" />
                </UpdateParameters>
            </asp:SqlDataSource>


            <br />



            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:TravellingConnectionString %>"
                SelectCommand="SELECT * FROM [Car]" DeleteCommand="DELETE FROM [dbo].[Car] where ID=@ID" UpdateCommand="update [Car] set  CarName=@CarName,ArrivalDate=@ArrivalDate,Seat=@Seat,IsAvailable=@IsAvailable,PricePerDay=@PricePerDay WHERE (ID=@ID)"
                >
                <DeleteParameters>
                    <asp:Parameter Name="ID" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CarName" />
                    <asp:Parameter Name="ArrivalDate" />
                    <asp:Parameter Name="Seat" />
                    <asp:Parameter Name="IsAvailable" />
                    <asp:Parameter Name="PricePerDay" />
                    <asp:Parameter Name="ID" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />

        </div>
</asp:Content>
