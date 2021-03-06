﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Home_FurnitureDetails.aspx.cs" Inherits="OnlineDhaka.Home_FurnitureDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="width:97%; overflow:auto;background-color: orange;padding:0px 0px 0px 30px;" >
    <asp:DetailsView ID="DetailsView1" 
        runat="server" 
        Height="50px" 
        Width="90%" 
        AutoGenerateRows="False" 
        DataKeyNames="Id" 
        DataSourceID="SqlDataSource1"
        CssClass="cssdetailsview"
        HeaderStyle-CssClass="td"
        FieldHeaderStyle-CssClass="fieldheader"
        ItemStyle-CssClass="item"
        AlternatingRowStyle-CssClass="altrow"
        CommandRowStyle-CssClass="command"
        PagerStyle-CssClass="pager" HeaderText="Product Details">
        <AlternatingRowStyle CssClass="altrow"></AlternatingRowStyle>

        <CommandRowStyle CssClass="command"></CommandRowStyle>

        <FieldHeaderStyle CssClass="fieldheader"></FieldHeaderStyle>
        <Fields>
            <asp:BoundField DataField="Id" Visible="false" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" SortExpression="PhoneNo" />
            <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
            <asp:BoundField DataField="Catagories" HeaderText="Catagories" SortExpression="Catagories" />
            <asp:BoundField DataField="SubCatagories" HeaderText="SubCatagories" SortExpression="SubCatagories" />
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:TemplateField HeaderText="Image" SortExpression="Image">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Image") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Image") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" Height="199px" Width="232px" runat="server" ImageUrl='<%# Bind("Image") %>' />
                </ItemTemplate>
            </asp:TemplateField>
        </Fields>
        <HeaderStyle CssClass="header"></HeaderStyle>

<PagerStyle CssClass="pager"></PagerStyle>

    </asp:DetailsView>
        </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [PostAd] WHERE ([Id] = @Id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Id" QueryStringField="Id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
