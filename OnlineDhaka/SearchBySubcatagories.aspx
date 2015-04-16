<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SearchBySubcatagories.aspx.cs" Inherits="OnlineDhaka.SearchBySubcatagories" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
        <asp:ListItem>Mobile</asp:ListItem>
        <asp:ListItem>Tab</asp:ListItem>
        <asp:ListItem>Pc</asp:ListItem>
        <asp:ListItem>Laptop</asp:ListItem>
        <asp:ListItem>Other Electronics</asp:ListItem>
        <asp:ListItem>Tv</asp:ListItem>
        <asp:ListItem>Washing Machine</asp:ListItem>
        <asp:ListItem>Bed</asp:ListItem>
        <asp:ListItem>Sofa</asp:ListItem>
        <asp:ListItem>Other Furnitures</asp:ListItem>
        <asp:ListItem>Dog</asp:ListItem>
        <asp:ListItem>Cat</asp:ListItem>
        <asp:ListItem>Birds</asp:ListItem>
        <asp:ListItem>Rabbit</asp:ListItem>
        <asp:ListItem>Other Pets</asp:ListItem>
        <asp:ListItem>Cars</asp:ListItem>
        <asp:ListItem>Bus</asp:ListItem>
        <asp:ListItem>Cycle</asp:ListItem>
        <asp:ListItem>Bike</asp:ListItem>
        <asp:ListItem>Other Vehicles</asp:ListItem>
        <asp:ListItem>Watch</asp:ListItem>
        <asp:ListItem>Gutter</asp:ListItem>
        <asp:ListItem>Gold</asp:ListItem>
        <asp:ListItem>Other Ornaments</asp:ListItem>
        <asp:ListItem>Boot</asp:ListItem>
        <asp:ListItem>Tenis Ball</asp:ListItem>
        <asp:ListItem>Bat</asp:ListItem>
        <asp:ListItem>Other Sports</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Maroon"></asp:Label>
    <br />
    <br />
    <div style="width:97%; overflow:auto;background-color: orange;padding:10px;" >
    <asp:GridView ID="GridView1"
        runat="server"
        AllowPaging="True"
        AutoGenerateColumns="False"
        DataKeyNames="Id"
        DataSourceID="SqlDataSource1"
        CellPadding="3"
        Width="90%"
        CssClass="cssgridview" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" PageSize="5" CellSpacing="2"
        PagerStyle-CssClass="pgr" OnPreRender="GridView1_PreRender">
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="SearchBySubcatagoriesDetails.aspx?Id={0}" Text="See Details" />
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
            <asp:BoundField DataField="Name" Visible="false" HeaderText="Name" SortExpression="Name" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="AllAdsDropdownlist" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="catagori" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>
