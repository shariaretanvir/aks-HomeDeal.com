<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="OnlineDhaka.ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            color: #800000;
        }

        .auto-style2 {
            width: 100%;
        }

        .auto-style3 {
            width: 101px;
        }

        .auto-style4 {
            width: 215px;
        }
        .textbox {
            border: 3px solid gray;
            width: 368px;
            height: 20px;
            color: black;
            font-size: 14px;
            padding-left: 10px;
            border: 2px solid red;
            border-radius: 7px;
            font-size: 14px;
            padding: 5px;
            /*.textbox:focus;

        {
            outline: none;
            border-color: blue;
            box-shadow: 0 0 10px blue;
        }*/

        }

        .textbox:focus {
            outline: none;
            border-color: blue;
            box-shadow: 0 0 10px blue;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="font-family: Arial; padding-bottom:30px; ">
        <fieldset style="width: 450px">
            <legend class="auto-style1">
                <strong>Contact Us</strong>
            </legend>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3">Name :</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="CName" CssClass="textbox" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="CName" ErrorMessage="Name Required" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Email :</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="CEmail" CssClass="textbox" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="CEmail" ErrorMessage="Email Required" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="CEmail" ErrorMessage="Email Must Be Valid" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Subject :</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="CSubject" CssClass="textbox" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Subject Required" ForeColor="Red" ControlToValidate="CSubject" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Comments :</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="CComments" CssClass="textbox" runat="server" TextMode="MultiLine" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Comments Required" ForeColor="Red" ControlToValidate="CComments" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" class="auto-style3">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="Please Fix The Following errors" Height="158px" Width="315px" />
                    </td>
                    <%--<td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>--%>
                </tr>
                <tr>
                    <td colspan="3" class="auto-style3">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True"></asp:Label>
                    </td>
                    <%--<td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>--%>
                </tr>
                <tr>
                    <td colspan="3" class="auto-style3">
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                    </td>
                    <%--<td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>--%>
                </tr>
            </table>
        </fieldset>

    </div>

</asp:Content>
