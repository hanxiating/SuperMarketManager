<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DIalog_add_goods.aspx.cs" Inherits="SuperMarketManager.View.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 144px;
        }
        .auto-style2 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">新建货物项目</td>
                    <td>&nbsp;</td>
                    
                </tr>
                 <tr>
                    <td class="auto-style1">名称</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style2"></asp:TextBox>
                     </td>
                    
                </tr>
                 <tr>
                    <td class="auto-style1">类型</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem Selected="True" Value="6">请选择类别</asp:ListItem>
                                        <asp:ListItem Value="0">食品</asp:ListItem>
                                        <asp:ListItem Value="1">水果</asp:ListItem>
                                        <asp:ListItem Value="2">日用品</asp:ListItem>
                                        <asp:ListItem Value="3">饮品</asp:ListItem>
                                        <asp:ListItem Value="4">文具</asp:ListItem>
                                        <asp:ListItem Value="5">其他</asp:ListItem>
                        </asp:DropDownList>
                       
                    
                </tr>
                 <tr>
                    <td class="auto-style1">数量</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                     </td>
                    
                </tr>
                 <tr>
                    <td class="auto-style1">单价</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                     </td>
                    
                </tr>
                 <tr>
                    <td class="auto-style1">折扣</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                     </td>
                    
                </tr>
                 <tr>
                    <td class="auto-style1">限制数量</td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                     </td>
                    
                </tr>
                 <tr>
                    <td class="auto-style1">
                        <asp:Button ID="Button1" runat="server" Text="确定" OnClick="Button1_Click" />
                        <asp:Button ID="Button2" runat="server" Text="取消" OnClick="Button2_Click" />
                     </td>
                    <td>&nbsp;</td>
                    
                </tr>
                
            </table>
        </div>
    </form>
</body>
</html>
