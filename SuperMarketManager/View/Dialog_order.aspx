<%@ Page Language="C#" %>

<!DOCTYPE html>
<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("订单提交成功！");
    }
</script>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <title></title>    
    <style type="text/css">
        .auto-style1 {
            height: 20px;
        }
        .auto-style2 {
            width: 58%;
            height: 105px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">   
        <table class="auto-style2">
            <tr>
                <td>请确认您的订单</td>
                
            </tr>
            <tr>
                <td>
                    <table style="width:100%;">
                        <tr>
                            <td>
                                <table style="width:100%;">
                                    <tr>
                                        <td>名称：XXX&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 数量：XX&nbsp;&nbsp; 单价：XX</td>
                                        
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">名称：XXX&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 数量：XX&nbsp;&nbsp; 单价：XX</td>

                                    </tr>
                                    <tr>
                                        <td>名称：XXX&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 数量：XX&nbsp;&nbsp; 单价：XX</td>
                                       
                                    </tr>
                                </table>
                            </td>
                           
                        </tr>
                        <tr>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 总价：&nbsp;</td>
                            
                        </tr>
                      
                    </table>
                </td>
                
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="确认" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="取消" />
                </td>
                
            </tr>
        </table>
    </form>
</body>
</html>
