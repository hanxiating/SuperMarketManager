using SuperMarketManager.Database;
using SuperMarketManager.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SuperMarketManager.Service
{
    public class EmployeeService
    {
        private const String INSERT_EMPLOYEE_SQL = "insert into employee(name,phone,sex,part_id,time) values(\"{0}\",\"{1}\",{2},{3},{4})";
        private const String SELECT_EMPLOYEE_BY_PART = "select * from employee were part_id={0}";

        public bool AddEmployee(Employee employee)
        {
            return AddEmployee(employee.Name,employee.Phone,employee.Sex,employee.PartId);
        }
        public bool AddEmployee(String name,String phone,int sex,int partId)
        {
            return DatabaseTool.ExecSql(String.Format(INSERT_EMPLOYEE_SQL,name,phone,sex,partId));
        }

        public List<Employee> GetEmployeeByPartId(int partId) {
            List<Employee> employees = new List<Employee>();

            return employees;
        }

        private Employee 
    }
}