<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dialog_update.aspx.cs" Inherits="SuperMarketManager.View.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 108px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">修改员工信息</td>
                    <td>
                        &nbsp;</td>
                    
                </tr>
                <tr>
                    <td class="auto-style1">姓名</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style1">性别</td>
                    <td><asp:RadioButtonList ID="Sex" runat="server" RepeatDirection="Horizontal" Width="122px" >
                                    <asp:ListItem Text="男" Value="0" Selected="True"></asp:ListItem>
                                    <asp:ListItem Value="1">女</asp:ListItem>
                                    </asp:RadioButtonList></td>
                    
                </tr>
                <tr>
                    <td class="auto-style1">联系方式</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style1">所在部门</td>
                    <td><asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                        <asp:ListItem Selected="True" Value="5">请选择部门</asp:ListItem>
                                        <asp:ListItem Value="0">人事部</asp:ListItem>
                                        <asp:ListItem Value="1">财务部</asp:ListItem>
                                        <asp:ListItem Value="2">采购部</asp:ListItem>
                                        <asp:ListItem Value="3">客服部</asp:ListItem>
                                        <asp:ListItem Value="4">后勤部</asp:ListItem>
                                    </asp:DropDownList></td>
                    
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="Button" />
                    </td>
                    
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
