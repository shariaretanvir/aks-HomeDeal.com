﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="OnlineDhaka.User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="alert alert-info" role="alert"><asp:Label ID="Label_Welcome" runat="server" Text="Welcome......."></asp:Label></div>
    <p style="font-weight: 700">

       <%-- <asp:Label ID="Label_Welcome" runat="server" Text="Welcome......."></asp:Label>--%>
    </p>
    <p style="font-weight: 700">
        <asp:Button ID="Button_Logout" CssClass="btn btn-sm btn-danger"  runat="server" OnClick="Button_Logout_Click" Text="Logout" />
    </p>
</asp:Content>
