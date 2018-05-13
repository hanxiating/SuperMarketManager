using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SuperMarketManager.View;
using SuperMarketManager.Service;

namespace SuperMarketManager.View
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        //Store store = new Store();
        GoodsSupplierService goodsSupplierService = new GoodsSupplierService();
        PurchaseService purchaseService = new PurchaseService();

        protected void Page_Load(object sender, EventArgs e)
        {
            string test=Store.goodsId;
            int id=int.Parse(Store.goodsId);
            List<Model.Supplier> supplies = goodsSupplierService.GetSuppliers(id);
            ListItem li = new ListItem();
            if (supplies != null)
            {
                for (int i = 0; i < supplies.Count; i++)
                {
                    li.Text = supplies[i].Name;
                    DropDownList1.Items.Add(li);
                }
            }
           
            /*List<Supply> supplies=
            ListItem li = new ListItem();
            li.Text = supplies
            DropDownList1.Items.Add(li);*/
            /*DataSet dc = new DataSet();

            String sqlStr = "select book_class_id,book_class_name from book_class";


            dc = CC.GetDataSet(sqlStr, "00");   //取出数据放入表中,这里的CC是我自己的一个公共类 ,反正这里是取出数据放到一个表中就行了,后面给出常用公共类的代码  
            this.DropDownList1.DataSource = dc.Tables[0];
            this.DropDownList1.DataTextField = "book_class_name"; //绑定文字对应的字段  
            this.DropDownList1.DataValueField = "book_class_id";       //绑定编号对应的字段
            this.DropDownList1.DataBind();*/
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //向后台提供采购货物的id，采购数量
            purchaseService.AddSales(int.Parse(Store.goodsId),int.Parse(TextBox1.Text.Trim()));
        }

        
    }
}