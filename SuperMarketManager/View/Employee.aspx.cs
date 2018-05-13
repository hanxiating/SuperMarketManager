using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SuperMarketManager.View
{
    public partial class Employee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {

        }

        protected void emp_update_Click(object sender, EventArgs e)
        {

        }

        protected void emp_add_Click(object sender, EventArgs e)
        {
            //Response.Write("<script>window.showModelessDialog('Dialog_add_employee.aspx')</script>");
            Response.Write("<script language='javascript'>window.open('" + "Dialog_add_employee.aspx" + "','','height=400,width=430, resizable=1,scrollbars=0,status=1,menubar=no,toolbar=no,location=yes,menu=no,left=" + emp_add.Style["left"] + " , top=" + emp_add.Style["top"] + "');</script>");
        }
    }
}