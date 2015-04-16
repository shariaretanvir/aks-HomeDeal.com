<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AllAds.aspx.cs" Inherits="OnlineDhaka.AllAds" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="font-weight: 700">
        
        AllAds&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Search Option :&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" BackColor="Maroon" ForeColor="White" Text="Most Recent Ads" Width="150px" OnClick="Button4_Click" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" BackColor="Maroon" ForeColor="White" Height="23px" OnClick="Button2_Click1" Text="Search by  catagories" Width="150px" />
&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" BackColor="Maroon" ForeColor="White" Text="Search By Subcatagories" Width="150px" OnClick="Button3_Click" />
    </p>
<p style="font-weight: 700">
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" ForeColor="#993333"></asp:Label>
        <br />
    </p>
    
    <div style="width:97%; overflow:auto;background-color: orange;padding:10px;" >
        
        <asp:GridView ID="GridView11"
             runat="server"
             AutoGenerateColumns="False"
             DataKeyNames="Id"
             DataSourceID="SqlDataSource1"
             AllowPaging="True" CellPadding="3"
             Width="90%"
             CssClass="cssgridview" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" PageSize="5" CellSpacing="2"
            PagerStyle-CssClass="pgr" OnPreRender="GridView11_PreRender">          
            

            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="Detail.aspx?Id={0}" Text="See Details" />
                <asp:TemplateField HeaderText="Image" SortExpression="Image">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Image") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <style type="text/css">
                            #Image1:hover {
                            height:100px;
                            width:200px;
                            
                            }

                        </style>
                            
                        <asp:Image ID="Image1" runat="server" Height="82px" ImageUrl='<%# Bind("Image") %>' Width="120px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                <asp:BoundField DataField="Id" Visible="false" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Name" Visible="false" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Email" Visible="false" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" SortExpression="PhoneNo" />
                <asp:BoundField DataField="Catagories" Visible="false" HeaderText="Catagories" SortExpression="Catagories" />
                <asp:BoundField DataField="SubCatagories" Visible="false" HeaderText="SubCatagories" SortExpression="SubCatagories" />
                <asp:BoundField DataField="Description" Visible="false" HeaderText="Description" SortExpression="Description" />
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
        <asp:SqlDataSource 
            ID="SqlDataSource1" 
            runat="server" 
            ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
            SelectCommand="SELECT * FROM [PostAd]">

            


        </asp:SqlDataSource>
    
    <p>
        &nbsp;</p>
    </asp:Content>
