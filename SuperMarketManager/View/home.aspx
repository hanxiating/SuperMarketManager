<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="SuperMarketManager.View.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>首页</title>

    <link href="../Content/view.css" type="text/css" rel="stylesheet" />
    <link href="../Content/bootstrap.css" type="text/css" rel="stylesheet" />
    <link href="../Content/bootstrap.min.css" type="text/css" rel="stylesheet" />
    <link href="../Content/Site.css" type="text/css" rel="stylesheet" />
    <link href="../mmk_media/image/supermarket.png" type="text/css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="nav navbar-inverse navbar-fixed-top">
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
    <div style="margin-top: 50px;background-color:black;">
        <marquee direction="left" truespeed loop="-1" scrolldelay="0" onmouseover="this.stop();" onmouseout="this.start();">
            <asp:Image runat="server" Width="1400" ImageUrl="~/Source/supermarket/supermarket1.jpg" />
            <asp:Image runat="server" Width="1400" ImageUrl="~/Source/supermarket/supermarket2.jpg" />
            <asp:Image runat="server" Width="1400" ImageUrl="~/Source/supermarket/supermarket3.jpg" />
        </marquee>
    </div>
</body>
</html>
