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
    public partial class Store : System.Web.UI.Page
    {
        GoodsService goodsService = new GoodsService();
        public static string goodsId = "";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void store_food_Click(object sender, EventArgs e)
        {
            List<Model.Goods> goods_list = goodsService.GetGoodsByTypeId(ConstantValue.FOOD);
            if(goods_list!=null)
                add_goods(goods_list);
            this.hide_goodsType.Value = "0";
        }

        protected void store_add_Click(object sender, EventArgs e)
        {
            goodsId = this.hide_goodsId.Value;
            Response.Write("<script language='javascript'>window.open('" + "Dialog_input.aspx?goods_id="+ goodsId + "','','height=400,width=430, resizable=1,scrollbars=0,status=1,menubar=no,toolbar=no,location=yes,menu=no,left=" + store_add.Style["left"] + " , top=" + store_add.Style["top"] + "');</script>");
        }

        protected void object_add_Click(object sender, EventArgs e)
        {
            Response.Write("<script language='javascript'>window.open('" + "Dialog_add_goods.aspx" + "','','height=400,width=430, resizable=1,scrollbars=0,status=1,menubar=no,toolbar=no,location=yes,menu=no,left=" + object_add.Style["left"] + " , top=" + object_add.Style["top"] + "');</script>");
        }

        public void add_goods(List<Model.Goods> goods)
        {
            int count = goods.Count;
            TableRow row;
            TableCell cell;
            int k = 0;
            //count 为返回对象的个数，对应添加到每一行
            for (int i = 0; i < count; i++)
            {
                k = i + 1;
                //新的一行
                row = new TableRow();

                //添加第0列:商品编号
                cell = new TableCell();
                cell.CssClass = "table-bordered td text-center";
                Label number = new Label();
                number.Text = goods[i].Id.ToString();
                cell.Controls.Add(number);
                row.Cells.Add(cell);

                //添加第1 列：名称
                cell = new TableCell();
                cell.CssClass = "table-bordered td text-center";
                Label Name = new Label();
                Name.Text = goods[i].Name;
                cell.Controls.Add(Name);
                row.Cells.Add(cell);

                //添加第 2 列：类型
                cell = new TableCell();
                cell.CssClass = "table-bordered td text-center";
                Label goodType = new Label();
                int type = goods[i].Type;
                switch (type)
                {
                    case ConstantValue.FOOD:
                        goodType.Text = "食品";
                        break;
                    case ConstantValue.FRUIT:
                        goodType.Text = "水果";
                        break;
                    case ConstantValue.DAILYUSE:
                        goodType.Text = "日用品";
                        break;
                    case ConstantValue.DRINK:
                        goodType.Text = "饮料";
                        break;
                    case ConstantValue.STATIONARY:
                        goodType.Text = "文具";
                        break;
                    case ConstantValue.OTHERS:
                        goodType.Text = "其他";
                        break;
                    default: break;
                }
                cell.Controls.Add(goodType);
                row.Cells.Add(cell);

                //添加第 3 列：数量
                cell = new TableCell();
                cell.CssClass = "table-bordered td text-center";
                Label num = new Label();
                num.Text = goods[i].Number.ToString();
                cell.Controls.Add(num);
                row.Cells.Add(cell);

                storeInfo.Rows.Add(row);
            }
        }

        protected void store_fruit_Click(object sender, EventArgs e)
        {
            List<Model.Goods> goods_list = goodsService.GetGoodsByTypeId(ConstantValue.FRUIT);
            if (goods_list != null)
                add_goods(goods_list);
            this.hide_goodsType.Value = "1";
        }

        protected void store_daliy_Click(object sender, EventArgs e)
        {
            List<Model.Goods> goods_list = goodsService.GetGoodsByTypeId(ConstantValue.DAILYUSE);
            if (goods_list != null)
                add_goods(goods_list);
            this.hide_goodsType.Value = "2";
        }

        protected void store_drink_Click(object sender, EventArgs e)
        {
            List<Model.Goods> goods_list = goodsService.GetGoodsByTypeId(ConstantValue.DRINK);
            if (goods_list != null)
                add_goods(goods_list);
            this.hide_goodsType.Value = "3";
        }

        protected void store_staionery_Click(object sender, EventArgs e)
        {
            List<Model.Goods> goods_list = goodsService.GetGoodsByTypeId(ConstantValue.STATIONARY);
            if (goods_list != null)
                add_goods(goods_list);
            this.hide_goodsType.Value = "4";
        }

        protected void store_else_Click(object sender, EventArgs e)
        {
            List<Model.Goods> goods_list = goodsService.GetGoodsByTypeId(ConstantValue.OTHERS);
            if (goods_list != null)
                add_goods(goods_list);
            this.hide_goodsType.Value = "5";
        }

        protected void store_all_Click(object sender, EventArgs e)
        {
            List<Model.Goods> goods_list = goodsService.GetAllGoods();
            if (goods_list != null)
                add_goods(goods_list);
            this.hide_goodsType.Value = "6";
        }
    }
}