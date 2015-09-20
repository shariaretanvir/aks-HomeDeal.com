<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PopupLogin.aspx.cs" Inherits="OnlineDhaka.PopupLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/flexslider.css" rel="stylesheet" />
     <script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="http://tristanedwards.me/u/SweetAlert/lib/sweet-alert.css"></script>
    <script src="http://tristanedwards.me/u/SweetAlert/lib/sweet-alert.js"></script>
   <script>
       $(function () {
           $(document).on('click', '.open-login', function (e) {
               $('#msg').removeClass();
               $('#msg').addClass("login-msg").text('Please login below');
               $('#username').val('');
               $('#password').val('');
               $('.login-frame').fadeIn(500);
               $('.login-box').animate({ 'top': '50px' }, 500);
               e.preventDefault();
           });
           $(document).on('click', '.close-login', function (e) {
               $('.login-box').animate({ 'top': '-165px' }, 500);
               $('.login-frame').fadeOut(500);
               $('#username').val('');
               $('#password').val('');
               e.preventDefault();
           });
           //$(document).on('click', '.login-btn', function (e) {
           //    var username = $('#username').val();
           //    var password = $('#password').val();
           //    var _loginMsg = $('#msg');
           //    if (username == '' || password == '') {
           //        _loginMsg.addClass("error").removeClass("success");
           //        _loginMsg.html("Fields should not be empty");
           //        $('.login-box')
           //                 .animate({ left: -25 }, 20)
           //                 .animate({ left: 0 }, 60)
           //                 .animate({ left: 25 }, 20)
           //                 .animate({ left: 0 }, 60);
           //    } else {
           //        var Objdata = {};
           //        Objdata.username = username;
           //        Objdata.password = password;
           //        console.log(JSON.stringify(Objdata));
           //        var url = "PopupLogin.aspx";    
           //        ///CheckUser
           //        $.ajax({
           //            type: "POST",
           //            url: url,
           //            data: JSON.stringify(Objdata),
           //            contentType: "application/json; charset=utf-8",
           //            dataType: "text",
           //            success: function (response) {
           //                if (response.d == true) {
           //                    _loginMsg.addClass("success").removeClass("error");
           //                    _loginMsg.html("Login was successful!");
           //                    $('.login-box').animate({ 'top': '-165px' }, 800);
           //                    $('.login-frame').fadeOut(500);

           //                } else {
           //                    _loginMsg.addClass("error").removeClass("success");
           //                    _loginMsg.html("Invalid username & Password");
           //                    $('.login-box')
           //                         .animate({ left: -25 }, 20)
           //                         .animate({ left: 0 }, 60)
           //                         .animate({ left: 25 }, 20)
           //                         .animate({ left: 0 }, 60);
           //                }
           //            },
           //            error: function (xmlHttpRequest, textStatus, errorThrown) {
           //                console.log(textStatus); console.log(errorThrown);
           //                alert('Error');
           //            }
           //        });
       //        }

       //        e.preventDefault();
       //    });
       });

       swal({
           title: 'Congratulations!',
           text: 'Your message has been succesfully sent',
           type: 'success'
       });
    </script>

    <style type="text/css">
        .login-frame {
           position: absolute;
           top: 0;
           bottom: 0;
           left: 0;
           right: 0;
           display: none;
           
       }
       .login-box {
           width: 400px;
           height: 165px;
           padding: 20px;
           margin: auto;
           top: -165px;
           box-shadow: 0 0 10px #CCC;
           border-radius: 5px;
           background-color:rgba(58, 135, 173, 0.90);
           position: relative;
       }
       .form-group {
           margin-bottom: 10px;
       }
       .form-group .form-control {
           margin-left: 55px;
           width: 275px;
           height: 30px;
           padding: 0 5px 0 5px;
           font-size: 16px;
           border-radius: 5px;
           border: solid 1px #CCCCCC;
           color: #999;
       }
       .form-group .form-label {
           width: 50px;
           font-size: 18px;
           display: block;
           float: left;
           line-height: 30px;
           padding-left: 5px;
           color: #333;
       }
       .login-msg {
           border: solid 1px #bce8f1;
           text-align: center;
           line-height: 30px;
           margin-bottom: 10px;
           border-radius: 5px;
           color: rgba(58, 135, 173, 0.90);
           background-color: rgba(217, 237, 247, 0.99);
       }
       .login-msg.success {
           color: rgba(70, 136, 71, 0.96);
           background-color: rgba(223, 240, 216, 0.97);
           border-color: rgba(214, 233, 198, 0.98);
       }
       .login-msg.error {
           color: rgba(185, 74, 72, 0.98);
           background-color: rgba(242, 222, 222, 0.98);
           border-color: rgba(238, 211, 215, 0.98);
       }
       .login-actions {
           text-align: right;
       }
       .btn {
           height: 40px;
           width: 100px;
           display: inline-block;
           padding: 6px 12px;
           margin-bottom: 0;
           font-size: 14px;
           text-align: center;
           white-space: nowrap;
           vertical-align: middle;
           cursor: pointer;
           border: 1px solid transparent;
           border-radius: 4px;
       }
       .login-btn {
           color: #ffffff;
           background-color: #5cb85c;
           border-color: #4cae4c;
       }
       .login-btn:hover {
           background-color: #458a45;
       }
       .close-login {
           color: #ffffff;
           background-color: #5cb85c;
           border-color: #4cae4c;
       }
       .close-login:hover {
           background-color:#458a45;
       }
       .modalPop{
    position:fixed;
    background-color:white;
    border:1px solid #b9b9b9;
    left:50%;
    border-radius:10px;
    -webkit-border-radius:10px;
    -moz-border-radius:10px;
    transform:translate(-50%, -200%);
    -webkit-transform:translate(-50%, -200%);
    -ms-transform:translate(-50%, -200%);
    padding:30px;
    box-shadow:0 1px 5px rgba(0, 0, 0,0.72);
    -webkit-box-shadow:0 1px 5px rgba(0, 0, 0,0.72);
    -moz-box-shadow:0 1px 5px rgba(0, 0, 0,0.72);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
                    


        <button class="open-login">Login</button>
   <div class="login-frame">
    <div class="login-box">
        <div id="msg"></div>
        <div class="form-group">
            <label class="form-label">Username:</label>
            <asp:TextBox ID="username" placeholder="Enter UserName" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <label class="form-label">Password:</label>
            <asp:TextBox ID="password" runat="server" placeholder="Enter Password"  CssClass="form-control" TextMode="Password"></asp:TextBox>
        </div>
        <div class="login-actions">
            <asp:Button ID="btn_login" runat="server" Text="Login" OnClick="btn_login_Click" CssClass="btn login-btn" />
            <asp:Button ID="btn_close" runat="server" Text="Cancel" CssClass="btn close-login" />
        </div>
    </div>
</div>
    
    </div>

<%-- ------------------------------------------------------------------------------%>

            <div class="modalPop"> <%-- Login popup --%>
                <table>
                    <tr>
                        <td>
                            <label>E-mail</label></td>
                        <td>:</td>
                        <td class="auto-style1">
                            <label>
                                <asp:TextBox ID="mailBox" runat="server"></asp:TextBox>
                            </label>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Password</label></td>
                        <td>:</td>
                        <td class="auto-style1">
                            <label>
                                <asp:TextBox ID="passwordBox" runat="server"></asp:TextBox>
                            </label>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td class="auto-style1">
                            <asp:Button runat="server" ID="loginButton" Text="Login" ></asp:Button>   <%--OnClick="loginButton_Click"--%>
                            <%--<button id="forgetPassButton"> Forget Password</button>--%><%--<asp:Button runat="server" ID="close" Text="Close" OnClick="close_Click"></asp:Button>--%>
                            <a href="#exit" style="text-decoration: none; padding-left: 10px">Exit</a>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td class="auto-style1">
                            <a href="#" style="text-decoration: none">Forgot pasword</a>
                        </td>
                    </tr>

                </table>
            </div>  <%-- Login popup End--%>

        

        <li><a href="#lg">Login</a></li>
    </form>
</body>
</html>
