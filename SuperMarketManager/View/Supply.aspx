<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Supply.aspx.cs" Inherits="SuperMarketManager.View.Supply" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>员工管理</title>

    <link href="../Content/view.css" type="text/css" rel="stylesheet"/>
    <link href="../Content/bootstrap.css" type="text/css" rel="stylesheet"/>
    <link href="../Content/bootstrap.min.css" type="text/css" rel="stylesheet"/>
    <link href="../Content/Site.css" type="text/css" rel="stylesheet"/>
    <link href="../mmk_media/image/supermarket.png" type="text/css" rel="stylesheet"/>

    <style type="text/css">
        .auto-style2 {
            text-align: center;
            border-collapse: collapse;
            border-left: 2px solid black;
            border-right: 0px solid black;
            border-top: 2px solid black;
            border-bottom: 0px solid black;
            margin-bottom: 20px;
            border-color:lightgray;
            border-width:3px;
        }
    </style>

</head>
<body class="body">
    <form id="form1" runat="server">
        <div >
            <div class="nav navbar-inverse navbar-fixed-top">
                <div class="market-title">
                    <asp:Image runat="server" Height="71px" ImageUrl="~/mmk_media/image/market_3.png" Width="493px" />
                </div>
                 <ul>
                   <li><a href="Home.aspx">首页</a></li>
                   <li><a href="Employee.aspx">员工管理</a></li>
                   <li><a href="Supply.aspx">供应商管理</a></li>
                   <li><a href="Store.aspx">库存管理</a></li>
                   <li><a href="Sale.aspx">销售记录</a></li>
                     <li><a href="login.aspx">退出</a></li>
                 </ul>
            </div>
        </div>

        <div id="content" style="width:80%;height:600px;float:left;margin-left:20px;margin-top:70px;">
            <div style="text-align:left;margin-top:15px;margin-left:70px;">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Value="-1">请选择供应商品种类</asp:ListItem>
                    <asp:ListItem Value="0">食品</asp:ListItem>
                    <asp:ListItem Value="1">水果</asp:ListItem>
                    <asp:ListItem Value="2">日用品</asp:ListItem>
                    <asp:ListItem Value="3">饮料</asp:ListItem>
                    <asp:ListItem Value="4">文具</asp:ListItem>
                    <asp:ListItem Value="5">其他</asp:ListItem>
                </asp:DropDownList>

                <asp:Button ID="search_btn" runat="server" style="height:30px;width:50px;font-size:14px;" Text="搜索" OnClick="search_btn_Click"/>

                 <asp:Button ID="supply_add" runat="server" Text="添加" class="btn_update" OnClick="supply_add_Click"/>

            </div><br />
           

            <asp:Table ID="supplyTable" runat="server"  CssClass="auto-style2 asp-table" Height="37px" Width="1024px">
                <asp:TableHeaderRow CssClass="header-font asp-table-header">
                    <asp:TableHeaderCell CssClass="table-bordered td text-center">供应商名称</asp:TableHeaderCell>
                    <asp:TableHeaderCell CssClass="table-bordered td text-center">地址</asp:TableHeaderCell>
                    <asp:TableHeaderCell CssClass="table-bordered td text-center">联系方式</asp:TableHeaderCell>
                    <asp:TableHeaderCell CssClass="table-bordered td text-center">备注</asp:TableHeaderCell>
                </asp:TableHeaderRow>
                <asp:TableRow CssClass="asp-table-normal">
                     <asp:TableCell CssClass="table-bordered td text-center">123456</asp:TableCell>
                     <asp:TableCell CssClass="table-bordered td text-center">123456</asp:TableCell>
                     <asp:TableCell CssClass="table-bordered td text-center">123456</asp:TableCell>
                     <asp:TableCell CssClass="table-bordered td text-center">123456</asp:TableCell>
                </asp:TableRow>
            </asp:Table>

        </div>
 
        <div id="footer" style="background-color:#ffffff;clear:both;text-align:center; border-top:groove;border-color:lightgray;">
        版权 © runoob.com</div>
    </form>
</body>
</html>
