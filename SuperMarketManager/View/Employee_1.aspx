<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee_1.aspx.cs" Inherits="SuperMarketManager.View.Employee" %>

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
             var part = tr.cells[4].innerText;
             //alert(str);
             document.getElementById("hide").value = str;
             document.getElementById("hide_part").value = part;
            // $("#lab_test").text = tr.cells[0].innerText;
             //alert(tr.cells[0].innerText);
         }
 
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div >
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

        <div id="menu" style="margin-left:15px;margin-top:75px;border-right:groove;" class="auto-style1">
            <asp:Button ID="emp_all" runat="server" class="btn btn-default btn-size" style="font-size:16px" Text="全体员工" ></asp:Button>
            <asp:Button ID="emp_HR" runat="server" class="btn btn-default btn-size" style="font-size:16px" Text="人事部" OnClick="emp_HR_Click"></asp:Button>
            <asp:Button ID="emp_finacial" runat="server" class="btn btn-default btn-size" style="font-size:16px" Text="财务部"></asp:Button>
            <asp:Button ID="emp_purches" runat="server" class="btn btn-default btn-size" style="font-size:16px" Text="采购部"></asp:Button>
            <asp:Button ID="emp_service" runat="server" class="btn btn-default btn-size" style="font-size:16px" Text="客服部"></asp:Button>
            <asp:Button ID="emp_rear" runat="server" class="btn btn-default btn-size" style="font-size:16px" Text="后勤部"></asp:Button>
            <asp:Button ID="emp_back" runat="server" class="btn btn-default btn-size" style="font-size:16px" Text="返回"></asp:Button>
        </div>

        <div id="content" style="width:80%;float:left;margin-left:20px;margin-top:70px;">
            <div style="text-align:left;margin-top:15px;margin-left:70px;">
                <asp:TextBox ID="search_text" runat="server" style="width:200px;height:30px;"></asp:TextBox>

                <asp:Button ID="search_btn" runat="server" style="height:30px;width:50px;font-size:14px;" Text="搜索" OnClick="search_btn_Click" />
                
                <asp:Button ID="emp_add" runat="server" Text="添加员工" style="height:30px;width:90px;margin-right:10px;margin-left:500px;" OnClick="emp_add_Click"/>
                <asp:Button ID="emp_update" runat="server" Text="修改" style="height:30px;width:50px;" />
                <asp:Button ID="emp_delete" runat="server" Text="删除" class="btn_delete" OnClick="emp_delete_Click"/>

            </div><br />
           
            <asp:ScriptManager ID="ScriptManager1" runat="server" />  
            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">  
                <ContentTemplate>  
                    <asp:Table ID="employeeInfo" runat="server"  CssClass="auto-style2 asp-table" Height="37px" Width="1024px" onclick="javascript:GoSel(event);" >
                        <asp:TableHeaderRow CssClass="header-font asp-table-header">
                            <asp:TableHeaderCell CssClass="table-bordered td text-center ">员工号</asp:TableHeaderCell>
                            <asp:TableHeaderCell CssClass="table-bordered td text-center">姓名</asp:TableHeaderCell>
                            <asp:TableHeaderCell CssClass="table-bordered td text-center">性别</asp:TableHeaderCell>
                            <asp:TableHeaderCell CssClass="table-bordered td text-center">联系方式</asp:TableHeaderCell>
                            <asp:TableHeaderCell CssClass="table-bordered td text-center">所在部门</asp:TableHeaderCell>
                           
                        </asp:TableHeaderRow>
                    </asp:Table>
                 </ContentTemplate>  
                <Triggers>  
                    <asp:AsyncPostBackTrigger ControlID="emp_delete" EventName="Click" />  
                </Triggers> 
            </asp:UpdatePanel>  
        </div>
        <asp:HiddenField ID="hide" runat="server" />
        <asp:HiddenField ID="hide_part" runat="server" />
<!--<div id="footer" style="background-color:#ffffff;clear:both;text-align:center; border-top:groove;border-color:lightgray;">
        版权 © runoob.com</div>-->
    </form>
</body>
</html>
