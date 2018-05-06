<%@ Page Language="C#" %>

<!DOCTYPE html>
<script runat="server">

    protected void Button19_Click(object sender, EventArgs e)
    {

    }
</script>


<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <title></title>    
    <style type="text/css">
        .auto-style1 {
            width: 98%;
        }
        .auto-style2 {
            width: 121px;
        }
        .auto-style3 {
            width: 100%;
            height: 361px;
        }
        .auto-style5 {
            width: 99%;
            height: 142px;
        }
        .auto-style6 {
            width: 295px;
            height: 151px;
        }
        .auto-style8 {
            width: 209px;
        }
        .auto-style9 {
            width: 90%;
            height: 129px;
            margin-top: 0px;
        }
        .auto-style10 {
            height: 106px;
        }
        .auto-style12 {
            height: 106px;
            width: 208px;
        }
        .auto-style13 {
            width: 208px;
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
                                            <table class="auto-style5">
                                                <tr>
                                                    <td class="auto-style8">
                                                        <table class="auto-style9">
                                                            <tr>
                                                                <td class="auto-style10">
                                                                    <asp:Image runat="server" ImageUrl="~/Source/fruit/banana.jpg" Height="108px" Width="214px"/>
                                                                    </td>

                                                               
                                                            </tr>
                                                            <tr>
                                                                <td>名称：香蕉 单价：35.2元/斤</td>
                                                               
                                                            </tr>
                                                            
                                                        </table>
                                                    </td>
                                                    <td>
                                                        <table style="width:100%;">
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
                                                        <table class="auto-style9">
                                                            <tr>
                                                                <td class="auto-style12">
                                                                    <asp:Image runat="server" ImageUrl="~/Source/fruit/liulian.png" Height="108px" Width="214px"/></td>
                                                               
                                                            </tr>
                                                            <tr>
                                                                <td class="auto-style13">名称：榴莲 单价：35.2元/斤</td>
                                                               
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
                                                        <table class="auto-style9">
                                                            <tr>
                                                                <td class="auto-style10">
                                                                     <asp:Image runat="server" ImageUrl="~/Source/fruit/apple1.jpg" Height="108px" Width="214px"/></td>
                                                               
                                                            </tr>
                                                            <tr>
                                                                <td>名称：苹果 单价：35.2元/斤</td>
                                                               
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
                                                    <td class="auto-style8">
                                                        <table class="auto-style9">
                                                            <tr>
                                                                <td class="auto-style10">
                                                                     <asp:Image runat="server" ImageUrl="~/Source/fruit/grape.jpg" Height="108px" Width="214px"/></td>
                                                               
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
                                                                     <asp:Image runat="server" ImageUrl="~/Source/fruit/mango.jpg" Height="108px" Width="214px"/></td>
                                                               
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
                                                                     <asp:Image runat="server" ImageUrl="~/Source/fruit/orange.jpg" Height="108px" Width="214px"/></td>
                                                               
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
                                                    <td class="auto-style8">
                                                        <table class="auto-style9">
                                                            <tr>
                                                                <td class="auto-style10">
                                                                     <asp:Image runat="server" ImageUrl="~/Source/fruit/peach1.jpg" Height="108px" Width="214px"/></td>
                                                               
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
                                                                     <asp:Image runat="server" ImageUrl="~/Source/fruit/pineaple.png" Height="108px" Width="214px"/></td>
                                                               
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
                                                <tr>
                                                    <td class="auto-style8">
                                                        <table class="auto-style9">
                                                            <tr>
                                                                <td class="auto-style10">
                                                                     <asp:Image runat="server" ImageUrl="~/Source/fruit/strawberrey.jpg" Height="108px" Width="214px"/></td>
                                                               
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
                        <asp:Button ID="Button19" runat="server" Text="提交" Height="43px" Width="121px" Font-Size="Medium" OnClick="Button19_Click"/>
                    </div> 
                    
                </td>
              
            </tr>
        </table>
    </form>
</body>
</html>
