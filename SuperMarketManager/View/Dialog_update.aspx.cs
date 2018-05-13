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
        protected void Page_Load(object sender, EventArgs e)
        {
            /*employee = employeeService.GetEmployeeById();//传过来行获取的ID
            TextBox1.Text=employee.Name;
            TextBox3.Text = employee.Phone;*/

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}