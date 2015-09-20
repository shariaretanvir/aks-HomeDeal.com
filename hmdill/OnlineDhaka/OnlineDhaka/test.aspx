<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="OnlineDhaka.test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" DefaultButton="btnSubmit">
    <p>
        Please Fill the Following to Send Mail.</p>
    <p>
        Your name:
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*"
            ControlToValidate="YourName" ValidationGroup="save" /><br />
        <asp:TextBox ID="YourName" runat="server" Width="250px" /><br />
        Your email address:
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
            ControlToValidate="YourEmail" ValidationGroup="save" /><br />
        <asp:TextBox ID="YourEmail" runat="server" Width="250px" />
        <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator23"
            SetFocusOnError="true" Text="Example: username@gmail.com" ControlToValidate="YourEmail"
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"
            ValidationGroup="save" /><br />
        Subject:
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"
            ControlToValidate="YourSubject" ValidationGroup="save" /><br />
        <asp:TextBox ID="YourSubject" runat="server" Width="400px" /><br />
        Your Question:
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"
            ControlToValidate="Comments" ValidationGroup="save" /><br />
        <asp:TextBox ID="Comments" runat="server" 
                TextMode="MultiLine" Rows="10" Width="400px" />
    </p>
    <p>
        <asp:Button ID="btnSubmit" runat="server" Text="Send" 
                    OnClick="Button1_Click" ValidationGroup="save" />
    </p>
</asp:Panel>
<p>
    <asp:Label ID="DisplayMessage" runat="server" Visible="false" />
</p>  
 <%--   <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Catagories" DataValueField="Catagories">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT [Catagories] FROM [PostAd]"></asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="UId" HeaderText="UId" SortExpression="UId" />
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
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [PostAd] WHERE ([Catagories] = @Catagories)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Catagories" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
<br />
    <br />--%>
</asp:Content>
