<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ViewProfile.aspx.cs" Inherits="OnlineDhaka.ViewProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .nav {
        padding-right:10px;
        padding-left:10px;
        text-decoration:none;
         text-align:center;
        }
        
        .auto-style1 {
            color: #000000;
            text-align: left;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h2 style="text-align:center">Welcome To Your Profile &quot;<asp:Label ID="Labelp" runat="server" Text=""></asp:Label> &quot;</h2>
    </div>
    <div class="log_reg" style="border:1px solid black; text-align:center">
        <asp:HyperLink ID="HyperLink1" NavigateUrl="YourAds.aspx" CssClass="nav" runat="server">See You Ads</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" NavigateUrl="Activities.aspx" CssClass="nav" runat="server">Activities</asp:HyperLink>
        <asp:HyperLink ID="HyperLink3" NavigateUrl="ChangePass.aspx" CssClass="nav" runat="server">Change Password</asp:HyperLink>
    </div>
    <h3 class="auto-style1">
        About You
    </h3>
    <h3 class="auto-style1">
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="Id" Visible="false" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Area" HeaderText="Area" SortExpression="Area" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" DeleteCommand="DELETE FROM [RegData] WHERE [Id] = @Id" InsertCommand="INSERT INTO [RegData] ([Username], [Email], [Area]) VALUES (@Username, @Email, @Area)" SelectCommand="SELECT [Id], [Username], [Email], [Area] FROM [RegData] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [RegData] SET [Username] = @Username, [Email] = @Email, [Area] = @Area WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Area" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="Id" SessionField="ID" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Area" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </h3>

</asp:Content>
