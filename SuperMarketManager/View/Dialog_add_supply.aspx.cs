﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SuperMarketManager.Model;
using SuperMarketManager.Service;

namespace SuperMarketManager.View
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        GoodsService goodsService = new GoodsService();
        SupplierService supplierService = new SupplierService();
        GoodsSupplierService goodsSupplierService = new GoodsSupplierService();
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Goods> goodslist = goodsService.GetAllGoods();
            if (goodslist != null)
            {
                foreach (Goods goods in goodslist)
                {
                    ListItem listItem = new ListItem();
                    listItem.Text = goods.Name;
                    listItem.Value = goods.Id + "";
                    CheckBoxList1.Items.Add(listItem);
                }
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox2.Text == "" || TextBox5.Text == "")
                Response.Write("添加失败，名称和电话不能为空");
            else
            {
                int s = supplierService.AddSupplier(TextBox2.Text, TextBox5.Text, TextBox4.Text, TextBox6.Text);
                
                foreach (ListItem li in CheckBoxList1.Items)

                {
                    if (li.Selected == true)
                    {
                        goodsSupplierService.AddGoodsSupplier(int.Parse(li.Value), s);
                    }

                }

                /*if (food.Checked == true)
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
                    goodsSupplierService.AddGoodsSupplier(5,s);*/
                Response.Write("<script>alert('添加成功')</script>");
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "", "<script language=javascript>window.opener=null;window.open('','_self');window.close();</script>");
        }
    }
}