<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Buy.aspx.cs" Inherits="SuperMarketManager.View.Buy" %>

<!DOCTYPE html>
<script runat="server">


</script>

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
                 
            </div>
        </div>

        <div id="menu" style="margin-left:15px;margin-top:75px;border-right:groove;" class="auto-style1">
            <asp:Button ID="client_all" runat="server" class="btn btn-default btn-size" style="font-size:16px" Text="Hot!" ></asp:Button>
            <asp:Button ID="client_food" runat="server" class="btn btn-default btn-size" style="font-size:16px" Text="食品" OnClick="emp_HR_Click"></asp:Button>
            <asp:Button ID="client_fruit" runat="server" class="btn btn-default btn-size" style="font-size:16px" Text="水果"></asp:Button>
            <asp:Button ID="client_use" runat="server" class="btn btn-default btn-size" style="font-size:16px" Text="日用品"></asp:Button>
            <asp:Button ID="client_drink" runat="server" class="btn btn-default btn-size" style="font-size:16px" Text="饮料"></asp:Button>
            <asp:Button ID="client_wenju" runat="server" class="btn btn-default btn-size" style="font-size:16px" Text="文具"></asp:Button>
            <asp:Button ID="client_other" runat="server" class="btn btn-default btn-size" style="font-size:16px" Text="其他"></asp:Button>
        </div>

        <div id="content" style="width:80%;float:left;margin-left:20px;margin-top:70px;">
            <div style="text-align:left;margin-top:15px;margin-left:70px;">

                
                <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />

            </div><br />
           
            <asp:ScriptManager ID="ScriptManager1" runat="server" />  
            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">  
                <ContentTemplate>  
                    <asp:Table ID="employeeInfo" runat="server"  CssClass="auto-style2 asp-table" Height="37px" Width="1024px" onclick="javascript:GoSel(event);" >
                        <asp:TableHeaderRow CssClass="header-font asp-table-header">
                            <asp:TableHeaderCell CssClass="table-bordered td text-center ">商品名</asp:TableHeaderCell>
                            <asp:TableHeaderCell CssClass="table-bordered td text-center">售价</asp:TableHeaderCell>
                            <asp:TableHeaderCell CssClass="table-bordered td text-center">库存</asp:TableHeaderCell>
                            <asp:TableHeaderCell CssClass="table-bordered td text-center">购买量</asp:TableHeaderCell>
                        </asp:TableHeaderRow>
                    </asp:Table>
                 </ContentTemplate>  
                <Triggers>  
                    <asp:AsyncPostBackTrigger ControlID="emp_delete" EventName="Click" />  
                    <asp:AsyncPostBackTrigger ControlID="search_btn" EventName="Click" />
                </Triggers> 
            </asp:UpdatePanel>  
        </div>
        <asp:HiddenField ID="hide" runat="server" />
        <asp:HiddenField ID="hide_part" runat="server" />
    </form>
</body>
</html>
