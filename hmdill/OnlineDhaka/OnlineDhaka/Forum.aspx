<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Forum.aspx.cs" Inherits="OnlineDhaka.Forum" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #800000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <strong>Welcome To Our HomeDeal.Com Forum<br />
        <br />
        </strong>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="title" DataValueField="titleId">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [Title]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Height="96px" TextMode="MultiLine" Width="511px"></asp:TextBox>
        <br />
        Your Name : <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Post Your Question" OnClick="Button1_Click" />
    
        <br />
        <br />
        <%--OnSelectedIndexChanged="GridView1_SelectedIndexChanged"--%>
         <%--OnRowCommand="GridView1_RowCommand"--%>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" AllowPaging="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="forumId" DataNavigateUrlFormatString="Thread.aspx?forumId={0}" Text="Show Comments" />
                <asp:BoundField DataField="forumId" Visible="false" HeaderText="forumId" InsertVisible="False" ReadOnly="True" SortExpression="forumId" />
                <asp:TemplateField HeaderText="question" SortExpression="question">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("question") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Height="97px" Text='<%# Bind("question") %>' TextMode="MultiLine" Width="511px"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="posterName" HeaderText="posterName" SortExpression="posterName" />
                <asp:BoundField DataField="dateTim" HeaderText="dateTim" SortExpression="dateTim" />
            </Columns>
            <SelectedRowStyle BackColor="#FFCCFF" />
        </asp:GridView>
    
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT [forumId],[question], [posterName], [dateTim] FROM [Forum]  WHERE ([titleId] = @titleId)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="titleId" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
