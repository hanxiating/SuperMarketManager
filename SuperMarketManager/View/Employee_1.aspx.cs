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
    public partial class Employee : System.Web.UI.Page
    {
        EmployeeService empService = new EmployeeService();
        public void add_employee(int count)
        {
            count = 1;
            TableRow row;
            TableCell cell;
            int k = 0;
            //count 为返回对象的个数，对应添加到每一行
            for(int i = 0; i < count; i++)
            {
                k = i + 1;
                //新的一行
                row = new TableRow();
                //添加第0列
                cell = new TableCell();
                Label number = new Label();
                number.ID = string.Concat("num_",k);
                number.Text ="test";
                cell.Controls.Add(number);
                row.Cells.Add(cell);

            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {

        }

        protected void emp_all_Click(object sender, EventArgs e)
        {

        }
        //获取人事部全部员工的信息
        protected void emp_HR_Click(object sender, EventArgs e)
        {
            List<Model.Employee> emp_list = empService.GetEmployeeByPartId(1);
            int count=emp_list.
        }
    }
}