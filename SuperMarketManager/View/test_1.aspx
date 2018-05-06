<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test_1.aspx.cs" Inherits="SuperMarketManager.View.test_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>员工管理</title>

    <link href="../Content/view.css" type="text/css" rel="stylesheet"/>
    <link href="../Content/bootstrap.css" type="text/css" rel="stylesheet"/>
    <link href="../Content/bootstrap.min.css" type="text/css" rel="stylesheet"/>
    <link href="../Content/Site.css" type="text/css" rel="stylesheet"/>

</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <img class="logo" src="mmk_media/image/test.png" alt="logo"/>
            <img class="slash" src="mmk_media/image/slash.png" alt=""/>
            <img class="webtitle" src="mmk_media/image/title2.png" alt=""/>
        </div>
        <div class="topnav">
            <a class="menu active" href="test.aspx">主页</a>
            <a class="menu" href="javascript:redictMyOrder()">我的订单</a>
            <a class="menu" href="javascript:redictReleaseOrder()">发布订单</a>
            <a class="menu" href="#aboutus">关于我们</a>
            <a class="exit" href="javascript:exitLogin();">退出账号</a>
        </div>

        <div id="menu" style="width:10%;height:600px;float:left;">
            <button class="btn btn-default btn-size" style="font-size:16px">全部员工 &raquo;</button>
            <button class="btn btn-default btn-size" style="font-size:16px">人&nbsp; 事&nbsp; 部 &raquo;</button>
            <button class="btn btn-default btn-size" style="font-size:16px">财&nbsp; 务&nbsp; 部 &raquo;</button>
            <button class="btn btn-default btn-size" style="font-size:16px">采&nbsp; 购&nbsp; 部 &raquo;</button>
            <button class="btn btn-default btn-size" style="font-size:16px">客&nbsp; 服&nbsp; 部 &raquo;</button>
            <button class="btn btn-default btn-size" style="font-size:16px">后&nbsp; 勤&nbsp; 部 &raquo;</button>
            <button class="btn btn-default btn-size" style="font-size:16px">返&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 回 &raquo;</button>
        </div>
        <div id="content" style="width:80%;height:600px;float:left;margin-left:20px">
            <div style="text-align:right">
                <asp:TextBox ID="search" runat="server" style="width:200px;height:30px;"></asp:TextBox>

                <asp:Button ID="Button1" runat="server" style="height:30px;width:50px;font-size:14px;" Text="搜索" />

            </div><br />
           

            <asp:Table ID="employeeInfo" runat="server"  CssClass="table">
                <asp:TableHeaderRow CssClass="header-font">
                    <asp:TableHeaderCell CssClass="table-bordered td text-center">员工号</asp:TableHeaderCell>
                    <asp:TableHeaderCell CssClass="table-bordered td text-center">姓名</asp:TableHeaderCell>
                    <asp:TableHeaderCell CssClass="table-bordered td text-center">性别</asp:TableHeaderCell>
                    <asp:TableHeaderCell CssClass="table-bordered td text-center">联系方式</asp:TableHeaderCell>
                    <asp:TableHeaderCell CssClass="table-bordered td text-center">所在部门</asp:TableHeaderCell>
                    <asp:TableHeaderCell CssClass="table-bordered td text-center">操作</asp:TableHeaderCell>
                </asp:TableHeaderRow>
            </asp:Table>

        </div>
 
        <div id="footer" style="background-color:#FFA500;clear:both;text-align:center;">
        版权 © runoob.com</div>
    </form>
</body>
</html>
