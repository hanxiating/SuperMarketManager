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
        public static int count;
        public static List<TextBox> tb = new List<TextBox>();
        public static List<Model.Goods> client_list;

        int op = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
           // Label1.Text = "";
            add_client(client_list);
            if (Session["op"] != null)
            {
                op = Int32.Parse((String)Session["op"]);
                Session.Remove("op");
            }
            else
            {
                op = 0;
            }
            
            switch (op)
            {
                case 0:
                    Label1.Text = "";
                    break;
                case 1:Label1.Text = "购买成功!";
                    break;
                case 2:
                    Label1.Text = "购买失败";
                    break;
            }
        }

        protected void order_Click(object sender, EventArgs e)
        {
            //int count = orderInfo.
            List<Model.Sales> order_list = new List<Sales>();
            int num = client_list.Count;
            



            for (int i = 0; i < client_list.Count; i++)
            {
                //(TextBox)orderInfo.FindControl("number" + i.ToString());
                // this.hide_number.Value = textBox.Text;
                String va = Request["number"+i];
                if (va == null || va.Equals(""))
                {
                    break;
                }
                int number = int.Parse(va);

                if (number > 0)
                {
                    Sales sales = new Sales();
                    sales.GoodsId = client_list[i].Id;
                    sales.Number = number;
                    sales.Cost = number * client_list[i].Price;
                    order_list.Add(sales);
                }
            }
            //提交成功,网页提示
            if (salesService.AddSales(order_list))
            {
                op = 1;
            }
            else
            {
                op = 2;
            }
            Session["op"] = op+"";
            Response.Redirect("Orders");
        }

        //获取食品列表
        protected void client_food_Click(object sender, EventArgs e)
        {
            LoadData(ConstantValue.FOOD);
        }

        public void add_client(List<Model.Goods> client_list)
        {
            orderInfo.Rows.Clear();
            orderInfo.Rows.Add(CreateHeader());

            if (null == client_list)
            {
                return;
            }
            count = client_list.Count;
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
                number.AutoPostBack = true;
                //number.Text = "0";
                number.ID = "number" + i;
                
                tb.Add(number);
                cell.Controls.Add(number);
                row.Cells.Add(cell);

                orderInfo.Rows.Add(row);
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
            tableHeaderCell.Text = "商品名";
            tableHeaderCell.CssClass = "table-bordered td text-center";
            tableHeaderRow.Controls.Add(tableHeaderCell);

            tableHeaderCell = new TableHeaderCell();
            tableHeaderCell.Text = "售价";
            tableHeaderCell.CssClass = "table-bordered td text-center";
            tableHeaderRow.Controls.Add(tableHeaderCell);

            tableHeaderCell = new TableHeaderCell();
            tableHeaderCell.CssClass = "table-bordered td text-center";
            
            tableHeaderCell.Text = "购买量";
            tableHeaderRow.Controls.Add(tableHeaderCell);

            return tableHeaderRow;
        }

        protected void client_fruit_Click(object sender, EventArgs e)
        {
            LoadData( ConstantValue.FRUIT);
        }

        protected void client_use_Click(object sender, EventArgs e)
        {
            LoadData(ConstantValue.DAILYUSE );
        }

        protected void client_drink_Click(object sender, EventArgs e)
        {
            LoadData(ConstantValue.DRINK);
        }

        protected void client_wenju_Click(object sender, EventArgs e)
        {
            LoadData(ConstantValue.STATIONARY);
        }
        private void LoadData(int type)
        {
            client_list = goodsService.GetGoodsByTypeId(type);
            add_client(client_list);
            this.hide_type.Value = type + "";
            op = 0;
            switch (op)
            {
                case 0:
                    Label1.Text = "";
                    break;
                case 1:
                    Label1.Text = "购买成功!";
                    break;
                case 2:
                    Label1.Text = "购买失败";
                    break;
            }
        }

        protected void client_other_Click(object sender, EventArgs e)
        {
            LoadData(ConstantValue.OTHERS);
        }

        protected void back_Click(object sender, EventArgs e)
        {
            Response.Write("<script language='javascript'>window.location='login.aspx'</script>");

        }
    }
}