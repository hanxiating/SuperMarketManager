<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dialog_input.aspx.cs" Inherits="SuperMarketManager.View.WebForm4" %>

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
                    <td>
                        &nbsp;</td>
                    
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server"  Height="16px">
                            <asp:ListItem>请选择供应商</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                   
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确定" />
                        <asp:Button ID="Button2" runat="server" Text="取消" />
                    </td>
                    
                </tr>
               
            </table>
        </div>
    </form>
</body>
</html>
