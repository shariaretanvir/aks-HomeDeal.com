﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Ornaments.aspx.cs" Inherits="OnlineDhaka.Ornaments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="cycle-slideshow">
        <img src="IMG/bicycle.jpg" height="200" width="560" data-cycle-fx="tileSlide" data-cycle-tile-vertical="false" />
        <img src="IMG/bus.jpg" height="200" width="560" data-cycle-fx="tileBlind" data-cycle-tile-count="12" />
        <img src="IMG/car2.png" height="200" width="560" data-cycle-fx="tileSlide" data-cycle-tile-count="4" />
        <img src="IMG/motorcycle.jpg" height="200" width="560" data-cycle-fx="tileBlind" data-cycle-tile-vertical="false" />
        <img src="IMG/privateCar.jpg" height="200" width="560" data-cycle-fx="tileSlide" data-cycle-tile-vertical="false" />
    </div>
    <div style="padding-top: 20px; padding-bottom: 100px; margin-left: 60px;">

    <asp:Menu ID="EMenu" runat="server" BackColor="#FFFBD6" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" StaticSubMenuIndent="10px">
        <DynamicHoverStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <DynamicMenuItemStyle BackColor="#0099FF" BorderStyle="Solid" BorderWidth="1px" ForeColor="Black" HorizontalPadding="5px" VerticalPadding="2px" />
        <DynamicMenuStyle BackColor="#FFFBD6" />
        <DynamicSelectedStyle BackColor="#FFCC66" />
        <Items>
            <asp:MenuItem NavigateUrl="~/Ornaments.aspx" Text="Ornaments" Value="Ornaments">
                <asp:MenuItem NavigateUrl="~/Gold.aspx" Text="Gold" Value="Gold"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Watch.aspx" Text="Watch" Value="Watch"></asp:MenuItem>

                <asp:MenuItem NavigateUrl="~/OtherOrnaments.aspx" Text="Others" Value="Others"></asp:MenuItem>
            </asp:MenuItem>
        </Items>



        <StaticHoverStyle BackColor="#990000" ForeColor="White" />
        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <StaticSelectedStyle BackColor="#FFCC66" />



    </asp:Menu>
        </div>
    <div style="width:97%; overflow:auto;background-color: orange;padding:10px;" >

    <asp:GridView ID="GridView1"
        runat="server"
        AutoGenerateColumns="False"
        DataKeyNames="Id"
        DataSourceID="SqlDataSource1"
        AllowPaging="True" CellPadding="3"
        Width="90%"
        CssClass="cssgridview" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" PageSize="5" CellSpacing="2"
        PagerStyle-CssClass="pgr">

        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="OrnamentsDetails.aspx?Id={0}" Text="See Details" />
            <asp:TemplateField HeaderText="Image" SortExpression="Image">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Image") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" Height="82px" Width="120px" runat="server" ImageUrl='<%# Bind("Image") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
            <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" SortExpression="PhoneNo" />
            <asp:BoundField DataField="Id" Visible="false" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Name" HeaderText="Name" Visible="false" SortExpression="Name" />
            <asp:BoundField DataField="Email" Visible="false" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Catagories" Visible="false" HeaderText="Catagories" SortExpression="Catagories" />
            <asp:BoundField DataField="SubCatagories" Visible="false" HeaderText="SubCatagories" SortExpression="SubCatagories" />
            <asp:BoundField DataField="Description" Visible="false" HeaderText="Description" SortExpression="Description" />
        </Columns>

        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" Height="110px" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
        </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [PostAd] WHERE ([Catagories] = @Catagories)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="Ornaments" Name="Catagories" QueryStringField="Ornaments" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>
