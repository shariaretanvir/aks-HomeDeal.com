<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="PostAd1.aspx.cs" Inherits="OnlineDhaka.PostAd1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script src="WaterMark.min.js" type="text/javascript"></script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style4 {
            height: 26px;
            text-align: left;
        }

        .auto-style7 {
            width: 121px;
            text-align: left;
        }

        .auto-style10 {
            text-align: left;
        }

        .auto-style33 {
            width: 121px;
            text-align: left;
            height: 42px;
        }

        .auto-style34 {
            text-align: left;
            height: 42px;
        }

        .auto-style37 {
            width: 90px;
            text-align: right;
            height: 42px;
        }

        .auto-style38 {
            width: 121px;
            text-align: left;
            color: #FF0000;
        }

        .auto-style41 {
            color: #FFFFFF;
        }

        .auto-style42 {
            color: #FFFFFF;
            text-align: center;
        }

        .auto-style43 {
            width: 90px;
            text-align: left;
            height: 42px;
        }

        .auto-style46 {
            height: 26px;
            width: 121px;
            text-align: left;
        }

        .auto-style48 {
            width: 90px;
            text-align: left;
            height: 41px;
        }

        .auto-style49 {
            height: 41px;
            width: 121px;
            text-align: left;
        }

        .auto-style50 {
            height: 41px;
            text-align: left;
        }

        .auto-style51 {
            width: 121px;
        }

        .auto-style52 {
            color: #000000;
            text-align: center;
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
    <script type="text/javascript">
        $(function () {
            $("[id*=TextBoxAdemail], [id*=TextBoxAdphon], [id*=TextBoxAdtitle],[id*=TextBoxAddescription], [id*=TextBoxAdprice]").WaterMark();

            //To change the color of Watermark
            $("[id*=Email]").WaterMark(
            {
                WaterMarkTextColor: '#000'
            });
        });
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" OnNextButtonClick="Wizard1_NextButtonClick" BorderStyle="Solid" OnFinishButtonClick="Wizard1_FinishButtonClick" CancelDestinationPageUrl="~/Default.aspx" DisplayCancelButton="True" CancelButtonImageUrl="~/IMG/cancel-sign-button-3053748.jpg" CancelButtonType="Image" FinishCompleteButtonImageUrl="~/IMG/finish-button-png-hi.png" FinishCompleteButtonType="Image" FinishPreviousButtonImageUrl="~/IMG/button-previous.gif" FinishPreviousButtonType="Image" StartNextButtonImageUrl="~/IMG/Next-Button.png" StartNextButtonType="Image" StepNextButtonImageUrl="~/IMG/Next-Button.png" StepNextButtonType="Image" StepPreviousButtonImageUrl="~/IMG/button-previous.gif" StepPreviousButtonType="Image" BackColor="#CCCCFF" Width="534px">
        <CancelButtonStyle Width="60px" />
        <FinishCompleteButtonStyle Width="70px" />
        <FinishPreviousButtonStyle Width="80px" />
        <NavigationButtonStyle Font-Bold="False" />
        <NavigationStyle BackColor="#9966FF" />
        <StartNextButtonStyle Width="80px" />
        <StepNextButtonStyle Width="80px" />
        <StepPreviousButtonStyle Width="80px" />
        <SideBarButtonStyle Font-Bold="False" Width="130px" Font-Italic="False" Font-Overline="False" />
       
        <SideBarStyle VerticalAlign="Top" Font-Bold="True" Wrap="True" Font-Overline="False" />
        
        <WizardSteps>
            <asp:WizardStep ID="WizardStep1" runat="server" Title="Personal Details ">
                
                <table class="auto-style1" contenteditable="false" style="border:1px solid black;background-color: bisque;">
                    <tr>
                        <td class="auto-style36" style="background-color:brown";>&nbsp;</td>
                        <td class="auto-style38" style="background-color:brown;"><strong>&nbsp;&nbsp; <span class="auto-style41">Personal Details</span></strong></td>
                        <td class="auto-style36" style="background-color:brown";>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style43">Name</td>
                        <td class="auto-style33">
                            <asp:TextBox ID="TextBoxAdname" CssClass="textbox"   runat="server" Width="164px" Style="margin-left: 0px; margin-right: 0px;" ReadOnly="True"></asp:TextBox>
                        </td>
                        <td class="auto-style34">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ControlToValidate="TextBoxAdname" ErrorMessage="Name Must Be Define" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style48">Email</td>
                        <td class="auto-style49">
                            <asp:TextBox ID="TextBoxAdemail" ToolTip="Enter Email" CssClass="textbox" runat="server" Width="164px"></asp:TextBox>
                        </td>
                        <td class="auto-style50">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ControlToValidate="TextBoxAdemail" ErrorMessage="Email Must Be Valid" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxAdemail" ErrorMessage="Email Must Be Define" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style43">Phone No.</td>
                        <td class="auto-style46">
                            <asp:TextBox ID="TextBoxAdphon" ToolTip="Enter PhoneNo" CssClass="textbox" runat="server" Width="164px"></asp:TextBox>
                        </td>
                        <td class="auto-style4">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPhone" runat="server" ControlToValidate="TextBoxAdphon" ErrorMessage="Must Be Define" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style43">Location</td>
                        <td class="auto-style7">
                            <asp:DropDownList ID="DropDownListLocation" runat="server" Height="16px" Width="164px">
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
                        <td class="auto-style37">&nbsp;</td>
                        <td class="auto-style51">
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style37">&nbsp;</td>
                        <td class="auto-style51">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>

            </asp:WizardStep>
            <asp:WizardStep ID="WizardStep2" runat="server" Title="Product Details">
                <table class="auto-style1" style="background-color: bisque;">
                    <tr>
                        <td style="background-color:brown";>
                            
                        </td>
                        <td class="auto-style42" style="background-color:brown";>
                            <strong>Product Details </strong>
                        </td>
                        <td style="background-color:brown";>

                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style27">Catagories</td>
                        <td class="auto-style28">
                            <asp:DropDownList ID="DropDownListcata" runat="server" Width="173px" Style="margin-left: 0px"
                                DataTextField="CataName" DataValueField="CataId" OnSelectedIndexChanged="DropDownListcata_SelectedIndexChanged"
                                AutoPostBack="true">
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style29">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownListcata" ErrorMessage="Catagorie Must Be specify" ForeColor="Red" InitialValue="Catagories"></asp:RequiredFieldValidator>
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
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownListsubcata" ErrorMessage="Sub-Catagorie Must Be specify" ForeColor="Red" InitialValue="Sub-Catagories"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11">Product Name</td>
                        <td class="auto-style30">
                            <asp:TextBox ID="TextBoxAdtitle" ToolTip="Enter Product Name" CssClass="textbox" runat="server" Width="170px" Style="margin-left: 0px"></asp:TextBox>
                        </td>
                        <td class="auto-style10">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxAdtitle" ErrorMessage="Give a short title" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11">Description</td>
                        <td class="auto-style30">
                            <asp:TextBox ID="TextBoxAddescription" ToolTip="Enter Description" CssClass="textbox" runat="server" Width="170px" TextMode="MultiLine"></asp:TextBox>
                        </td>
                        <td class="auto-style10">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxAddescription" ErrorMessage="Description Needed" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">Price</td>
                        <td class="auto-style25">
                            <asp:TextBox ID="TextBoxAdprice" ToolTip="Enter Price" CssClass="textbox" runat="server" Width="170px"></asp:TextBox>
                        </td>
                        <td class="auto-style15">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxAdprice" ErrorMessage="Give It A Price" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <%--<tr>
                        <td class="auto-style17">Image</td>
                        <td class="auto-style26">
                            <asp:FileUpload ID="FileUpload1" runat="server" Width="170px" />
                            <br />
                        </td>
                        <td class="auto-style19">&nbsp;</td>
                    </tr>--%>
                    <tr>
                        <td class="auto-style11">&nbsp;</td>
                        <td class="auto-style31">
                            <%--<asp:Button ID="ButtonSave" runat="server" Text="Save" OnClick="ButtonSave_Click" />--%>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">&nbsp;</td>
                        <td class="auto-style31">
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>

            </asp:WizardStep>
            <asp:WizardStep ID="WizardStep3" runat="server" Title="Summary" ClientIDMode="Inherit">
                <table class="auto-style1" style="border:1px solid black;background-color: bisque;">
                    <tr>
                        <td colspan="2" class="auto-style42" style="background-color:brown";>
                            
                            <strong>Summary</strong></td>
                    </tr>
                    <tr>
                        <td colspan="2" class="auto-style52"><strong>About You</strong></td>
                        
                    </tr>
                    <tr>
                        <td>Name</td>
                        <td>  
                            <asp:Label ID="LabelName" runat="server" ForeColor="Blue"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td>
                            <asp:Label ID="LabelEmail" runat="server" ForeColor="Blue"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Phone No</td>
                        <td>
                            <asp:Label ID="LabelPhoneNo" runat="server" ForeColor="Blue"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Location</td>
                        <td>
                            <asp:Label ID="LabelLocation" runat="server" ForeColor="Blue"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style52" colspan="2"><strong>About Product</strong></td>
                        <%--<td>&nbsp;</td>--%>
                    </tr>
                    <tr>
                        <td>Catagories</td>
                        <td>
                            <asp:Label ID="LabelCata" runat="server" ForeColor="Blue"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Sub-Catagories</td>
                        <td>
                            <asp:Label ID="LabelSubcata" runat="server" ForeColor="Blue"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Description</td>
                        <td>
                            <asp:Label ID="LabelDes" runat="server" ForeColor="Blue"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Product Name</td>
                        <td>
                            <asp:Label ID="LabelProductName" runat="server" ForeColor="Blue"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Price</td>
                        <td>
                            <asp:Label ID="LabelPrice" runat="server" ForeColor="Blue"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>

                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                    </tr>
                    </table>
                <table class="auto-style1" style="border:1px solid black; background-color:brown">
                    <tr>
                        <td><span class="auto-style41">Now Enter Your Product Image</span><br />
                            <asp:FileUpload ID="FileUpload1" runat="server" Width="170px" />
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Image Required" ForeColor="White"></asp:RequiredFieldValidator>
                        </td>
                        <%--<td>
                            &nbsp;</td>--%>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </asp:WizardStep>


        </WizardSteps>
    </asp:Wizard>
</asp:Content>
