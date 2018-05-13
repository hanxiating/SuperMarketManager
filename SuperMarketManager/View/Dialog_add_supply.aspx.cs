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
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox2.Text == "" || TextBox5.Text == "")
                Response.Write("添加失败，名称和电话不能为空");
            else
            {
                supplierService.AddSupplier(TextBox2.Text,TextBox5.Text,TextBox4.Text,TextBox6.Text);
                Response.Write("添加成功！");
            }

        }
    }
}