﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Store.aspx.cs" Inherits="SuperMarketManager.View.Store" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>库存管理</title>

    <link href="../Content/view.css" type="text/css" rel="stylesheet"/>
    <link href="../Content/bootstrap.css" type="text/css" rel="stylesheet"/>
    <link href="../Content/bootstrap.min.css" type="text/css" rel="stylesheet"/>
    <link href="../Content/Site.css" type="text/css" rel="stylesheet"/>
   <link href="../mmk_media/image/supermarket.png" type="text/css" rel="stylesheet"/>

    <style type="text/css">
        .auto-style1 {
            width: 10%;
            height: 600px;
            float: left;
        }
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
     <script type="text/javascript">
         var selTr = null;
         function GoSel(evt)
         {
            var el = evt.srcElement?evt.srcElement:evt.target;
            if(el.tagName.toUpperCase() !="TD") return;
             var tr = el.parentNode;
             
            tr.style.backgroundColor = "lightblue";
            if(selTr !=null)
            {
                selTr.style.backgroundColor ="white";
            }
            
             selTr = tr;
             var str = tr.cells[0].innerText;
             var part = tr.cells[2].innerText;
             //alert(str);
             document.getElementById("hide_goodsId").value = str;
             document.getElementById("hide_goodsType").value = part;
            // $("#lab_test").text = tr.cells[0].innerText;
             //alert(tr.cells[0].innerText);
         }
 
    </script>
    <script src="aspTable.js" lang="javascript" type="text/javascript"></script>

</head>
<body class="body">
    <form id="form1" runat="server">
        <div >
            <div class="nav navbar-inverse navbar-fixed-top">
                <div class="market-title">
                    <asp:Image runat="server" Height="71px" ImageUrl="~/Source/market_3.png" Width="493px" />
                </div>
                 <ul>
                   <li><a href="home.aspx">首页</a></li>
                   <li><a href="Employee_1.aspx">员工管理</a></li>
                   <li><a href="Supply.aspx">供应商管理</a></li>
                   <li><a href="Store.aspx">库存管理</a></li>
                   <li><a href="Sale.aspx">销售记录</a></li>
                    <li><a href="login.aspx">退出</a></li>
                 </ul>
            </div>
        </div>

        <div id="menu" style="margin-left:15px;margin-top:75px;border-right:groove;" class="auto-style1">
            <asp:Button ID="store_all" runat="server" class="btn btn-default btn-size" style="font-size:16px" Text="全部" OnClick="store_all_Click" />
            <asp:Button ID="store_food" runat="server" class="btn btn-default btn-size" style="font-size:16px" Text="食品" OnClick="store_food_Click"></asp:Button>
            <asp:Button ID="store_fruit" runat="server" class="btn btn-default btn-size" style="font-size:16px" Text="水果" OnClick="store_fruit_Click"></asp:Button>
            <asp:Button ID="store_daliy" runat="server" class="btn btn-default btn-size" style="font-size:16px" Text="日用品" OnClick="store_daliy_Click"></asp:Button>
            <asp:Button ID="store_drink" runat="server" class="btn btn-default btn-size" style="font-size:16px" Text="饮料" OnClick="store_drink_Click"></asp:Button>
            <asp:Button ID="store_staionery" runat="server" class="btn btn-default btn-size" style="font-size:16px" Text="文具" OnClick="store_staionery_Click"></asp:Button>
            <asp:Button ID="store_else" runat="server" class="btn btn-default btn-size" style="font-size:16px" Text="其他" OnClick="store_else_Click"></asp:Button>
            <asp:Button ID="store_back" runat="server" class="btn btn-default btn-size" style="font-size:16px" Text="返回"></asp:Button>
        </div>

        <div id="content" style="width:80%;height:600px;float:left;margin-left:20px;margin-top:70px;">
            <div style="text-align:left;margin-top:15px;margin-left:70px;">
                <asp:TextBox ID="search_text" runat="server" style="width:200px;height:30px;"></asp:TextBox>

                <asp:Button ID="search_btn" runat="server" style="height:30px;width:50px;font-size:14px;" Text="搜索" />
                <asp:Button ID="object_add" runat="server" Text="增加物品" style="height:30px;width:90px;margin-right:10px;margin-left:500px;" OnClick="object_add_Click" Width="59px"/>
                <asp:Button ID="store_add" runat="server" Text="进货" class="btn_delete" OnClick="store_add_Click"/>

            </div><br />
           

            <asp:Table ID="storeInfo" runat="server"  CssClass="auto-style2 asp-table" Height="37px" Width="1024px" onclick="javascript:GoSel(event);">
                <asp:TableHeaderRow CssClass="header-font asp-table-header">
                    <asp:TableHeaderCell CssClass="table-bordered td text-center ">商品编号</asp:TableHeaderCell>
                    <asp:TableHeaderCell CssClass="table-bordered td text-center">名称</asp:TableHeaderCell>
                    <asp:TableHeaderCell CssClass="table-bordered td text-center">类型</asp:TableHeaderCell>
                    <asp:TableHeaderCell CssClass="table-bordered td text-center">数量</asp:TableHeaderCell>
                </asp:TableHeaderRow>
            </asp:Table>

        </div>
        <asp:HiddenField ID="hide_goodsId" runat="server" />
        <asp:HiddenField ID="hide_goodsType" runat="server" />
        <div id="footer" style="background-color:#ffffff;clear:both;text-align:center; border-top:groove;border-color:lightgray;">
        版权 © runoob.com</div>
    </form>
</body>
</html>
