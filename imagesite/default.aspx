<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="imagesite._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Magnific Popup core CSS file -->
    <link rel="stylesheet" href="magnific-popup/magnific-popup.css"/> 
    <!-- jQuery 1.7.2+ or Zepto.js 1.0+ -->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script> 
    <!-- Magnific Popup core JS file -->
    <script src="magnific-popup/jquery.magnific-popup.js"></script>     
    <link rel="stylesheet" type="text/css" href="style.css"/>
   
    <title></title>

</head>
<body>
    <!--<a href="./"><img src="./pics/logo.gif"/></a>-->
    <a href="./">
        <div id="header">
            QCrossover<br />
        </div>
    </a> 
    
    <br />
    <br />

    <div class="popup-gallery">
        <asp:Repeater ID="RepeaterImages" runat="server">
        <ItemTemplate>
            <a href="<%# Container.DataItem %>" title="<%# Container.DataItem %>">
                   <asp:Image ID="Image"  runat="server" class="pic" height="250" width="250" ImageUrl='<%# Container.DataItem %>' /> 
            </a>    
        </ItemTemplate>
        </asp:Repeater>
    </div>
     <script type="text/javascript">
         $(document).ready(function () {
             $('.popup-gallery').magnificPopup({
                 delegate: 'a',
                 type: 'image',
                 tLoading: 'Loading image #%curr%...',
                 mainClass: 'mfp-img-mobile',
                 gallery: {
                     enabled: true,
                     navigateByImgClick: true,
                     preload: [0, 1] // Will preload 0 - before current, and 1 after the current image
                 },
                 image: {
                     tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',
                     titleSrc: function (item) {
                         return item.el.attr('title') + '<small>by Fahad Jameel</small>';
                     }
                 }
             });
         });
    </script>
    <hr />
    
    <div id="footer">
        All Credits to FJam, etechforum.com<br />
    </div>
</body>
</html>
