<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="OnlineDhaka.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 101%;
            height: 164px;
        }

        .auto-style2 {
            height: 40px;
        }

        .auto-style3 {
            width: 204px;
        }

        .auto-style4 {
            height: 40px;
            width: 204px;
            text-align: right;
            font-size: medium;
        }

        .auto-style5 {
            width: 204px;
            height: 24px;
            text-align: right;
            font-size: medium;
        }

        .auto-style6 {
            height: 24px;
        }

        .auto-style7 {
            height: 24px;
            width: 226px;
        }

        .auto-style8 {
            height: 40px;
            width: 226px;
        }

        .auto-style9 {
            width: 226px;
        }

        .auto-style10 {
            font-size: medium;
        }

        .textbox {
            border: 3px solid gray;
            width: 368px;
            height: 30px;
            color: black;
            font-size: 14px;
            padding-left: 10px;
            border: 2px solid red;
            border-radius: 7px;
            font-size: 14px;
            padding: 5px;
        }
                .textbox:focus
        {
            outline: none;
            border-color: blue;
            box-shadow: 0 0 10px blue;
        }

        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-lg-10" style="margin:auto;float:none">
        <div class="well">
            <fieldset>
                <legend>Login<asp:Label ID="Label3" runat="server"></asp:Label>
                </legend>

                <table class="auto-style1">
                    <tr >
                        <td class="auto-style5" style="text-align:center">UserName</td>
                        <td class="auto-style7">
                            <div class="form-group">
                                <asp:TextBox ID="TextBoxUsername" placeholder="Enter Username" CssClass=" textbox form-control" runat="server" Width="199px"></asp:TextBox>
                            </div>
                        </td>
                        <td class="auto-style6">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUsername" CssClass="auto-style10" ErrorMessage="Please Enter UserName" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4" style="text-align:center">Password</td>
                        <td class="auto-style8">
                            <div class="form-group">
                                <asp:TextBox ID="TextBoxPassword" placeholder="Enter Password" CssClass="textbox form-control" runat="server" TextMode="Password" Width="199px"></asp:TextBox>
                            </div>
                        </td>
                        <td class="auto-style2">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPassword" CssClass="auto-style10" ErrorMessage="Please Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style9" style=" text-align:center">
                            <asp:Button ID="Button_Login" runat="server" OnClick="Button_Login_Click" Style="margin-left: 0px" Text="Login" Width="65px" CssClass=" btn btn-primary" />
                        </td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" CssClass="btn btn-info" runat="server" NavigateUrl="~/register.aspx" Style="font-size: medium">New User Register</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style9">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </fieldset>
        </div>
    </div>

</asp:Content>
