using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SuperMarketManager.Model;
using SuperMarketManager.Service;

namespace SuperMarketManager.View
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        GoodsSupplierService goodsSupplierService = new GoodsSupplierService();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            ListItem li = new ListItem();
            //List<Supplier> suppliers= goodsSupplierService.GetSuppliers(int.Parse(TextBox1.Text.Trim()));//传过来行获取的ID
            /*foreach (Supplier supplier in suppliers) {
                li.Text = supplier.Name;

            }*/

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}