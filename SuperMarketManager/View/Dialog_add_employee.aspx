<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dialog_add_employee.aspx.cs" Inherits="SuperMarketManager.View.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 107px;
        }
        .auto-style3 {
            width: 106px;
        }
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            width: 253px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td>
                        <table style="width:100%;">
                            <tr>
                                <td class="auto-style5">
                                    新建档案信息</td>
                                <td>
                                    &nbsp;</td>
                               
                            </tr>
                            
                        </table>
                    </td>
                  
                </tr>
              <tr>
                    <td>
                        <table style="width:100%;">
                            <tr>
                                <td class="auto-style1">
                                    <asp:Label ID="Label2" runat="server" Text="姓名"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox2" runat="server" Width="136px"></asp:TextBox>
                                </td>
                               
                            </tr>
                            
                        </table>
                    </td>
                  
                </tr>
                <tr>
                    <td>
                        <table class="auto-style4">
                            <tr>
                                <td class="auto-style3">
                                    <asp:Label ID="Label3" runat="server" Text="性别"></asp:Label>
                                </td>
                                <td>
                                    <asp:RadioButtonList ID="Sex" runat="server" RepeatDirection="Horizontal" Width="122px" >
                                    <asp:ListItem Text="男" Value="0" Selected="True"></asp:ListItem>
                                    <asp:ListItem Value="1">女</asp:ListItem>
                                    </asp:RadioButtonList>
                                    

                                </td>
                               
                            </tr>
                            
                        </table>
                    </td>
                  
                </tr>
                <tr>
                    <td>
                        <table style="width:100%;">
                            <tr>
                                <td class="auto-style1">
                                    <asp:Label ID="Label4" runat="server" Text="联系方式"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox4" runat="server" Width="136px"></asp:TextBox>
                                </td>
                               
                            </tr>
                            
                        </table>
                    </td>
                  
                </tr>
               <tr>
                    <td>
                        <table class="auto-style4">
                            <tr>
                                <td class="auto-style3">
                                    <asp:Label ID="Label5" runat="server" Text="所在部门"></asp:Label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                        <asp:ListItem Selected="True" Value="5">请选择部门</asp:ListItem>
                                        <asp:ListItem Value="0">人事部</asp:ListItem>
                                        <asp:ListItem Value="1">财务部</asp:ListItem>
                                        <asp:ListItem Value="2">采购部</asp:ListItem>
                                        <asp:ListItem Value="3">客服部</asp:ListItem>
                                        <asp:ListItem Value="4">后勤部</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                               
                            </tr>
                            
                        </table>
                    </td>
                  
                </tr>
                <tr>
                    <td>
                        <table style="width:100%;">
                            <tr>
                                <td>
                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确定" />
                                    <asp:Button ID="Button2" runat="server" Text="取消" />
                                </td>
                                <td>&nbsp;</td>
                               
                            </tr>
                            
                        </table>
                    </td>
                  
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
