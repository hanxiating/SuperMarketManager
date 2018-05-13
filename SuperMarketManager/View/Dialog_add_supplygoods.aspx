<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dialog_add_supplygoods.aspx.cs" Inherits="SuperMarketManager.View.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td>选择供应商对应的货物类型</td>
                    <td>&nbsp;</td>
                    
                </tr>
                <tr>
                    <td> <asp:CheckBox ID="food" runat="server" Text="食品" />
                        <asp:CheckBox ID="fruit" runat="server" Text="水果" />
                        <asp:CheckBox ID="daily" runat="server" Text="日用品" />
                        <asp:CheckBox ID="drink" runat="server" Text="饮料" />
                        <asp:CheckBox ID="pen" runat="server" Text="文具" />
                        <asp:CheckBox ID="others" runat="server" Text="其他" /></td>
                    
                    
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="submit" runat="server" OnClick="Button1_Click" Text="提交" />
                    </td>
                    <td>&nbsp;</td>
                    
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
