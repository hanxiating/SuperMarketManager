using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SuperMarketManager.Service;

namespace SuperMarketManager.View
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SupplierService supplierService = new SupplierService();
        GoodsSupplierService goodsSupplierService = new GoodsSupplierService();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox2.Text == "" || TextBox5.Text == "")
                Response.Write("添加失败，名称和电话不能为空");
            else
            {
                int s = supplierService.AddSupplier(TextBox2.Text, TextBox5.Text, TextBox4.Text, TextBox6.Text);

                if (food.Checked == true)
                    goodsSupplierService.AddGoodsSupplier(0,s);//第二个参数为本供应商的ID，下同
                if (fruit.Checked == true)
                    goodsSupplierService.AddGoodsSupplier(1,s);
                if (daily.Checked == true)
                    goodsSupplierService.AddGoodsSupplier(2,s);
                if (drink.Checked == true)
                    goodsSupplierService.AddGoodsSupplier(3,s);
                if (pen.Checked == true)
                    goodsSupplierService.AddGoodsSupplier(4,s);
                if (others.Checked == true)
                    goodsSupplierService.AddGoodsSupplier(5,s);
                Response.Write("添加成功！");
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "", "<script language=javascript>window.opener=null;window.open('','_self');window.close();</script>");
        }
    }
}