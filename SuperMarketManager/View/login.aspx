<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication1.login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>管理登录</title>
    <style type="text/css">
        .style1
        {
            height: 34px;
            width: 396px;
        }
        .style2
        {
            width: 186px;
        }
        .style3
        {
            height: 34px;
            width: 234px;
        }
        .style4
        {
            width: 186px;
            height: 52px;
        }
        .style5
        {
            width: 185px;
            height: 52px;
        }
        .style6
        {
            width: 185px;
        }
        
        .bodyBg 
        {
            background:#transparent;
            filter:progid:DXImageTransform.Microsoft.gradient(GradientType ='1',enabled='true',startColorstr=#AAFFFFFF, endColorstr=#AAFFFFFF);
            } 
 
    </style>
</head>
<body style="background-image:url(Resources/界面1.jpg); background-repeat:repeat-x; ">>

    <form id="form1" runat="server">
    <div>
    
        <table style="width:48%; margin-top: 146px; height: 431px; margin-left: 402px; margin-bottom: 0px;">
            <tr>
                <td class="style3" bgcolor="White">

                    <asp:Image ID="Image1" runat="server" Height="210px" 
                        ImageUrl="~/Resources/b501d9acc55e3c449c86c865a4394e9c.jpg" Width="207px" 
                        style="margin-left: 0px" />

                    </td>
                <td class="style1" bgcolor="White">
                    <table style="width:83%; height: 179px;">
                        <tr>
                            <td class="style4" style="text-align: center" bgcolor="White">
                                <asp:Label ID="Label1" runat="server" Text="用户名"></asp:Label>
                            </td>
                            <td class="style5">
                                <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px" 
                                    Height="33px" Width="167px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2" style="text-align: center">
                                <asp:Label ID="Label2" runat="server" Text="密码"></asp:Label>
                            </td>
                            <td class="style6">
                                <asp:TextBox ID="TextBox2" runat="server" Height="33px" Width="167px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2" style="text-align: center">
                                <asp:Button ID="Button1" runat="server" Text="登录" Height="28px" Width="100px" 
                                    onclick="Button1_Click" />
                            </td>
                            <td style="text-align: left" class="style6">
                                <asp:Button ID="Button2" runat="server" style="text-align: center" 
                                    Text="重置" Height="26px" Width="93px" onclick="Button2_Click" />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                    </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
