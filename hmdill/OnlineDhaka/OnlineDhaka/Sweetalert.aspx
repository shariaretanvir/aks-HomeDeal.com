<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sweetalert.aspx.cs" Inherits="OnlineDhaka.Sweetalert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="dist/sweetalert2.min.js"></script>

<head runat="server">
    <link rel="stylesheet" type="text/css" href="dist/sweetalert2.css"/>
    <title></title>
    <script>
        swal({
            title: 'Congratulations!',
            text: 'Your message has been succesfully sent',
            type: 'success'
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
