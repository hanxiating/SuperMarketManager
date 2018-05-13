<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dialog_add_supply.aspx.cs" Inherits="SuperMarketManager.View.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 34px;
        }
        .auto-style2 {
            width: 37px;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            margin-left: 0px;
        }
        .auto-style5 {
            width: 36px;
        }
        .auto-style6 {
            width: 260px;
        }
        .auto-style8 {
            margin-left: 1px;
        }
        .auto-style9 {
            width: 21%;
        }
        .auto-style10 {
            width: 133px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style3">
                <tr>
                    <td>
                        <table style="width:100%;">
                            <tr>
                                <td class="auto-style6">
                                    新建供应商信息</td>
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
                                <td class="auto-style5">
                                    <asp:Label ID="Label" runat="server" Text="名称"></asp:Label></td>
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
                                <td class="auto-style2">
                                    <asp:Label ID="Label3" runat="server" Text="电话"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox5" runat="server" Width="136px"></asp:TextBox>
                                    

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
                                    <asp:Label ID="Label4" runat="server" Text="地址"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox4" runat="server" Width="136px" CssClass="auto-style8"></asp:TextBox>
                                </td>
                               
                            </tr>
                            
                        </table>
                    </td>
                  
                </tr>
               <tr>
                    <td>
                        <table class="auto-style4">
                            <tr>
                                <td class="auto-style9">
                                    <asp:Label ID="Label5" runat="server" Text="备注"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox6" runat="server" Width="136px" CssClass="auto-style4"></asp:TextBox>
                                </td>
                               
                            </tr>

                            
                        </table>
                    </td>
                  
                </tr>
                <tr>
                    <td>
                        <table style="width:100%;">
                            <tr>
                                <td class="auto-style10">
                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确定" />
                                </td>
                                <td>
                                    <asp:Button ID="Button2" runat="server" Text="取消" style="height: 21px" />
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
