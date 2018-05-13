using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SuperMarketManager.Model;
using SuperMarketManager.Service;


namespace SuperMarketManager.View
{
    public partial class Orders : System.Web.UI.Page
    {
        GoodsService goodsService = new GoodsService();
        SalesService salesService = new SalesService();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void order_Click(object sender, EventArgs e)
        {
            int count = orderInfo.Rows.Count;
            List<Model.Sales> order_list = new List<Sales>();
            Sales sales = new Sales();
            for (int i = 0; i < count; i++)
            {
                this.hide_number.Value = orderInfo.Rows[i].Cells[3].Text;
                int number = int.Parse(this.hide_number.Value);
                if(number > 0)
                {
                    int id = int.Parse(orderInfo.Rows[i].Cells[0].Text);
                    int price = int.Parse(orderInfo.Rows[i].Cells[2].Text);
                    sales.Id = id;
                    sales.Number = number;
                    sales.Cost = number * price;
                    order_list.Add(sales);
                }
            }
            //提交成功,网页提示
            if(salesService.AddSales(order_list))
                Response.Write("<script>alert('订单提交成功！')</script>");
        }

        //获取食品列表
        protected void client_food_Click(object sender, EventArgs e)
        {
            List<Model.Goods> client_list = goodsService.GetGoodsByTypeId(ConstantValue.FOOD);
            add_client(client_list);
            this.hide_type.Value = "0";
        }

        public void add_client(List<Model.Goods> client_list)
        {
            int count = client_list.Count;
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
                Label good_id = new Label();
                good_id.Text = client_list[i].Id.ToString();
                cell.Controls.Add(good_id);
                row.Cells.Add(cell);

                //添加第1列:商品名称
                cell = new TableCell();
                cell.CssClass = "table-bordered td text-center";
                Label name = new Label();
                name.Text = client_list[i].Name;
                cell.Controls.Add(name);
                row.Cells.Add(cell);

                //添加第2 列：售价
                cell = new TableCell();
                cell.CssClass = "table-bordered td text-center";
                Label price = new Label();
                price.Text = client_list[i].Price.ToString();
                cell.Controls.Add(price);
                row.Cells.Add(cell);

                //添加第 3 列：购买量
                cell = new TableCell();
                cell.CssClass = "table-bordered td text-center";
                TextBox number= new TextBox();
                number.Text = "0";
                cell.Controls.Add(number);
                row.Cells.Add(cell);

                orderInfo.Rows.Add(row);
            }
        }
    }
}