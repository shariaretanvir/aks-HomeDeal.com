<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="OnlineDhaka.login1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>login</title>

    <%--<style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 163px;
            text-align: right;
        }
        .auto-style3 {
            width: 163px;
            height: 23px;
            text-align: right;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style7 {
            text-align: left;
            width: 164px;
            margin-left: 40px;
        }
        .auto-style8 {
            height: 23px;
            width: 164px;
        }
        .auto-style9 {
            width: 163px;
            text-align: right;
            height: 45px;
        }
        .auto-style10 {
            text-align: left;
            width: 164px;
            height: 45px;
            margin-left: 40px;
        }
        .auto-style11 {
            height: 45px;
        }
        #Reset1 {
            width: 66px;
            margin-right: 2px;
        }
    </style> --%>


    <style type="text/css">
        #Reset1 {
            width: 57px;
            margin-left: 54px;
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
    <div class="col-lg-10" style="margin:auto;float:none">

    
    <div class="well">
        <fieldset>
            <legend>
                Register
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </legend>
        
    
    <table class="auto-style1" style="margin-left: 30px;">
        <tr>
            <td class="auto-style2">UserName</td>
            <td class="auto-style7">
                <div class="form-group">
                <asp:TextBox ID="TextBoxname" CssClass="textbox form-control" runat="server" Width="200px" Height="30px" placeholder="Enter Your Name"></asp:TextBox>
            </div>
                    </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxname" ErrorMessage="Username is required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Email</td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBoxemail" placeholder="Enter Email" Height="30px" CssClass="textbox" runat="server" Width="200px"></asp:TextBox>
                <br />
                <br />
            </td>
            <td class="auto-style11">

                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxemail" ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>

                <br />

                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxemail" ErrorMessage="Email Must Be Valid" ForeColor="#3333CC" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

            </td>
        </tr>
        <tr>
            <td class="auto-style2">Password</td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBoxpass" placeholder="Enter Password" Height="30px" CssClass="textbox" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                <br />
                <br />
            </td>
            <td>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxpass" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <td class="auto-style2">Confirm-Password</td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBoxconpass" placeholder="Retype Password" Height="30px" CssClass="textbox" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                <br />
                <br />
            </td>
            <td>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxconpass" ErrorMessage="Confirmation is required" ForeColor="Red"></asp:RequiredFieldValidator>

                <br />

                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxpass" ControlToValidate="TextBoxconpass" ErrorMessage="Both Password Must Be Same" ForeColor="#3333FF"></asp:CompareValidator>

            </td>
        </tr>
        <tr>
            <td class="auto-style2">Area</td>
            <td class="auto-style7">

                <asp:DropDownList ID="DropDownListcountry" CssClass="form-control" runat="server" Width="200px">
                    <asp:ListItem>Select Area</asp:ListItem>
                    <asp:ListItem>DHAKA</asp:ListItem>
                    <asp:ListItem>CHITTAGONG</asp:ListItem>
                    <asp:ListItem>RAJSHAHI</asp:ListItem>
                    <asp:ListItem>BORISHAL</asp:ListItem>
                    <asp:ListItem>RONGPUR</asp:ListItem>
                    <asp:ListItem>SHYLET</asp:ListItem>
                    <asp:ListItem>JOSHOR</asp:ListItem>
                </asp:DropDownList>

                <br />

            </td>
            <td>
                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownListcountry" ErrorMessage="Select Country Name" ForeColor="Red" InitialValue="Select Area"></asp:RequiredFieldValidator>--%>    
            </td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style8">
                &nbsp;</td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style8">
                <asp:Button ID="Button2" CssClass="btn btn-success" runat="server" OnClick="Button2_Click" Text="Submit" Width="57px" />
                <input id="Reset1" type="reset" class="btn btn-danger"value="reset" /></td>
            <td class="auto-style4">&nbsp;</td>
        </tr>

    </table>
    </fieldset>
    </div>

        </div>

</asp:Content>
