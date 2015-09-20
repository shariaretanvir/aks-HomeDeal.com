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
        .padding {
        padding:10px;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h2 style="text-align:center">Welcome To Your Profile &quot;<asp:Label ID="Labelp" runat="server" Text=""></asp:Label> &quot;</h2>
    </div>
    <div class="" style=" text-align:center">
        <asp:HyperLink ID="HyperLink1" NavigateUrl="MyAds1.aspx" CssClass="btn btn-primary" runat="server">See You Ads</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" NavigateUrl="Activities.aspx" CssClass="btn btn-success" runat="server">Activities</asp:HyperLink>
        <asp:HyperLink ID="HyperLink3" NavigateUrl="ChangePass.aspx" CssClass="btn btn-danger" runat="server">Change Password</asp:HyperLink>
    </div>
    <h3 class="auto-style1">
        About You
    </h3>
    <div style="text-align:center; font-family:Arial; height: 102px; width:300px;">
    <h3 class="auto-style1">
        <%--<asp:GridView ID="GridView1" runat="server" Font-Size="14px" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" CellPadding="10" ForeColor="#333333" GridLines="None" Height="100px" Width="501px" CellSpacing="10" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
            <AlternatingRowStyle  BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Area" HeaderText="Area" SortExpression="Area" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>--%>
        <%--<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="Id" Visible="false" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Area" HeaderText="Area" SortExpression="Area" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>--%>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT [Id], [Username], [Email], [Area] FROM [RegData] WHERE ([Id] = @Id)" DeleteCommand="DELETE FROM [RegData] WHERE [Id] = @Id" InsertCommand="INSERT INTO [RegData] ([Username], [Email], [Area]) VALUES (@Username, @Email, @Area)" UpdateCommand="UPDATE [RegData] SET [Username] = @Username, [Email] = @Email, [Area] = @Area WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Area" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="Id" SessionField="Id" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Area" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </h3>
        <p class="auto-style1">
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="100px" Width="501px" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px">
                <Columns>
                    <asp:BoundField DataField="Id" Visible="false" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Area" HeaderText="Area" SortExpression="Area" />
                    <asp:CommandField HeaderText="Edit Delete" ShowDeleteButton="True" ShowEditButton="True" />
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
    </p>
        </div>
</asp:Content>
