<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="OnlineDhaka.ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
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
        .auto-style5 {
            width: 150px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div  style="margin:auto; float:none">
        <div class="well" style=" width:595px ; margin-left: 130px";>
        <fieldset style=" width:595px">
            
            <legend>  <%--auto-style1--%>
                <strong>Contact Us</strong>
            </legend>
            <table style="margin-left: 30px";>
                <tr>
                    <td class="">Name :</td>  <%--auto-style3--%>
                    <td class="" style="padding-bottom:10px">  <%--auto-style4--%>
                        <asp:TextBox ID="CName" CssClass="textbox form-control" runat="server" Width="200px" Height="30px"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="CName" ErrorMessage="Name Required" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="">Email :</td>
                    <td class="" style="padding-bottom:10px">
                        <asp:TextBox ID="CEmail" CssClass="textbox form-control" Height="30px" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="CEmail" ErrorMessage="Email Required" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="CEmail" ErrorMessage="Email Must Be Valid" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="">Subject :</td>
                    <td class="" style="padding-bottom:10px">
                        <asp:TextBox ID="CSubject" CssClass="textbox form-control" Height="30px" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Subject Required" ForeColor="Red" ControlToValidate="CSubject" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="">Comments :</td>
                    <td class="" style="padding-bottom:10px; height:200px";>
                        <asp:TextBox ID="CComments" CssClass="textbox form-control" Height="190px" runat="server" TextMode="MultiLine" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Comments Required" ForeColor="Red" ControlToValidate="CComments" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" class=""> <%--auto-style3--%>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="Please Fix The Following errors" Height="158px" Width="315px" />
                    </td>
                    <%--<td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>--%>
                </tr>
                <tr>
                    <td colspan="3" class="">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True"></asp:Label>
                    </td>
                    <%--<td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>--%>
                </tr>
                <tr>
                    <td colspan="3" class="">
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                    </td>
                    <%--<td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>--%>
                </tr>
            </table>
            
        </fieldset>
            </div>
    </div>

</asp:Content>
