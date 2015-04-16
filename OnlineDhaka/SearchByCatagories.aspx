<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SearchByCatagories.aspx.cs" Inherits="OnlineDhaka.SearchByCatagories" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
        <asp:ListItem>Electronics</asp:ListItem>
        <asp:ListItem>Furniture</asp:ListItem>
        <asp:ListItem>Pet</asp:ListItem>
        <asp:ListItem>Vehicles</asp:ListItem>
        <asp:ListItem>Ornaments</asp:ListItem>
        <asp:ListItem>Sports</asp:ListItem>
        <asp:ListItem>Others</asp:ListItem>
    </asp:DropDownList>
    <br />
    <div style="width:97%; overflow:auto;background-color: orange;padding:10px;" >
    <asp:GridView ID="GridView1"
        runat="server"
        AutoGenerateColumns="False"
        DataKeyNames="Id"
        DataSourceID="SqlDataSource1"
        AllowPaging="True"
        CellPadding="3"
        Width="90%"
        CssClass="cssgridview" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" PageSize="5" CellSpacing="2"
        PagerStyle-CssClass="pgr">
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="SearchByCatagoriesDetails.aspx?Id={0}" Text="See Details" />
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
