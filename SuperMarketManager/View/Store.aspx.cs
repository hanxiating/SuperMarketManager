using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SuperMarketManager.View
{
    public partial class Store : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void store_food_Click(object sender, EventArgs e)
        {

        }

        protected void store_add_Click(object sender, EventArgs e)
        {
            Response.Write("<script language='javascript'>window.open('" + "Dialog_input.aspx" + "','','height=400,width=430, resizable=1,scrollbars=0,status=1,menubar=no,toolbar=no,location=yes,menu=no,left=" + store_add.Style["left"] + " , top=" + store_add.Style["top"] + "');</script>");
        }

        protected void object_add_Click(object sender, EventArgs e)
        {
            Response.Write("<script language='javascript'>window.open('" + "Dialog_add_goods.aspx" + "','','height=400,width=430, resizable=1,scrollbars=0,status=1,menubar=no,toolbar=no,location=yes,menu=no,left=" + object_add.Style["left"] + " , top=" + object_add.Style["top"] + "');</script>");
        }
    }
}