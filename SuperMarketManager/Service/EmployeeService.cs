using SuperMarketManager.Database;
using SuperMarketManager.Model;
using SuperMarketManager.Utils;
using System;
using System.Collections.Generic;


namespace SuperMarketManager.Service
{
    public class EmployeeService
    {
        private const String INSERT_EMPLOYEE_SQL = "insert into employee(name,phone,sex,part_id,time) values(\"{0}\",\"{1}\",{2},{3},{4})";
        private const String SELECT_EMPLOEE_ALL = "select * from employee";
        private const String SELECT_EMPLOYEE_BY_PART = "select * from employee where part_id={0}";
        private const String SELECT_EMPLOYEE_BY_ID = "select * from employee where id={0}";
        private const String SELECT_EMPLOYEE_BY_PART_NAME = "select * from employee where part_id={0} and name=\"{1}\"";
        private const String UPDATE_EMPLOYEE_SQL = "update employee set name=\"{0}\",phone=\"{1}\",part_id={2} where id={3}";
        private const String DELETE_EMPLOYEE_BY_ID = "delete from employee where id={0}";
        //private const String SELECT_EMPLOYEE_BY_PART_NAME = "select * from employee where part_id={0} and name={1}";

        public bool AddEmployee(Employee employee)
        {
            return AddEmployee(employee.Name, employee.Phone, employee.Sex, employee.PartId);
        }
        public bool AddEmployee(String name, String phone, int sex, int partId)
        {
            return DatabaseTool.ExecSql(String.Format(INSERT_EMPLOYEE_SQL, name, phone, sex, partId, TimeUtils.GetCurrentTimeUnix()));
        }

        public bool UpdateEmployee(Employee employee) {
            return DatabaseTool.ExecSql(String.Format(UPDATE_EMPLOYEE_SQL,employee.Name,employee.Phone,employee.PartId,employee.Id));
        }

        //根据ID删除
        public bool DeleteEmployee(int id)
        {
            return DatabaseTool.ExecSql(String.Format(DELETE_EMPLOYEE_BY_ID,id));
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

        public List<Employee> GetAllEmployee()
        {
            List<Dictionary<String, Object>> result = DatabaseTool.ExecSqlWithReturn(SELECT_EMPLOEE_ALL);
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
            List<Dictionary<String, Object>> result = DatabaseTool.ExecSqlWithReturn(String.Format(SELECT_EMPLOYEE_BY_ID, id));
            if (null == result || result.Count < 1)
            {
                return null;
            }
            else
            {
                return Employee.CreateEmployee(result[0]);
            }
        }

        public List<Employee> GetEmployeeByPartName(int partId, String name)
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