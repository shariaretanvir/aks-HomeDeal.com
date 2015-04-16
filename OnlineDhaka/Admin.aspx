<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="OnlineDhaka.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="searchDiv">
        <asp:Label ID="search" runat="server" Text="Search"></asp:Label>

        <asp:TextBox ID="searchBox" runat="server" Width="350px" Height="20px"></asp:TextBox>
    
        <asp:Button ID="searchButton" runat="server" Width="50px" Height="25px" text="Go" />
    </div>
</asp:Content>
