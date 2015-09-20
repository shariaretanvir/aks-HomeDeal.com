<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Pet.aspx.cs" Inherits="OnlineDhaka.Pet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <%--<script type="text/javascript">

         var i = 0;
         function fun() {
             i++;
             document.getElementById("<%=petImg.ClientID%>").src = "IMG/pet" + i + ".jpg";
            if (i == 2) //here 2 is number of images i want to display in the slide show
            {
                i = 0;
            }
        }
        setInterval("fun()", 2000);
    </script> --%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--<asp:Image ID="petImg" runat="server"  src="IMG/pet.jpg" Height="200px" Width="560px"  /> --%>

    <div class="cycle-slideshow">
        <img src="IMG/pet1.jpg" height="200" width="560" data-cycle-fx="tileSlide" data-cycle-tile-vertical="false" />
        <img src="IMG/rabbit.jpg" height="200" width="560" data-cycle-fx="tileBlind" data-cycle-tile-count="12" />
        <img src="IMG/pet2.JPG" height="200" width="560" data-cycle-fx="tileSlide" data-cycle-tile-count="4" />
    </div>

    <asp:Menu ID="EMenu" runat="server" BackColor="#FFFBD6" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" StaticSubMenuIndent="10px">
        <DynamicHoverStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <DynamicMenuItemStyle BackColor="#0099FF" BorderStyle="Solid" BorderWidth="1px" ForeColor="Black" HorizontalPadding="5px" VerticalPadding="2px" />
                            <DynamicMenuStyle BackColor="#FFFBD6" />
                            <DynamicSelectedStyle BackColor="#FFCC66" />
        <Items>
            <asp:MenuItem NavigateUrl="~/Pet.aspx" Text="Pet" Value="Pet">
                <asp:MenuItem NavigateUrl="~/Dog.aspx" Text="Dog" Value="Dog"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Birds.aspx" Text="Birds" Value="Birds"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Rabbit.aspx" Text="Rabbit" Value="Rabbit"></asp:MenuItem>
                
                <asp:MenuItem NavigateUrl="~/OtherPet.aspx" Text="Others" Value="Others"></asp:MenuItem>
            </asp:MenuItem>
        </Items>



        <StaticHoverStyle BackColor="#990000" ForeColor="White" />
        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <StaticSelectedStyle BackColor="#FFCC66" />



    </asp:Menu>

    <asp:GridView ID="GridView1"
        runat="server"
        AutoGenerateColumns="False"
        DataKeyNames="Id"
        DataSourceID="SqlDataSource1"
        AllowPaging="True"
        CssClass="cssgridview"
        CellPadding="3"
        BackColor="#DEBA84"
        BorderColor="#DEBA84"
        BorderStyle="None"
        BorderWidth="1px"
        PageSize="5"
        CellSpacing="2"
        PagerStyle-CssClass="pgr">

        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="PetDetails.aspx?Id={0}" Text="See Details" />
            <asp:TemplateField HeaderText="Image" SortExpression="Image">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Image") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="82px" Width="120px" ImageUrl='<%# Bind("Image") %>' />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [PostAd] WHERE ([Catagories] = @Catagories)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="Pet" Name="Catagories" QueryStringField="Pet" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>



</asp:Content>
