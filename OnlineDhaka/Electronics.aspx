﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Electronics.aspx.cs" Inherits="OnlineDhaka.Electronics" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--<script type="text/javascript">

        var i = 0;
        function fun() {
            i++;
            document.getElementById("<%=electronicsImg.ClientID%>").src = "IMG/Electronic" + i + ".png";
             if (i == 2) //here 2 is number of images i want to display in the slide show
             {
                 i = 0;
             }
         }
         setInterval("fun()", 2000);
    </script> --%>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<link rel="stylesheet" href="CSS/MasterPage.css" />--%>
    
      <%--<asp:Image ID="electronicsImg" runat="server"  src="IMG/Electronic1.png" Height="200px" Width="560px"  /> --%>  


    <div class="cycle-slideshow">
		<img src="IMG/Electronic1.png" height="200" width="560" data-cycle-fx="tileSlide" data-cycle-tile-vertical="false" />
		<img src="IMG/Electronic1.png" height="200" width="560" data-cycle-fx="tileBlind" data-cycle-tile-count="12"/>
		<img src="IMG/computer.jpg" height="200" width="560" data-cycle-fx="tileSlide" data-cycle-tile-count="4"/>
	    <img src="IMG/phone.jpg" height="200" width="560" data-cycle-fx="tileBlind" data-cycle-tile-vertical="false"/>
    </div>

    <div style="padding-top:20px; padding-bottom:100px;margin-left:60px;">
    <asp:Menu ID="EMenu" runat="server" BackColor="#FFFBD6" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" StaticSubMenuIndent="10px">
        <DynamicHoverStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <DynamicMenuItemStyle BackColor="#0099FF" BorderStyle="Solid" BorderWidth="1px" ForeColor="Black" HorizontalPadding="5px" VerticalPadding="2px" />
                            <DynamicMenuStyle BackColor="#FFFBD6" />
                            <DynamicSelectedStyle BackColor="#FFCC66" />
        <Items>
            <asp:MenuItem NavigateUrl="~/Electronics.aspx" Text="Electronics" Value="Electronics">
                <asp:MenuItem NavigateUrl="~/Mobile.aspx" Text="Mobile" Value="Mobile"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Tab.aspx" Text="Tab" Value="Tab"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Pc.aspx" Text="Pc" Value="Pc"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Laptop.aspx" Text="Laptop" Value="Laptop"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/OtherElectronics.aspx" Text="Others" Value="Others"></asp:MenuItem>
            </asp:MenuItem>
        </Items>



        <StaticHoverStyle BackColor="#990000" ForeColor="White" />
        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <StaticSelectedStyle BackColor="#FFCC66" />



    </asp:Menu>
        </div>



    <%--<div style="float:left;padding-left:30px;">
    <ul class="productlist">
            <li class="listItem" ><a href="#"  >Mobile<img src="IMG/phone.jpg" /> </a></li>
            <li class="listItem"><a href="#" ">Tab<img src="IMG/tv.jpg" /></a></li>
            <li class="listItem"><a href="#" ">Pc<img src="IMG/camera.jpg" /></a></li>
            <li class="listItem"><a href="#" ">Laptop<img src="IMG/camera.jpg" /></a></li>
            <li class="listItem"><a href="#" ">Others<img src="IMG/camera.jpg" /></a></li>
       </ul>
    </div> 
    <div style="float:left;padding-left:40px;">
        <ul class="productlist">
            <li class="listItem"><a href="#" "><img src="IMG/computer.jpg" /></a></li>
            <li class="listItem"><a href="#" "><img src="IMG/ac.jpg" /></a></li>
            <li class="listItem"><a href="#" "><img src="IMG/washing.jpg" /></a></li>
            
        </ul>
    </div>--%>

    <div style="width:97%; overflow:auto;background-color: orange;padding:10px;" >

    <asp:GridView
         ID="GridView1"
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
            <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="ElectronicsDetail.aspx?Id={0}" Text="See More">
            <ItemStyle Wrap="True" />
            </asp:HyperLinkField>
            <asp:TemplateField HeaderText="Image" SortExpression="Image">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Width="120px" Height="82px" Text='<%# Bind("Image") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Width="120px" Height="82px" ImageUrl='<%# Bind("Image") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
            <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" SortExpression="PhoneNo" />
            <asp:BoundField DataField="Id" HeaderText="Id" Visible="false" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Name" HeaderText="Name" Visible="false" SortExpression="Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" Visible="false" SortExpression="Email" />
            <asp:BoundField DataField="Catagories" HeaderText="Catagories" Visible="false" SortExpression="Catagories" />
            <asp:BoundField DataField="SubCatagories" HeaderText="SubCatagories" Visible="false" SortExpression="SubCatagories" />
            <asp:BoundField DataField="Description" HeaderText="Description" Visible="false" SortExpression="Description" />
        </Columns>

        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" Height="110px"/>
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />


    </asp:GridView>


        </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [PostAd] WHERE ([Catagories] = @Catagories)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Electronics" Name="Catagories" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>




</asp:Content>
