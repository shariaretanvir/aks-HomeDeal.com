<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Myads1.aspx.cs" Inherits="OnlineDhaka.Myads1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="CSS/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="CSS/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <nav class="navbar navbar-inverse navbar-fixed-top">
                    <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse" >
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a href="Default.aspx" class="navbar-brand">
                            HomeDeal
                        </a>
                        </div>
               <%-- <div id="headImg">
                    <asp:HyperLink runat="server" ID="headImg1" NavigateUrl="~/Default.aspx"> <img src="IMG/logo2.jpg" style="height:107px; width:29%;float:left; background-color:aliceblue"; /></asp:HyperLink>
                </div>--%>

                
                  <%--navi--%>  


                <%--navi--%>
                
                <div class="collapse navbar-collapse" id="navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="AllAds.aspx">AllAds</a></li>
                        <li class="divider"></li>
                        <li><a href="Help.aspx">Helps And Support</a></li>
                        <li class="divider"></li>
                        
                        <li style="padding-right:450px"><a href="ContactUs.aspx">Contact Us</a></li>
                        <li class="divider"></li>
                        
                        <li ><a href="register.aspx">Register</a></li>
                        <li class="divider"></li>
                        <li style=""><asp:HyperLink ID="HyperLink1" runat="server" CssClass="log btn"  ></asp:HyperLink></a></li> <%--data-toggle="modal" data-target="#mymodal"--%>
                        <li class="divider"></li>
                        <li>
                        <asp:Button CssClass="btn-success navbar-btn btn-sm" ID="Button2" runat="server" Text="বাংলা" />
                    </li>
                        
                            </ul>
                    </div>
              </div>
                </nav>
        <div style="font-family:Arial;width:1300px; height:400px; padding-top:40px;float:none; text-align:center">
        <h2>My Ads</h2>
            <div style="text-align:center">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="1200px" Hight="600px" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="10" DataKeyNames="Id" DataSourceID="SqlDataSource1" GridLines="Vertical" CellSpacing="10" AllowPaging="True"> <%--OnRowDataBound="GridView1_RowDataBound" --%>
            <AlternatingRowStyle BackColor="Gainsboro" />
            <Columns>
                <%--<asp:CommandField HeaderText="Edit  Delete"  ShowDeleteButton="True" ShowEditButton="True" />--%>
                <asp:TemplateField HeaderText="Edit Delete" ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" OnClientClick="return confirm('Are you sure you want to delete this event?');" Text="Delete"></asp:LinkButton>
                    </ItemTemplate>
                    <ControlStyle CssClass="btn btn-primary btn-sm" />
                    <HeaderStyle Width="150px" />
                    
                    <ItemStyle Width="150px" />
                    
                </asp:TemplateField>
                <asp:BoundField DataField="Id" Visible="false" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
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
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" Width="50px" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
            
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" DeleteCommand="DELETE FROM [PostAd] WHERE [Id] = @Id" InsertCommand="INSERT INTO [PostAd] ([Email], [PhoneNo], [Location], [Catagories], [SubCatagories], [ProductName], [Description], [Price], [Image]) VALUES (@Email, @PhoneNo, @Location, @Catagories, @SubCatagories, @ProductName, @Description, @Price, @Image)" SelectCommand="SELECT [Id], [Email], [PhoneNo], [Location], [Catagories], [SubCatagories], [ProductName], [Description], [Price], [Image] FROM [PostAd] WHERE ([UId] = @UId)" UpdateCommand="UPDATE [PostAd] SET [Email] = @Email, [PhoneNo] = @PhoneNo, [Location] = @Location, [Catagories] = @Catagories, [SubCatagories] = @SubCatagories, [ProductName] = @ProductName, [Description] = @Description, [Price] = @Price, [Image] = @Image WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
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
                <asp:SessionParameter Name="UId" SessionField="ID" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
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
            <//div>
        </div>

    </form>
</body>
</html>
