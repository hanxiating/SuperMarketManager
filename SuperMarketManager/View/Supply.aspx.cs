using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SuperMarketManager.View
{
    public partial class Supply : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void supply_add_Click(object sender, EventArgs e)
        {
            Response.Write("<script language='javascript'>window.open('" + "Dialog_add_supply.aspx" + "','','height=400,width=430, resizable=1,scrollbars=0,status=1,menubar=no,toolbar=no,location=yes,menu=no,left=" + supply_add.Style["left"] + " , top=" + supply_add.Style["top"] + "');</script>");
        }
    }
}