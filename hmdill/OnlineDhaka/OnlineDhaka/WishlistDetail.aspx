<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="WishlistDetail.aspx.cs" Inherits="OnlineDhaka.WishlistDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="font-family:Arial">
        <table border="1" style="background-color: #C0C0C0 ; width:500px">
            <tr style="text-align:center">
                <td colspan="2">
                    Product Details
                </td>
            </tr>
            <tr>
                <td style="text-align:center">
                    <b>Name</b>
                </td>
                <td style="text-align:center">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
             <tr>
                <td style="text-align:center">
                    <b>Email</b>
                </td>
                <td style="text-align:center">
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
            </tr>
             <tr>
                <td style="text-align:center">
                    <b>Phone No</b>
                </td>
                <td style="text-align:center">
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
            </tr>
             <tr>
                <td style="text-align:center">
                    <b>Location</b>
                </td>
                <td style="text-align:center">
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
            </tr>
             <tr>
                <td style="text-align:center">
                    <b>Catagory</b>
                </td>
                <td style="text-align:center">
                    <asp:Label ID="Label5" runat="server"></asp:Label>
                </td>
            </tr>
             <tr>
                <td style="text-align:center">
                    <b>Sub-Catagory</b>
                </td>
                <td style="text-align:center">
                    <asp:Label ID="Label6" runat="server"></asp:Label>
                </td>
            </tr>
             <tr>
                <td style="text-align:center">
                    <b>Product Name</b>
                </td>
                <td style="text-align:center">
                    <asp:Label ID="Label7" runat="server"></asp:Label>
                </td>
            </tr>
             <tr>
                <td style="text-align:center">
                    <b>Description</b>
                </td>
                <td style="text-align:center">
                    <asp:Label ID="Label8" runat="server"></asp:Label>
                </td>
            </tr>
             <tr>
                <td style="text-align:center"> 
                    <b>Price</b>
                </td>
                <td style="text-align:center">
                    <asp:Label ID="Label9" runat="server"></asp:Label>
                </td>
            </tr>

             <tr>
                <td style="text-align:center">
                    <b>Image</b>
                </td>
                <td style="text-align:center">
                    <asp:Image ID="Image1" runat="server" />
                    
                    <asp:Label ID="Label10" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
