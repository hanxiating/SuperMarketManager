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
        Button bButton = new Button();
        //int ID=0;//记录操作对象员的员工号
        //RadioButton select = new RadioButton();
       

        public void add_employee(List<Model.Employee> emp)
        {
            int count = emp.Count;
            TableRow row;
            TableCell cell;
            int k = 0;
            //count 为返回对象的个数，对应添加到每一行
            for (int i = 0; i < count; i++)
            {
                k = i + 1;
                //新的一行
                row = new TableRow();

                //添加第0列:员工号
                cell = new TableCell();
                cell.CssClass = "table-bordered td text-center";
                RadioButton select = new RadioButton();
                select.ID= emp[i].Id.ToString();
                Label number = new Label();
                number.ID = string.Concat("num_", k);
                number.Text = emp[i].Id.ToString();
                //cell.Controls.Add(select);
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
                int sex = emp[i].Sex;
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
                int partid = emp[i].PartId;
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
                    default: break;
                }
                cell.Controls.Add(Depart);
                row.Cells.Add(cell);

                //添加第 5 列：操作
                //cell = new TableCell();
               // cell.CssClass = "table-bordered td text-center";
               // Label Operation = new Label();
               // number.ID = "operation";
               // Button btn_update = new Button();
               // btn_update.ID = "emp_update_" + i;
               // btn_update.Text = "修改";
                //btn_update.Click += new EventHandler(update);
              //  Button btn_delete = new Button();
               // btn_delete.ID = emp[i].Id.ToString();           //将员工号作为button的id
              //  btn_delete.Text = "删除";
                //btn_delete.Command += new CommandEventHandler(delete);
                //Label test = new Label();
                //test.Text = btn_delete.ID;

                // cell.Controls.Add(btn_test);
                //bButton.ID = "delete";
               // bButton.Text = "删除";
               // cell.Controls.Add(btn_delete);
                //cell.Controls.Add(test);

                //row.Cells.Add(cell);

                employeeInfo.Rows.Add(row);
            }


        }

        //public void delete(object sender, EventArgs e)
       // {
            //TableRow row;
           // TableCell cell;
            //row = new TableRow();
           // cell = new TableCell();
           // cell.CssClass = "table-bordered td text-center";
           // Label test = new Label();
           // test.Text = "test";
           // cell.Controls.Add(test);
           // row.Cells.Add(cell);
           // employeeInfo.Rows.Add(row);
            // int test = 1;
            //Button btn = sender as Button;
            //if (null == btn) return;
            //else if (btn != null)
            //{
            //    int id = int.Parse(btn.ID);
                //删除某一行
                //employeeInfo.Rows.RemoveAt(id);
          //  empService.DeleteEmployee(6);
           // List<Model.Employee> emp_list = empService.GetEmployeeByPartId(ConstantValue.HR);
           // add_employee(emp_list);
            // }

        //}

        protected void Page_Load(object sender, EventArgs e)
        {
            //string eventString = Request.Form[HiddenFieldMark.UniqueID]; //获取刚才用来传标记的HiddenFieldMark
            //Button bButton = new Button();
           // if (!string.IsNullOrEmpty(eventString)) //判断null或空字符
           // {
           //     if (eventString.Contains("HR"))  //用.equals()也可以
           //     { //动态生成控件
                    //btn_test.ID = "btn_delete";
                    //List<Model.Employee> emp_list = empService.GetEmployeeByPartId(ConstantValue.HR);
                    //add_employee(emp_list);
                    //bButton.Click += new EventHandler(delete);
                    //Button test = new Button();
                    //bButton.ID = "delete";
                    //bButton.Text = "删除";
                    //bButton.Click += new EventHandler(delete);

                   // add_employee();
                    //TableRow row;
                    //TableCell cell;
                   // row = new TableRow();
                   // cell = new TableCell();
                    //cell.CssClass = "table-bordered td text-center";
                   // cell.Controls.Add(bButton);
                   // row.Cells.Add(cell);
                   // employeeInfo.Rows.Add(row);
            //    }
           // }
        }

        //获取人事部全部员工的信息
        protected void emp_HR_Click(object sender, EventArgs e)
        {
            //HiddenFieldMark.Value = "HR"; //做个标记表示点击了aButton
            List<Model.Employee> emp_list = empService.GetEmployeeByPartId(ConstantValue.HR);
            add_employee(emp_list);
            this.hide_part.Value ="0";
        }

        protected void emp_delete_Click(object sender, EventArgs e)
        {
            //TableRow row;
            //TableCell cell;
            // row = new TableRow();
            //cell = new TableCell();
            //cell.CssClass = "table-bordered td text-center";
            // Label test = new Label();
            // test.Text = "test";
            // cell.Controls.Add(test);
            // row.Cells.Add(cell);
            // employeeInfo.Rows.Add(row);

            //employeeInfo.Rows.RemoveAt(10);
            //empService.DeleteEmployee(10);
            //根据button的选中状态记录ID和当前部门
            // int ID = int.Parse(lab_test.Text);
            int value = int.Parse(this.hide.Value);
            int part = int.Parse(this.hide_part.Value);
            //string depart = this.hide_part.Value;
            //if (depart.Equals("人事部")) part = 0;
            // if (depart.Equals("财务部")) part = 1;
           // else if (depart.Equals("采购部")) part = 2;
           // else if (depart.Equals("客服部")) part = 3;
           // else if (depart.Equals("后勤部")) part = 4;
           // else part = 5;
            
            empService.DeleteEmployee(value);
            List<Model.Employee> emp_list = empService.GetEmployeeByPartId(part);
            add_employee(emp_list);
        }
        //根据员工姓名或者ID搜索员工
        protected void search_btn_Click(object sender, EventArgs e)
        {
            string emp=search_text.Text.Trim();
            List<Model.Employee> emp_list = new List<Model.Employee>();
            int part = int.Parse(this.hide_part.Value);
            //判断是否为纯数字
            string pattern =@"^\d*$";
            if (System.Text.RegularExpressions.Regex.IsMatch(emp,pattern))
            {
                int id = int.Parse(emp);
                emp_list.Add(empService.GetEmployeeById(id));
            }
            else

                emp_list = empService.GetEmployeeByPartName(part, emp);

            add_employee(emp_list);
        }

        protected void emp_back_Click(object sender, EventArgs e)
        {

        }
    }
}
    