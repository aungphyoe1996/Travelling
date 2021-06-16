<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="Travelling.Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>

            <asp:Label ID="Label1" runat="server" BorderStyle="None" Font-Size="X-Large" Text="T&T Car Rental"></asp:Label>
            <br />
        <table>
            <tr valign="top" >
                <td style="padding-top=10px" >

            <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource1" Width="376px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black"  Height="172px" style="margin-top: 0px">
               
                <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                
                <ItemTemplate>
                    &nbsp;<asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("Image") %>' Width="287px" Height="286px" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="PlaceLabel" runat="server" Text='<%# Eval("PlaceName") %>' />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   
                    <br /><br />
                    &nbsp;<asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
                    <br />
                    

                </ItemTemplate>
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            </asp:FormView>
                    </td>
                
            <br />
                <td style="height: 577px">
            <asp:Literal ID="Literal1" runat="server" Text="Select Car"></asp:Literal>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" AppendDataBoundItems="True" runat="server" DataSourceID="SqlDataSource2" DataTextField="CarName" DataValueField="ID" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1" AutoPostBack="True">
                
                             
            </asp:DropDownList>
                    
&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />


            <br />



            <asp:Literal ID="Literal2" runat="server" Text="Number of Seats"></asp:Literal>
            :&nbsp;
            <asp:TextBox ID="txtNoOfSeat" runat="server" ReadOnly="True"></asp:TextBox>
            <br />
            <br />
            <asp:Literal ID="Literal3" runat="server" Text="Price per Day"></asp:Literal>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtPricePerDay" runat="server" ReadOnly="True"></asp:TextBox>
            <br />
                    <br />
                    <asp:Literal ID="Literal5" runat="server" Text="Start Date"></asp:Literal>
&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px"   >
                        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                        <WeekendDayStyle BackColor="#CCCCFF" />
                    </asp:Calendar>
                    <br />
                    <asp:Literal ID="Literal4" runat="server" Text="End Date"></asp:Literal>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:Calendar ID="Calendar2" OnSelectionChanged="Calendar2_SelectionChanged" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px" TargetControlID="txtEndDate"
                PopupPosition="Right" Format="dd/MM/yyyy">
                        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                        <WeekendDayStyle BackColor="#CCCCFF" />
                    </asp:Calendar>
                    <br />
                    &nbsp;<asp:Literal ID="Literal6" runat="server" Text="Total Amount"></asp:Literal>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtTotalAmt" runat="server" Enabled="False"></asp:TextBox>
                    <br />
                    <br />
                </td></tr>
           <tr ><td style="padding-left:500px"> 
               <asp:Button ID="btnConfirm" runat="server" Text="Confirm" style="border-radius=10px" OnClick="Button1_Click" BorderStyle="Ridge" BackColor="#669999" BorderColor="#669999"/>

                

                </td><td><asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Check Amount" /></td></tr></table>
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TravellingConnectionString %>" SelectCommand="SELECT CarName, ID FROM Car WHERE (IsAvailable =@isAvailable)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="true" Name="isAvailable" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TravellingConnectionString %>" SelectCommand="SELECT * FROM [Places] WHERE ([ID] = @ID)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="ID" QueryStringField="id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>

        </div>


</asp:Content>
