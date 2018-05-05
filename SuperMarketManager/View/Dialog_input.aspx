<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <title></title>    
    <style type="text/css">
        .auto-style1 {
            width: 27%;
        }
        .auto-style2 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">   
        <table class="auto-style1">
            <tr>
                <td style="text-align:center">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style2">
                        <asp:ListItem Selected="True">请选择供应商</asp:ListItem>
                        <asp:ListItem>海澜之家</asp:ListItem>
                        <asp:ListItem>爱水果</asp:ListItem>
                    </asp:DropDownList>
                </td>
                
            </tr>
            <tr>
                <td style="text-align:center">数量<asp:TextBox ID="TextBox1" runat="server" Width="67px"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td style="text-align:center">
                    <asp:Button ID="Button1" runat="server" Text="确认" />
                    <asp:Button ID="Button2" runat="server" Text="取消" />
                </td>
                
            </tr>
        </table>
    </form>
</body>
</html>
