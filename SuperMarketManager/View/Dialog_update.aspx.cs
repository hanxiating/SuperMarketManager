using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SuperMarketManager.Service;
using SuperMarketManager.Model;

namespace SuperMarketManager.View
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        EmployeeService employeeService = new EmployeeService();
        Model.Employee employee = new Model.Employee();
        Employee e = new Employee();

        protected void Page_Load(object sender, EventArgs e)
        {
            //int id = e.
            /*employee = employeeService.GetEmployeeById();//传过来行获取的ID
            TextBox1.Text=employee.Name;
            TextBox3.Text = employee.Phone;*/

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            /*employee = employeeService.GetEmployeeById();//传过来行获取的ID
            employee.Name = TextBox1.Text;
            employee.Phone = TextBox3.Text;
            employee.Sex = int.Parse(Sex.SelectedItem.Value);
            employee.PartId = int.Parse(DropDownList1.SelectedValue.ToString());
            employeeService.UpdateEmployee(employee);
            Response.Write("修改成功！");*/
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "", "<script language=javascript>window.opener=null;window.open('','_self');window.close();</script>");
        }
    }
}