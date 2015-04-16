<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Dog.aspx.cs" Inherits="OnlineDhaka.Dog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="cycle-slideshow">
        <img src="IMG/Electronic1.png" height="200" width="560" data-cycle-fx="tileSlide" data-cycle-tile-vertical="false" />
        <img src="IMG/Electronic1.png" height="200" width="560" data-cycle-fx="tileBlind" data-cycle-tile-count="12" />
        <img src="IMG/computer.jpg" height="200" width="560" data-cycle-fx="tileSlide" data-cycle-tile-count="4" />
        <img src="IMG/phone.jpg" height="200" width="560" data-cycle-fx="tileBlind" data-cycle-tile-vertical="false" />
    </div>
</asp:Content>
