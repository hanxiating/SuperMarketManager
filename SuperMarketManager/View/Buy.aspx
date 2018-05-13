<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Buy.aspx.cs" Inherits="SuperMarketManager.View.Buy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
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
        .auto-style5 {
            width: 125px;
        }
        .auto-style6 {
            width: 148px;
        }
        .auto-style7 {
            width: 213px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">   
        <table style="width:100%;">
            <tr>
                <td >
                    <h1 align="left">

                     <asp:Image runat="server" ImageUrl="~/Source/others/图片2.png" Height="108px" Width="580px"/></td></h1></td>
                
            </tr>
            <tr>
                <td>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style2">
                                <table class="auto-style1">
                                    <tr>
                                        <td style="height:50px"align="center">HOT！</td>
                                       
                                    </tr>
                                     <tr>
                                        <td style="height:50px"align="center">食品</td>
                                       
                                    </tr>
                                     <tr>
                                        <td style="height:50px"align="center"> 水果</td>
                                       
                                    </tr>
                                     <tr>
                                        <td style="height:50px"align="center">日用品</td>
                                       
                                    </tr>
                                     <tr>
                                        <td style="height:50px"align="center">饮料</td>
                                       
                                    </tr>
                                     <tr>
                                        <td style="height:50px"align="center"> 文具</td>
                                       
                                    </tr>
                                     <tr>
                                        <td style="height:50px"align="center"> 其他</td>
                                       
                                    </tr>
                                </table>
                            </td>
                            <td>
                                <table class="auto-style3">
                                    <tr>
                                        <td class="auto-style6">
                                            <table class="auto-style17">
                                                <tr>
                                                    <td class="auto-style14">
                                                        <table class="auto-style9">
                                                            <tr>
                                                                <td class="auto-style10">
                                                                    <asp:Image runat="server" ImageUrl="~/Source/fruit/banana.jpg" Height="91px" Width="113px"/>
                                                                    </td>

                                                               
                                                            </tr>
                                                            <tr>
                                                                <td>名称：香蕉 <br />
                                                                    单价：35.2元/斤</td>
                                                               
                                                            </tr>
                                                            
                                                        </table>
                                                    </td>
                                                    <td>
                                                        <table class="auto-style16">
                                                            <tr>
                                                                <td>
                                                                    <asp:Button ID="banana_add" runat="server" Text="+" />
                                                                </td>
                                                               
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Button ID="banana_sub" runat="server" Text="-" />
                                                                </td>
                                                                
                                                            </tr>
                                                            
                                                        </table>
                                                    </td>
                                                   
                                                </tr>
                                               
                                            </table>
                                        </td>
                                        <td class="auto-style6">
                                            <table class="auto-style5">
                                                <tr>
                                                    <td class="auto-style8">
                                                        <table class="auto-style15">
                                                            <tr>
                                                                <td class="auto-style12">
                                                                    <asp:Image runat="server" ImageUrl="~/Source/fruit/liulian.png" Height="91px" Width="119px"/></td>
                                                               
                                                            </tr>
                                                            <tr>
                                                                <td class="auto-style13">名称：榴莲 <br />
                                                                    单价：35.2元/斤</td>
                                                               
                                                            </tr>
                                                            
                                                        </table>
                                                    </td>
                                                    <td>
                                                        <table style="width:100%;">
                                                            <tr>
                                                                <td>
                                                                    <asp:Button ID="liulian_add" runat="server" Text="+" />
                                                                </td>
                                                               
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Button ID="liulian_sub" runat="server" Text="-" />
                                                                </td>
                                                                
                                                            </tr>
                                                            
                                                        </table>
                                                    </td>
                                                   
                                                </tr>
                                               
                                            </table>
                                        </td>
                                        <td class="auto-style6">
                                            <table class="auto-style5">
                                                <tr>
                                                    <td class="auto-style8">
                                                        <table class="auto-style18">
                                                            <tr>
                                                                <td class="auto-style10">
                                                                     <asp:Image runat="server" ImageUrl="~/Source/fruit/apple1.jpg" Height="91px" Width="114px"/></td>
                                                               
                                                            </tr>
                                                            <tr>
                                                                <td>名称：苹果  
                                                                    <br />
                                                                    单价：35.2元/斤</td>
                                                               
                                                            </tr>
                                                            
                                                        </table>
                                                    </td>
                                                    <td>
                                                        <table style="width:100%;">
                                                            <tr>
                                                                <td>
                                                                    <asp:Button ID="apple_add" runat="server" Text="+" />
                                                                </td>
                                                               
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Button ID="apple_sub" runat="server" Text="-" />
                                                                </td>
                                                                
                                                            </tr>
                                                            
                                                        </table>
                                                    </td>
                                                   
                                                </tr>
                                               
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style6">
                                            <table class="auto-style5">
                                                <tr>
                                                    <td class="auto-style7">
                                                        <table class="auto-style19">
                                                            <tr>
                                                                <td class="auto-style10">
                                                                     <asp:Image runat="server" ImageUrl="~/Source/fruit/grape.jpg" Height="91px" Width="113px"/></td>
                                                               
                                                            </tr>
                                                            <tr>
                                                                <td>名称：葡萄 单价：35.2元/斤</td>
                                                               
                                                            </tr>
                                                            
                                                        </table>
                                                    </td>
                                                    <td>
                                                        <table style="width:100%;">
                                                            <tr>
                                                                <td>
                                                                    <asp:Button ID="grape_add" runat="server" Text="+" />
                                                                </td>
                                                               
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Button ID="grape_sub" runat="server" Text="-" />
                                                                </td>
                                                                
                                                            </tr>
                                                            
                                                        </table>
                                                    </td>
                                                   
                                                </tr>
                                               
                                            </table>
                                        </td>
                                        <td class="auto-style6">
                                            <table class="auto-style5">
                                                <tr>
                                                    <td class="auto-style8">
                                                        <table class="auto-style9">
                                                            <tr>
                                                                <td class="auto-style10">
                                                                     <asp:Image runat="server" ImageUrl="~/Source/fruit/mango.jpg" Height="91px" Width="113px"/></td>
                                                               
                                                            </tr>
                                                            <tr>
                                                                <td>名称：芒果 单价：35.2元/斤</td>
                                                               
                                                            </tr>
                                                            
                                                        </table>
                                                    </td>
                                                    <td>
                                                        <table style="width:100%;">
                                                            <tr>
                                                                <td>
                                                                    <asp:Button ID="Button9" runat="server" Text="+" />
                                                                </td>
                                                               
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Button ID="Button10" runat="server" Text="-" />
                                                                </td>
                                                                
                                                            </tr>
                                                            
                                                        </table>
                                                    </td>
                                                   
                                                </tr>
                                               
                                            </table>
                                        </td>
                                        <td class="auto-style6">
                                            <table class="auto-style5">
                                                <tr>
                                                    <td class="auto-style8">
                                                        <table class="auto-style9">
                                                            <tr>
                                                                <td class="auto-style10">
                                                                     <asp:Image runat="server" ImageUrl="~/Source/fruit/orange.jpg" Height="91px" Width="113px"/></td>
                                                               
                                                            </tr>
                                                            <tr>
                                                                <td>名称：香橙 单价：35.2元/斤</td>
                                                               
                                                            </tr>
                                                            
                                                        </table>
                                                    </td>
                                                    <td>
                                                        <table style="width:100%;">
                                                            <tr>
                                                                <td>
                                                                    <asp:Button ID="orange_add" runat="server" Text="+" />
                                                                </td>
                                                               
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Button ID="orange_sub" runat="server" Text="-" />
                                                                </td>
                                                                
                                                            </tr>
                                                            
                                                        </table>
                                                    </td>
                                                   
                                                </tr>
                                               
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style6">
                                            <table class="auto-style5">
                                                <tr>
                                                    <td class="auto-style14">
                                                        <table class="auto-style20">
                                                            <tr>
                                                                <td class="auto-style10">
                                                                     <asp:Image runat="server" ImageUrl="~/Source/fruit/peach1.jpg" Height="91px" Width="114px"/></td>
                                                               
                                                            </tr>
                                                            <tr>
                                                                <td>名称：桃子 单价：35.2元/斤</td>
                                                               
                                                            </tr>
                                                            
                                                        </table>
                                                    </td>
                                                    <td>
                                                        <table style="width:100%;">
                                                            <tr>
                                                                <td>
                                                                    <asp:Button ID="peach_add" runat="server" Text="+" />
                                                                </td>
                                                               
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Button ID="peach_sub" runat="server" Text="-" />
                                                                </td>
                                                                
                                                            </tr>
                                                            
                                                        </table>
                                                    </td>
                                                   
                                                </tr>
                                               
                                            </table>
                                        </td>
                                        <td class="auto-style6">
                                            <table class="auto-style5">
                                                <tr>
                                                    <td class="auto-style8">
                                                        <table class="auto-style9">
                                                            <tr>
                                                                <td class="auto-style10">
                                                                     <asp:Image runat="server" ImageUrl="~/Source/fruit/pineaple.png" Height="91px" Width="113px"/></td>
                                                               
                                                            </tr>
                                                            <tr>
                                                                <td>名称：菠萝 单价：35.2元/斤</td>
                                                               
                                                            </tr>
                                                            
                                                        </table>
                                                    </td>
                                                    <td>
                                                        <table style="width:100%;">
                                                            <tr>
                                                                <td>
                                                                    <asp:Button ID="pineapple_add" runat="server" Text="+" />
                                                                </td>
                                                               
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Button ID="pineapple_sub" runat="server" Text="-" />
                                                                </td>
                                                                
                                                            </tr>
                                                            
                                                        </table>
                                                    </td>
                                                   
                                                </tr>
                                               
                                            </table>
                                        </td>
                                        <td class="auto-style6">
                                            <table class="auto-style5">
                                                <tr >
                                                    <td class="auto-style8">
                                                        <table class="auto-style9">
                                                            <tr>
                                                                <td class="auto-style10">
                                                                     <asp:Image runat="server" ImageUrl="~/Source/fruit/strawberrey.jpg" Height="91px" Width="113px"/></td>
                                                               
                                                            </tr>
                                                            <tr>
                                                                <td>名称：草莓 单价：35.2元/斤</td>
                                                               
                                                            </tr>
                                                            
                                                        </table>
                                                    </td>
                                                    <td>
                                                        <table style="width:100%;">
                                                            <tr>
                                                                <td>
                                                                    <asp:Button ID="strawberry_add" runat="server" Text="+" />
                                                                </td>
                                                               
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Button ID="strawberry_sub" runat="server" Text="-" />
                                                                </td>
                                                                
                                                            </tr>
                                                            
                                                        </table>
                                                    </td>
                                                   
                                                </tr>
                                               
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            
                        </tr>
                       
                        
                    </table>
                </td>
                
            </tr>
            <tr style="text-align:right">
                <td>
                    <div style=" margin-left: auto; margin-right: auto; background: #eee;">
                        <asp:Button ID="Button19" runat="server" Text="提交" Height="43px" Width="121px" Font-Size="Medium" OnClick="Button19_Click1"  />
                    </div> 
                    
                </td>
              
            </tr>
        </table>
    </form>
</body>
</html>
