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
        //ConstantValue v = new ConstantValue();

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
                cell.CssClass = "table-bordered td text-center";
                Label number = new Label();
                number.ID = string.Concat("num_",k);
                number.Text = emp[i].Id.ToString();
                cell.Controls.Add(number);
                row.Cells.Add(cell);

                //添加第1 列：姓名
                cell = new TableCell();
                cell.CssClass = "table-bordered td text-center";
                Label Name = new Label();
                Name.ID = "name";
                Name.Text = emp[i].Name;
                cell.Controls.Add(Name);
                row.Cells.Add(cell);

                //添加第 2 列：性别
                cell = new TableCell();
                cell.CssClass = "table-bordered td text-center";
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
                cell.CssClass = "table-bordered td text-center";
                Label Phone = new Label();
                Phone.ID = "phone";
                Phone.Text = emp[i].Phone;
                cell.Controls.Add(Phone);
                row.Cells.Add(cell);

                //添加第 4 列：所在部门
                cell = new TableCell();
                cell.CssClass = "table-bordered td text-center";
                Label Depart = new Label();
                Depart.ID = "depart";
                int partid=emp[i].PartId;
                switch (partid)
                {
                    case ConstantValue.HR:
                        Depart.Text = "人事部";
                        break;
                    case ConstantValue.FINANCE:
                        Depart.Text = "财务部";
                        break;
                    case ConstantValue.PURCHASE:
                        Depart.Text = "采购部";
                        break;
                    case ConstantValue.SERVICE:
                        Depart.Text = "客服部";
                        break;
                    case ConstantValue.LOGISTICS:
                        Depart.Text = "后勤部";
                        break;
                    default:break;
                }
                cell.Controls.Add(Depart);
                row.Cells.Add(cell);

                //添加第 5 列：操作
                cell = new TableCell();
                cell.CssClass = "table-bordered td text-center";
                Label Operation = new Label();
                number.ID ="operation";
                Button btn_update = new Button();
                btn_update.ID = "emp_update_"+i;
                btn_update.Text = "修改";
                btn_update.Click += new EventHandler(update);
                Button btn_delete = new Button();
                btn_delete.ID = emp[i].Id.ToString();//将员工号作为button的id
                btn_delete.Text = "删除";
                btn_delete.Click+=new System.EventHandler(this.delete);
                
                cell.Controls.Add(btn_update);
                cell.Controls.Add(btn_delete);
                row.Cells.Add(cell);

                employeeInfo.Rows.Add(row);
            }
        }
        public void update(object sender, EventArgs e)
        {

        }
        public void delete(object sender, System.EventArgs e)
        {
            Button btn = sender as Button;
            if (null == btn) return;
            int id = int.Parse(btn.ID);
            //删除某一行
            //employeeInfo.Rows.RemoveAt(id);
            empService.DeleteEmployee(id);

            //ViewState["count"] = Convert.ToInt16(ViewState["count"]) - 1;


        }

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        

        protected void emp_all_Click(object sender, EventArgs e)
        {

        }
        //获取人事部全部员工的信息
        protected void emp_HR_Click(object sender, EventArgs e)
        {
            List <Model.Employee> emp_list = empService.GetEmployeeByPartId(ConstantValue.FINANCE);
            add_employee(emp_list);

        }

        private void addbutton()
        {
            Button b = new Button();
            b.ID = "btn";
            b.Text = "取值";
            //b.Click += new System.EventHandler();//添加按钮事件
            //placeholder1.Controls.Add(b);
        }
    }
}