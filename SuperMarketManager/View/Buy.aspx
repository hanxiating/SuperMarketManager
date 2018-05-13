<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Buy.aspx.cs" Inherits="SuperMarketManager.View.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script type="text/javascript">
        var a = document.getElementById("num").value;
        function add() {
            a++;
            document.getElementById("num").innerText = a;
            return true;
        }
        function sub() {
            a--;
            document.getElementById("num").innerText = a;
            return true;
        }
    </script>
    <link href="../Content/view.css" type="text/css" rel="stylesheet" />
    <link href="../Content/bootstrap.css" type="text/css" rel="stylesheet" />
    <link href="../Content/bootstrap.min.css" type="text/css" rel="stylesheet" />
    <link href="../Content/Site.css" type="text/css" rel="stylesheet" />
    <link href="../mmk_media/image/supermarket.png" type="text/css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 135px;
        }

        .auto-style2 {
            width: 136px;
        }

        .auto-style3 {
            width: 1024px;
        }

        .auto-style6 {
            width: 148px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width: 100%;">
            <tr>
                <td>
                    <h1 align="left">

                        <asp:Image runat="server" ImageUrl="~/Source/others/图片2.png" Height="108px" Width="580px" />
                </td>
                </h1></td>
                
            </tr>
            <tr>
                <td>
                    <table style="width: 100%;">
                        <tr>
                            <td class="auto-style2">
                                <table class="auto-style1">
                                    <tr>
                                        <td style="height: 50px" align="center">HOT！</td>

                                    </tr>
                                    <tr>
                                        <td style="height: 50px" align="center">食品</td>

                                    </tr>
                                    <tr>
                                        <td style="height: 50px" align="center">水果</td>

                                    </tr>
                                    <tr>
                                        <td style="height: 50px" align="center">日用品</td>

                                    </tr>
                                    <tr>
                                        <td style="height: 50px" align="center">饮料</td>

                                    </tr>
                                    <tr>
                                        <td style="height: 50px" align="center">文具</td>

                                    </tr>
                                    <tr>
                                        <td style="height: 50px" align="center">其他</td>

                                    </tr>
                                </table>
                            </td>
                            <td valign="top">
                                <asp:Table ID="orders" runat="server" CssClass="auto-style2 asp-table" Height="37px" Width="80%">
                                    <asp:TableHeaderRow CssClass="header-font asp-table-header">
                                        <asp:TableHeaderCell CssClass="table-bordered td text-center ">商品名</asp:TableHeaderCell>
                                        <asp:TableHeaderCell CssClass="table-bordered td text-center">售价</asp:TableHeaderCell>
                                        <asp:TableHeaderCell CssClass="table-bordered td text-center">库存</asp:TableHeaderCell>
                                        <asp:TableHeaderCell CssClass="table-bordered td text-center">购买量</asp:TableHeaderCell>
                                    </asp:TableHeaderRow>
                                    <asp:TableRow CssClass="asp-table-normal">
                                        <asp:TableCell CssClass="table-bordered td text-center">菠萝</asp:TableCell>
                                        <asp:TableCell CssClass="table-bordered td text-center">8.5元/斤</asp:TableCell>
                                        <asp:TableCell CssClass="table-bordered td text-center">100斤</asp:TableCell>
                                        <asp:TableCell CssClass="table-bordered td text-center">
                                            <div style="padding: 5px">
                                                <asp:Button ID="sub" runat="server" style="height:25px; width:25px;background-color:#eee;border-style:none" Text="-"></asp:Button>
                                                <%--<input id="num" type="text" value="0" style="height: 25px;" />--%>
                                                <asp:TextBox ID="num" runat="server" Text="0"></asp:TextBox>
                                                <asp:Button ID="add" runat="server" style="height:25px; width:25px;background-color:#eee;border-style:none" Text="+"></asp:Button>
                                            </div>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </td>

                        </tr>

                    </table>
                </td>

            </tr>
            <tr style="text-align: right">
                <td>
                    <div style="margin-left: auto; margin-right: auto; background: #eee;">
                        <asp:Button ID="Button19" runat="server" Text="提交" Height="43px" Width="121px" Font-Size="Medium" OnClick="Button19_Click1" />
                    </div>

                </td>

            </tr>
        </table>
    </form>
</body>
</html>
