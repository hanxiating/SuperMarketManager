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
 
        .auto-style1 {
            width: 42%;
            height: 342px;
        }
        .auto-style2 {
            width: 211px;
            height: 52px;
        }
        .auto-style3 {
            width: 211px;
        }
 
    </style>
</head>
<body style="background-image:url(../Source/Login/bk.jpg); background-repeat:repeat-x; ">

    <form id="form1" runat="server">
    <div>
    
        <table style="margin-top: 146px; margin-left: 402px; margin-bottom: 0px;" class="auto-style1">
            <tr>
                <td class="style3" bgcolor="White">

                    <asp:Image ID="Image1" runat="server" Height="210px" 
                        ImageUrl="~/Source/Login/b501d9acc55e3c449c86c865a4394e9c.jpg" Width="207px" 
                        style="margin-left: 0px" />

                    </td>
                <td class="style1" bgcolor="White">
                    <table style="width:83%; height: 179px;">
                        <tr>
                            <td class="style4" style="text-align: center" bgcolor="White">
                                <asp:Label ID="Label1" runat="server" Text="用户名"></asp:Label>
                            </td>
                            <td class="auto-style2">
                                <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px" 
                                    Height="33px" Width="167px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2" style="text-align: center">
                                <asp:Label ID="Label2" runat="server" Text="密码"></asp:Label>
                            </td>
                            <td class="auto-style3">
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
                            <td style="text-align: left" class="auto-style3">
                                <asp:Button ID="Button2" runat="server" style="text-align: center" 
                                    Text="重置" Height="26px" Width="93px" onclick="Button2_Click" />
                                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="销售" />
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
