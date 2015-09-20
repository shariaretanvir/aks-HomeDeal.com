<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testbootstrap.aspx.cs" Inherits="OnlineDhaka.testbootstrap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>bootstrap</title>
    <link href="CSS/bootstrap.min.css" rel="stylesheet" />
    <link href="CSS/bootstrap-theme.min.css" rel="stylesheet" />

    <%--<style type="text/css">
        .span12 {
        background-color:blue;
        }
    </style>--%>
    <style type="text/css">
        .auto-style2 {
            width: 321px;
        }

        .auto-style3 {
            width: 109px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">

        <%--<header class="row">--%>

        <nav class="navbar navbar-inverse  navbar-fixed-top">
            <%--navbar-inverse  navbar-fixed-top--%>
            <div class="container">
                <div class="navbar-header">

                    <a class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>
                    <a href="#" class="navbar-brand">akash</a>
                </div>

                <div class="collapse navbar-collapse nav-collapse">

                    <ul class="nav navbar-nav">
                        <li class="divider"></li>
                        <li><a href="#">home</a></li>
                        <li class="divider"></li>
                        <li><a href="#">about</a></li>
                        <li class="divider"></li>
                        <li><a href="#">details</a></li>
                        <li class="divider"></li>

                        <li role="presentation" class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button">connect
                                <span class="caret"></span>

                            </a>




                         

                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#">facebook</a></li>
                                <li><a href="#">twitter</a></li>
                                <li><a href="#">google+</a></li>
                                <li class="divider"></li>
                                <li><a href="#">contact</a></li>

                            </ul>
                        </li>
                        <%--<li class="divider-vertical"></li>--%>
                    </ul>
                </div>
            </div>

        </nav>


        <%-- </header>--%>

        <div class="row" id="main-content">
            <%--style="padding-top: 80px"--%>
            <div class="container">
                <div class="jumbotron">



                    <h1>hjbfejhbfkefrke</h1>
                    <p>hfbebfrekk</p>

                </div>
                <div class="col-lg-3">
                    <table class="table table-bordered">
                        <tr>

                            <td>sidenav 1</td>

                        </tr>
                        <tr>
                            <td>sidenav 2</td>

                        </tr>
                        <tr>
                            <td>sidenav 3</td>

                        </tr>
                        <tr>
                            <td>sidenav 4</td>

                        </tr>
                        <tr>
                            <td>sidenav 5</td>

                        </tr>
                    </table>
                </div>

                <div class="col-lg-6">
                    <table class="table table-hover table-bordered ">
                        <tr>
                            <th>#</th>
                            <th>FirstName</th>
                            <th>LastName</th>
                            <th>Username</th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>Mark</td>
                            <td>ottio</td>
                            <td>@mdo</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>Mark</td>
                            <td>ottio</td>
                            <td>@mdo</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>Mark</td>
                            <td>ottio</td>
                            <td>@mdo</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>Mark</td>
                            <td>ottio</td>
                            <td>@mdo</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>Mark</td>
                            <td>ottio</td>
                            <td>@mdo</td>
                        </tr>
                    </table>
                </div>

                <div class="col-lg-3" id="sidebar">
                    <div class="well">

                        <fieldset>

                            <legend>login</legend>
                            <%--<form class="form-horizontal">--%>
                            <div class="form-group">
                                <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="username"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="email"></asp:TextBox>
                            </div>
                            <asp:CheckBox ID="CheckBox1" CssClass="checkbox-inline" runat="server" Text="remember password" />
                            <div class="pull-right">
                                <asp:Button ID="Button1" href="#login" role="button" data-toggle="modal" CssClass="btn btn-primary" runat="server" Text="Login" />
                                <asp:Button ID="Button2" CssClass="btn btn-info" runat="server" Text="Submit" />
                            </div>
                            <%--</form>--%>
                        </fieldset>
                    </div>

                </div>
            </div>

        </div>



        <div class="row">
            <div class="col-md-3">
            </div>
            <div class="col-xs-6">
                <fieldset>
                    <legend>Add a new user</legend>
                </fieldset>
                <table class="table table-condensed">
                    <tr>
                        <td class="auto-style3"><span>Username</span> </td>
                        <td class="auto-style2">
                            <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" Width="208px"></asp:TextBox></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="auto-style3">FirstName</td>
                        <td class="auto-style2">
                            <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" Width="208px"></asp:TextBox></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Lastname</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" Width="208px"></asp:TextBox></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Address</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" Columns="20" Height="75px" Rows="8" TextMode="MultiLine" Width="208px"></asp:TextBox></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Country</td>
                        <td class="auto-style2">
                            <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" Width="208px"></asp:DropDownList></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Gender</td>
                        <td class="auto-style2">
                            <asp:CheckBox CssClass="checkbox-inline" ID="CheckBox2" runat="server" Text="Male" />
                            <asp:CheckBox ID="CheckBox3" CssClass="checkbox-inline" runat="server" Text="Female" />
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style2">
                            <asp:Button ID="Button3" CssClass="btn btn-info" runat="server" Text="Save" />
                            <asp:Button ID="Button4" CssClass="btn btn-danger" runat="server" Text="Cancle" />
                        </td>
                    </tr>
                </table>
                &nbsp;
            </div>
        </div>
        <footer class="row-fluid">
            <div class="col-lg-12">
                bootstrap
            </div>
        </footer>


        <div id="login" class="modal hide fade" aria-labelledby="modalLable" aria-hidden="true">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    <i class="icon-remove" style="background-color: red"></i>
                </button>
                <h3 id="modalLable">Login</h3>
            </div>
            <div class="modal-body">
            </div>
            <div class="modal-footer">
                <button class="btn btn-danger" data-dismiss="modal" aria-hidden="true">cancle</button>
                <button class="btn btn-success">login</button>
            </div>
        </div>

    </form>
    <script src="javascript/jquery.js"></script>
    
    <script src="javascript/bootstrap.min.js"></script>
    <%--<script src="javascript/npm.js"></script>--%>
</body>
</html>
