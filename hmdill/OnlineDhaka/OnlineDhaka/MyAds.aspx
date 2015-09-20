<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MyAds.aspx.cs" Inherits="OnlineDhaka.MyAds" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="font-family:Arial; text-align:center">
        <h2>My Ads</h2>
        <%--<asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" DataSourceID="SqlDataSource1">
            <Fields>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>--%>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField HeaderText="Edit  Delete" ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Id" Visible="false" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="UId" Visible="false" HeaderText="UId" SortExpression="UId" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" SortExpression="PhoneNo" />
                <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                <asp:BoundField DataField="Catagories" HeaderText="Catagories" SortExpression="Catagories" />
                <asp:BoundField DataField="SubCatagories" HeaderText="SubCatagories" SortExpression="SubCatagories" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" DeleteCommand="DELETE FROM [PostAd] WHERE [Id] = @Id" InsertCommand="INSERT INTO [PostAd] ([UId], [Name], [Email], [PhoneNo], [Location], [Catagories], [SubCatagories], [ProductName], [Description], [Price], [Image]) VALUES (@UId, @Name, @Email, @PhoneNo, @Location, @Catagories, @SubCatagories, @ProductName, @Description, @Price, @Image)" SelectCommand="SELECT * FROM [PostAd] WHERE ([UId] = @UId)" UpdateCommand="UPDATE [PostAd] SET [UId] = @UId, [Name] = @Name, [Email] = @Email, [PhoneNo] = @PhoneNo, [Location] = @Location, [Catagories] = @Catagories, [SubCatagories] = @SubCatagories, [ProductName] = @ProductName, [Description] = @Description, [Price] = @Price, [Image] = @Image WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="UId" Type="Int32" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="PhoneNo" Type="String" />
                <asp:Parameter Name="Location" Type="String" />
                <asp:Parameter Name="Catagories" Type="String" />
                <asp:Parameter Name="SubCatagories" Type="String" />
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Price" Type="String" />
                <asp:Parameter Name="Image" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="UId" SessionField="Id" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="UId" Type="Int32" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="PhoneNo" Type="String" />
                <asp:Parameter Name="Location" Type="String" />
                <asp:Parameter Name="Catagories" Type="String" />
                <asp:Parameter Name="SubCatagories" Type="String" />
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Price" Type="String" />
                <asp:Parameter Name="Image" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
