<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sale.aspx.cs" Inherits="SuperMarketManager.View.Sale" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>销售记录</title>

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

     

        <div id="content" style="width:80%;height:600px;float:left;margin-left:20px;margin-top:70px;">
            <div style="text-align:left;margin-top:15px;margin-left:70px;">
                <asp:TextBox ID="search_text" runat="server" style="width:200px;height:30px;"></asp:TextBox>

                <asp:Button ID="search_btn" runat="server" style="height:30px;width:50px;font-size:14px;" Text="搜索"/>


            </div><br />
           

            <asp:Table ID="saleInfo" runat="server"  CssClass="auto-style2 asp-table" Height="37px" Width="1024px">
                <asp:TableHeaderRow CssClass="header-font asp-table-header">
                    <asp:TableHeaderCell CssClass="table-bordered td text-center ">商品编号</asp:TableHeaderCell>
                    <asp:TableHeaderCell CssClass="table-bordered td text-center">名称</asp:TableHeaderCell>
                    <asp:TableHeaderCell CssClass="table-bordered td text-center">种类</asp:TableHeaderCell>
                    <asp:TableHeaderCell CssClass="table-bordered td text-center">销售时间</asp:TableHeaderCell>
                    <asp:TableHeaderCell CssClass="table-bordered td text-center">数量</asp:TableHeaderCell>
                </asp:TableHeaderRow>
                <asp:TableRow CssClass="asp-table-normal">
                     <asp:TableCell CssClass="table-bordered td text-center">123456</asp:TableCell>
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
