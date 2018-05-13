<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login2.aspx.cs" Inherits="SuperMarketManager.View.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 113px;
        }
        .auto-style2 {
            width: 32%;
            height: 247px;
        }
        .auto-style3 {
            width: 113px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            width: 1023px;
        }
    </style>
</head>
<body style="background-image:url(../Source/Login/gray.jpg); background-size:cover; ">
    <form id="form1" runat="server">
        <div>
            <table class="auto-style2" align="center" >
                <tr>
                    <td class="auto-style5">
                        <asp:Image ID="Image1" runat="server" Height="66px" ImageUrl="~/Source/others/图片2.png" Width="351px" />
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style5">
                        <table style="width:100%; background-color:rgba(255,255,255,0.5);margin-top:120px;" >
                            <tr>
                                <td class="auto-style1" style="text-align:center;padding-top:50px;padding-bottom:30px;">
                                    <asp:Label ID="Label1" runat="server" Text="用户名" ForeColor="Black" ></asp:Label>
                                </td>
                                <td style="padding-top:30px;padding-bottom:30px;">
                                    <asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox>
                                </td>
                                
                            </tr>
                            <tr>
                                <td class="auto-style3" style="text-align:center;margin-top:30px;padding-bottom:30px;">
                                    <asp:Label ID="Label2" runat="server" Text="密码" ForeColor="Black"></asp:Label>
                                </td>
                                <td class="auto-style4" style="padding-bottom:30px;">
                                    <asp:TextBox ID="TextBox2" runat="server" Width="150px"></asp:TextBox>
                                </td>
                                
                            </tr>
                            <tr>
                                <td class="auto-style1" colspan="2" style="text-align:center;padding-bottom:30px;">
                                    <asp:Button ID="Button1" runat="server" Text="登陆" OnClick="Button1_Click1" BackColor="Silver" BorderColor="White" CssClass="auto-style1" ForeColor="Black" />
                                    <asp:Button ID="Button2" runat="server" Text="重置" OnClick="Button2_Click1" BackColor="Silver" BorderColor="White" CssClass="auto-style1" ForeColor="Black" />
                                </td>
                                
                            </tr>
                        </table>
                    </td>
                   
                </tr>
                
            </table>
        </div>
    </form>
</body>
</html>
