<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="PostAd.aspx.cs" Inherits="OnlineDhaka.PostAd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 192px;
            text-align: right;
        }

        .auto-style3 {
            width: 192px;
            text-align: right;
            height: 26px;
        }

        .auto-style4 {
            height: 26px;
            text-align: left;
        }

        .auto-style5 {
            width: 162px;
        }

        .auto-style6 {
            height: 26px;
            width: 162px;
            text-align: left;
        }

        .auto-style7 {
            width: 162px;
            text-align: left;
        }

        .auto-style8 {
            font-size: x-large;
        }

        .auto-style9 {
            color: #0000FF;
        }

        .auto-style10 {
            text-align: left;
        }

        .auto-style11 {
            width: 186px;
            text-align: right;
        }

        .auto-style13 {
            width: 186px;
            text-align: right;
            height: 23px;
        }

        .auto-style15 {
            height: 23px;
            text-align: left;
        }

        .auto-style17 {
            width: 186px;
            text-align: right;
            height: 24px;
        }

        .auto-style19 {
            height: 24px;
        }

        .auto-style23 {
            font-size: x-large;
            color: #0000CC;
        }

        .auto-style25 {
            height: 23px;
            text-align: left;
            width: 55px;
        }

        .auto-style26 {
            height: 24px;
            text-align: left;
            width: 55px;
        }

        .auto-style27 {
            width: 186px;
            text-align: right;
            height: 42px;
        }

        .auto-style28 {
            height: 42px;
            text-align: left;
            width: 55px;
        }

        .auto-style29 {
            height: 42px;
            text-align: left;
        }

        .auto-style30 {
            text-align: left;
            width: 55px;
        }

        .auto-style31 {
            width: 55px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong><span class="auto-style8"><span class="auto-style9">About You</span><br class="auto-style9" />
    </span></strong>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">Name</td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBoxAdname" runat="server" Width="153px"></asp:TextBox>
            </td>
            <td class="auto-style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ControlToValidate="TextBoxAdname" ErrorMessage="Name Must Be Define" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Email</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBoxAdemail" runat="server" Width="154px"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ControlToValidate="TextBoxAdemail" ErrorMessage="Email Must Be Valid" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Phone No.</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBoxAdphon" runat="server" Width="153px"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPhone" runat="server" ControlToValidate="TextBoxAdphon" ErrorMessage="Must Be Define" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Location</td>
            <td class="auto-style7">
                <asp:DropDownList ID="DropDownListLocation" runat="server" Height="16px" Width="156px">
                    <asp:ListItem>Select Location</asp:ListItem>
                    <asp:ListItem>Chittagong</asp:ListItem>
                    <asp:ListItem>Dhaka</asp:ListItem>
                    <asp:ListItem>Khulna</asp:ListItem>
                    <asp:ListItem>Rajshahi</asp:ListItem>
                    <asp:ListItem>Borishal</asp:ListItem>
                    <asp:ListItem>Rangpur</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorLocation" runat="server" ControlToValidate="DropDownListLocation" ErrorMessage="Must Be Define" ForeColor="Red" InitialValue="Select Location"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <strong><span class="auto-style23">About Product</span></strong><br />
    <table class="auto-style1">
        <tr>
            <td class="auto-style27">Catagories</td>
            <td class="auto-style28">
                <asp:DropDownList ID="DropDownListcata" runat="server" Width="173px" Style="margin-left: 0px"
                    DataTextField="CataName" DataValueField="CataId" OnSelectedIndexChanged="DropDownListcata_SelectedIndexChanged"
                    AutoPostBack="true">
                    <%--<asp:ListItem>Catagories</asp:ListItem>
                <asp:ListItem>Vehicles</asp:ListItem>
                <asp:ListItem>Pet</asp:ListItem>
                <asp:ListItem>Home Furniture</asp:ListItem>
                <asp:ListItem>Electronics</asp:ListItem>--%>
                </asp:DropDownList>
            </td>
            <td class="auto-style29">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownListcata" ErrorMessage="Catagorie Must Be specify" ForeColor="Red" InitialValue="Catagories"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Sub-Catagories</td>
            <td class="auto-style30">
                <asp:DropDownList ID="DropDownListsubcata" runat="server" Height="16px" Width="173px"
                    DataTextField="SubCataName" DataValueField="SubCataId" OnSelectedIndexChanged="DropDownListsubcata_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="auto-style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownListsubcata" ErrorMessage="Sub-Catagorie Must Be specify" ForeColor="Red" InitialValue="Sub-Catagories"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Product Name</td>
            <td class="auto-style30">
                <asp:TextBox ID="TextBoxAdtitle" runat="server" Width="170px" Style="margin-left: 0px"></asp:TextBox>
            </td>
            <td class="auto-style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxAdtitle" ErrorMessage="Give a short title" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Description</td>
            <td class="auto-style30">
                <asp:TextBox ID="TextBoxAddescription" runat="server" Width="170px"></asp:TextBox>
            </td>
            <td class="auto-style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxAddescription" ErrorMessage="Description Needed" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">Price</td>
            <td class="auto-style25">
                <asp:TextBox ID="TextBoxAdprice" runat="server" Width="170px"></asp:TextBox>
            </td>
            <td class="auto-style15">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxAdprice" ErrorMessage="Give It A Price" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">Image</td>
            <td class="auto-style26">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="170px" />
                <br />
            </td>
            <td class="auto-style19">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style31">
                <asp:Button ID="ButtonSave" runat="server" Text="Save" OnClick="ButtonSave_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style31">
                <asp:Label ID="confarmation" runat="server" Font-Bold="true"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
