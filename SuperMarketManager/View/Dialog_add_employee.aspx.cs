using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SuperMarketManager.Service;

namespace SuperMarketManager.View
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        EmployeeService employeeService = new EmployeeService();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void Button1_Click1(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox2.Text == "" || TextBox4.Text == "")
                Response.Write("填写失败，信息不能为空");
            else
            {
                employeeService.AddEmployee(TextBox2.Text, TextBox4.Text, int.Parse(Sex.SelectedItem.Value), int.Parse(DropDownList1.SelectedValue.ToString()));
                Response.Write("<script>alert('添加成功')</script>");

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "", "<script language=javascript>window.opener=null;window.open('','_self');window.close();</script>");
        }
    }
}