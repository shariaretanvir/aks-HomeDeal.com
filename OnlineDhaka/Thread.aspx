<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Thread.aspx.cs" Inherits="OnlineDhaka.Thread" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 70%;
        }
        .auto-style3 {
            color: #800000;
            width: 116px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
    
     
    
        <table class="auto-style2" style="border:1px solid black">
            <tr>
                <td class="auto-style3" style="border-right:1px solid black"><strong>Question</strong></td>
                <td>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    
    
     
    
        <br />
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Height="117px" TextMode="MultiLine" Width="536px"></asp:TextBox>
        <br />
        <br />
        <br />
        Name:
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Comment" OnClick="Button1_Click" />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Forum.aspx">Back to Forum</asp:HyperLink>
    
    
     
    
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True">
            <Columns>
                <asp:BoundField DataField="forumId" Visible="false" HeaderText="forumId" SortExpression="forumId" />
                <asp:TemplateField HeaderText="answer" SortExpression="answer">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("answer") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Height="99px" Text='<%# Bind("answer") %>' TextMode="MultiLine" Width="535px"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="posterName" HeaderText="posterName" SortExpression="posterName" />
                <asp:BoundField DataField="dateTim" HeaderText="dateTim" SortExpression="dateTim" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT [forumId],[answer], [posterName], [dateTim] FROM [Thread]  WHERE ([forumId] = @forumId)">
            <SelectParameters>
                <asp:QueryStringParameter Name="forumId" QueryStringField="forumId" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    
     
    
    </form>
</body>
</html>
