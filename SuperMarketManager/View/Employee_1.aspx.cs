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

        public void add_employee( List<Model.Employee> emp)
        {
            int count = emp.Count;
            TableRow row;
            TableCell cell;
            int k = 0;
            //count 为返回对象的个数，对应添加到每一行
            for(int i = 0; i < count; i++)
            {
                k = i + 1;
                //新的一行
                row = new TableRow();

                //添加第0列:员工号
                cell = new TableCell();
                Label number = new Label();
                number.ID = string.Concat("num_",k);
                number.Text = emp[i].Id.ToString();
                cell.Controls.Add(number);
                row.Cells.Add(cell);

                //添加第1 列：姓名
                cell = new TableCell();
                Label Name = new Label();
                Name.ID = "name";
                Name.Text = emp[i].Name;
                cell.Controls.Add(Name);
                row.Cells.Add(cell);

                //添加第 2 列：性别
                cell = new TableCell();
                Label Sex = new Label();
                Sex.ID = "sex";
                int sex= emp[i].Sex;
                switch (sex)
                {
                    case 0:
                        Sex.Text = "男";
                        break;
                    case 1:
                        Sex.Text = "女";
                        break;
                }
                cell.Controls.Add(Sex);
                row.Cells.Add(cell);

                //添加第 3 列：联系方式
                cell = new TableCell();
                Label Phone = new Label();
                Phone.ID = "phone";
                Phone.Text = emp[i].Phone;
                cell.Controls.Add(Phone);
                row.Cells.Add(cell);

                //添加第 4 列：所在部门
                cell = new TableCell();
                Label Depart = new Label();
                Depart.ID = "depart";
                int partid=emp[i].PartId;
                switch (partid)
                {
                    case HR:
                        Depart.Text = "人事部";
                        break;
                    case FINANCE:
                        Depart.Text = "财务部";
                        break;
                    case PURCHAES:
                        Depart.Text = "采购部";
                        break;
                    case SERVICE:
                        Depart.Text = "客服部";
                        break;
                    case LOGISTICS:
                        Depart.Text = "后勤部";
                        break;
                    default:break;
                }
                cell.Controls.Add(Depart);
                row.Cells.Add(cell);

                //添加第 5 列：操作
                cell = new TableCell();
                Label Operation = new Label();
                number.ID ="operation";
                Button btn_update = new Button();
                btn_update.ID = "emp_update";
                Button btn_delete = new Button();
                btn_delete.ID = "emp_delete";
                cell.Controls.Add(btn_update);
                cell.Controls.Add(btn_delete);
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
            List <Model.Employee> emp_list = empService.GetEmployeeByPartId(HR);
            add_employee(emp_list);

        }
    }
}