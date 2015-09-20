<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OnlineDhaka.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


  <%--<script type="text/javascript">

       var i = 0;
       function fun() {
           i++;
           document.getElementById("<%=bannerImg.ClientID%>").src = "IMG/banner" + i + ".jpg";
            if (i == 5) //here 5 is number of images i want to display in the slide show
            {
                i = 0;
            }
        }
        setInterval("fun()", 3000);
    </script> --%>   

    



    
    
     


    





</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    

    <%--<asp:Image ID="bannerImg" runat="server"  src="IMG/banner1.jpg" Height="200px" Width="560px"  />  --%> 
     


    <div class="cycle-slideshow" data-cycle-fx="tileSlide">
		<img src="IMG/banner1.jpg" height="300" width="730" data-cycle-fx="tileSlide" data-cycle-tile-vertical="false" />
		<img src="IMG/banner2.jpg" height="300" width="730" data-cycle-fx="tileBlind" data-cycle-tile-count="12"/>
		<img src="IMG/banner3.jpg" height="300" width="730" data-cycle-fx="tileSlide" data-cycle-tile-count="4"/>
		<img src="IMG/banner4.jpg" height="300" width="730" data-cycle-fx="tileBlind" data-cycle-tile-vertical="false"/>
		<img src="IMG/banner5.jpg" height="300" width="730" data-cycle-fx="tileSlide" data-cycle-tile-vertical="false"/>
	</div>








    <div class="portion2">
        <div class="description"> <h2 class="descriptionclass" style="text-align:center;" > Welcome to our site <a href="Default.aspx" style="text-decoration:none;"> HomeDeal.com.</a></h2>
            <h4 style="text-align:center; color:red;  font-family:Calibri"; > <marquee behavior="scroll" direction="left"> Where you can buy anyhing you want. Imagine what:: It's Totally Free</marquee></h4>
        </div>
    
    </div>
    <ul id="districts" style="float:left; padding-right:20px;padding-top:0px; font-size:15px;">
        <li style="list-style:none;" > <a href="#" style="text-decoration:none;">Dhaka</a></li>
        <li style="list-style:none"><a href="#" style="text-decoration:none;">Rajshahi</a></li>
        <li style="list-style:none"><a href="#" style="text-decoration:none;">Sylhet</a></li>
        <li style="list-style:none"><a href="#" style="text-decoration:none;">Khulna</a></li>
        <li style="list-style:none"><a href="#" style="text-decoration:none;">Barishal</a></li>
        <li style="list-style:none"><a href="#" style="text-decoration:none;">chittagong</a></li>
        <li style="list-style:none"><a href="#" style="text-decoration:none;">Rangpur</a></li>
    </ul>



    <asp:Image style="float:right; padding-right:40px;"  ID="bdMap" runat="server" src="IMG/map.png" Width="300px" Height="300px"  />

    
    
    

</asp:Content>
