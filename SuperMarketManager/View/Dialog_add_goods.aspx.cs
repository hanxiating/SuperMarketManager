using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SuperMarketManager.Service;

namespace SuperMarketManager.View
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        GoodsService goodsService = new GoodsService();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox4.Text == ""||TextBox1.Text==""|| TextBox3.Text == ""|| TextBox5.Text == ""||TextBox6.Text == "")
                Response.Write("填写失败，信息不能为空");
            else
            {
                goodsService.AddGoods(TextBox1.Text, int.Parse(DropDownList1.SelectedItem.Value),int.Parse(TextBox3.Text),int.Parse(TextBox4.Text),float.Parse(TextBox5.Text),int.Parse(TextBox6.Text),1);
                Response.Write("添加成功！");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "", "<script language=javascript>window.opener=null;window.open('','_self');window.close();</script>");
        }
    }
}