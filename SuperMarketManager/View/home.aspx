<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="SuperMarketManager.View.home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>首页</title>

    <link href="../Content/css/slider.css" type="text/css" rel="stylesheet" />
    <link href="../Content/view.css" type="text/css" rel="stylesheet" />
    <link href="../Content/bootstrap.css" type="text/css" rel="stylesheet" />
    <link href="../Content/bootstrap.min.css" type="text/css" rel="stylesheet" />
    <link href="../Content/Site.css" type="text/css" rel="stylesheet" />
    <link href="../mmk_media/image/supermarket.png" type="text/css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="nav navbar-inverse navbar-fixed-top" style="left: 0; right: 0; top: 0">
                <div class="market-title">
                    <asp:Image runat="server" Height="71px" ImageUrl="~/Source/market_3.png" Width="493px" />
                </div>
                <ul>
                    <li><a href="Home.aspx">首页</a></li>
                    <li><a href="Employee_1.aspx">员工管理</a></li>
                    <li><a href="Supply.aspx">供应商管理</a></li>
                    <li><a href="Store.aspx">库存管理</a></li>
                    <li><a href="Sale.aspx">销售记录</a></li>
                    <li><a href="login.aspx">退出</a></li>
                </ul>
            </div>
        </div>
    </form>
    <div class="hl_main5_content">
        <div class="hl_scrool_leftbtn"><label style="margin-top:10px;margin-left:2px;"><</label></div>
        <div class="hl_scrool_rightbtn"><label style="margin-top:10px;margin-left:2px;">></label></div>
        <div class="hl_main5_content1">
            <ul>
                <li><img alt="supermarket" src="../Source/supermarket/supermarket1.jpg" /></li>
                <li><img alt="supermarket" src="../Source/supermarket/supermarket2.jpg" /></li>
                <li><img alt="supermarket" src="../Source/supermarket/supermarket3.jpg" /></li>
                <li><img alt="supermarket" src="../Source/supermarket/supermarket4.jpg" /></li>
                <li><img alt="supermarket" src="../Source/supermarket/supermarket5.jpg" /></li>
                <li><img alt="supermarket" src="../Source/supermarket/supermarket6.jpg" /></li>
                <li><img alt="supermarket" src="../Source/supermarket/supermarket7.jpg" /></li>
            </ul>
        </div>
    </div>
    <hr />
    <div style="text-align:center;">
        <label style="text-align:center;font-size:22px;font-family:Tahoma;font-weight:lighter;">超市在线管理软件，给你简单操作！</label>
    </div>
    <hr />
        <div style="margin-left:30px;display:inline-block;">
            <img src="../Source/home/home1.jpg" style="width:400px;"></img>
        <div style="margin-left:15px;display:inline-block;">
            <img src="../Source/home/home2.jpg" style="width:400px;"></img>
        </div>
        <div style="margin-left:15px;display:inline-block;">
            <img src="../Source/home/home3.jpg" style="width:400px;"></img>
        </div>
    </div>
    <script type="text/javascript" src="http://jt.875.cn/js/jquery.js"> </script>
    <script type="text/javascript">
        var flag = "left";
        function DY_scroll(wraper, prev, next, img, speed, or) {
            var wraper = $(wraper);
            var prev = $(prev);
            var next = $(next);
            var img = $(img).find('ul');
            var w = img.find('li').outerWidth(true);
            var s = speed;
            next.click(function () {
                img.animate({ 'margin-left': -w }, function () {
                    img.find('li').eq(0).appendTo(img);
                    img.css({ 'margin-left': 0 });
                });
                flag = "left";
            });
            prev.click(function () {
                img.find('li:last').prependTo(img);
                img.css({ 'margin-left': -w });
                img.animate({ 'margin-left': 0 });
                flag = "right";
            });
            if (or == true) {
                ad = setInterval(function () { flag == "left" ? next.click() : prev.click() }, s * 1000);
                wraper.hover(function () { clearInterval(ad); }, function () { ad = setInterval(function () { flag == "left" ? next.click() : prev.click() }, s * 1000); });
            }
        }
        DY_scroll('.hl_main5_content', '.hl_scrool_leftbtn', '.hl_scrool_rightbtn', '.hl_main5_content1', 3, true); // true为自动播放，不加此参数或false就默认不自动 
    </script>
</body>
</html>
