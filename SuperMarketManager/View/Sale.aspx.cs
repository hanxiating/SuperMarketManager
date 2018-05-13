using SuperMarketManager.Model;
using SuperMarketManager.Service;
using SuperMarketManager.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SuperMarketManager.View
{
    public partial class Sale : System.Web.UI.Page
    {
        private bool isFirst = true;

        protected void Page_Load(object sender, EventArgs e)
        {
            /*
            Sales sales = new Sales();
            sales.GoodsId = 1;
            sales.Number = 3;
            sales.Cost = 5;
            List<Sales> list = new List<Sales>();
            list.Add(sales);
            new SalesService().AddSales(list);
            */
        }



        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);
            LoadTable(new SalesService().GetAllSales());
        }

        protected void all_Click(object sender, EventArgs e)
        {

        }


        private void LoadTable(List<Sales> sales) {

            if (null == sales) {
                return;
            }
            foreach(Sales sa in sales)
            {
                TableRow tableRow = new TableRow();
                Goods goods = new GoodsService().GetGoodsById(sa.GoodsId);
                tableRow.Controls.Add(CreateCell(goods.Id+""));
                tableRow.Controls.Add(CreateCell(goods.Name));
                switch (goods.Type)
                {
                    case ConstantValue.FOOD:
                        tableRow.Controls.Add(CreateCell("食品"));
                        break;
                    case ConstantValue.FRUIT:
                        tableRow.Controls.Add(CreateCell("水果"));
                        break;
                    case ConstantValue.DAILYUSE:
                        tableRow.Controls.Add(CreateCell("日用品"));
                        break;
                    case ConstantValue.DRINK:
                        tableRow.Controls.Add(CreateCell("饮料"));
                        break;
                    case ConstantValue.STATIONARY:
                        tableRow.Controls.Add(CreateCell("文具"));
                        break;
                    case ConstantValue.OTHERS:
                        tableRow.Controls.Add(CreateCell("其他"));
                        break;
                    default: break;
                }
                tableRow.Controls.Add(CreateCell(TimeUtils.GetTimeString(sa.Time)));
                tableRow.Controls.Add(CreateCell(sa.Number+""));
                saleInfo.Controls.Add(tableRow);
            }
        }

        private TableHeaderRow CreateHeader()
        {
            TableHeaderRow tableHeaderRow = new TableHeaderRow();
            tableHeaderRow.CssClass = "header-font asp-table-header";
            TableHeaderCell tableHeaderCell = new TableHeaderCell();
            tableHeaderCell.Text = "商品编号";
            tableHeaderCell.CssClass = "table-bordered td text-center";
            tableHeaderRow.Controls.Add(tableHeaderCell);

            tableHeaderCell = new TableHeaderCell();
            tableHeaderCell.Text = "名称";
            tableHeaderCell.CssClass = "table-bordered td text-center";
            tableHeaderRow.Controls.Add(tableHeaderCell);

            tableHeaderCell = new TableHeaderCell();
            tableHeaderCell.Text = "种类";
            tableHeaderCell.CssClass = "table-bordered td text-center";
            tableHeaderRow.Controls.Add(tableHeaderCell);

            tableHeaderCell = new TableHeaderCell();
            tableHeaderCell.CssClass = "table-bordered td text-center";
            tableHeaderCell.Text = "销售时间";
            tableHeaderRow.Controls.Add(tableHeaderCell);

            tableHeaderCell = new TableHeaderCell();
            tableHeaderCell.CssClass = "table-bordered td text-center";
            tableHeaderCell.Text = "数量";
            tableHeaderRow.Controls.Add(tableHeaderCell);

            return tableHeaderRow;
        }

        private TableCell CreateCell(String data)
        {
            TableCell cell = new TableCell();
            cell.CssClass = "table-bordered td text-center";
            Label label = new Label();
            label.Text = data;
            cell.Controls.Add(label);
            return cell;
        }

        protected void search_btn_Click(object sender, EventArgs e)
        {
            saleInfo.Rows.Clear();
            saleInfo.Rows.Add(CreateHeader());
            List<Goods> goodsList = new GoodsService().SearchGoods(search_text.Text);
            if (null != goodsList)
            {
                foreach (Goods good in goodsList)
                {
                    LoadTable(new SalesService().GetGoodsHistory(good.Id));
                }
            }
            else
            {
                LoadTable(null);
            }
        }
    }
}