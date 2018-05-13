using SuperMarketManager.Database;
using SuperMarketManager.Model;
using SuperMarketManager.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SuperMarketManager.Service
{
    public class EmployeeService
    {
        private const String INSERT_EMPLOYEE_SQL = "insert into employee(name,phone,sex,part_id,time) values(\"{0}\",\"{1}\",{2},{3},{4})";
        private const String SELECT_EMPLOYEE_BY_PART = "select * from employee where part_id={0}";
        private const String SELECT_EMPLOYEE_BY_ID = "select * from employee where id={0}";
        private const String SELECT_EMPLOYEE_BY_PART_NAME = "select * from employee where part_id={0} and name={1}";

        public bool AddEmployee(Employee employee)
        {
            return AddEmployee(employee.Name, employee.Phone, employee.Sex, employee.PartId);
        }
        public bool AddEmployee(String name, String phone, int sex, int partId)
        {
            return DatabaseTool.ExecSql(String.Format(INSERT_EMPLOYEE_SQL, name, phone, sex, partId, TimeUtils.GetCurrentTimeUnix()));
        }

        public List<Employee> GetEmployeeByPartId(int partId)
        {
            List<Dictionary<String, Object>> result = DatabaseTool.ExecSqlWithReturn(String.Format(SELECT_EMPLOYEE_BY_PART, partId));
            if (null == result || result.Count < 1)
            {
                return null;
            }
            else
            {
                List<Employee> employees = new List<Employee>();
                foreach (Dictionary<String, Object> dic in result)
                {
                    employees.Add(Employee.CreateEmployee(dic));
                }
                return employees;
            }
        }

        public Employee GetEmployeeById(int id)
        {
            List<Dictionary<String, Object>> result = DatabaseTool.ExecSqlWithReturn(String.Format(SELECT_EMPLOYEE_BY_PART, id));
            if (null == result || result.Count < 1)
            {
                return null;
            }
            else
            {
                return Employee.CreateEmployee(result[0]);
            }
        }

        public List<Employee> GetEmployeeByPartName(String partId, String name)
        {
            List<Dictionary<String, Object>> result = DatabaseTool.ExecSqlWithReturn(String.Format(SELECT_EMPLOYEE_BY_PART_NAME, partId,name));
            if (null == result || result.Count < 1)
            {
                return null;
            }
            else
            {
                List<Employee> employees = new List<Employee>();
                foreach (Dictionary<String, Object> dic in result)
                {
                    employees.Add(Employee.CreateEmployee(dic));
                }
                return employees;
            }
        }

    }
}