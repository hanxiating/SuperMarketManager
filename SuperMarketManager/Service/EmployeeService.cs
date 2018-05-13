﻿using SuperMarketManager.Database;
using SuperMarketManager.Model;
using SuperMarketManager.Utils;
using System;
using System.Collections.Generic;


namespace SuperMarketManager.Service
{
    public class EmployeeService
    {
        private const String INSERT_EMPLOYEE_SQL = "insert into employee(name,phone,sex,part_id,time) values(\"{0}\",\"{1}\",{2},{3},{4},{5})";
        private const String SELECT_EMPLOYEE_BY_PART = "select * from employee where part_id={0}";
        private const String SELECT_EMPLOYEE_BY_ID = "select * from employee where id={0}";
        private const String DELETE_EMPLOYEE_BY_ID = "delete from employee where id={0}";

        public bool AddEmployee(Employee employee)
        {
            return AddEmployee(employee.Name, employee.Phone, employee.Sex, employee.PartId);
        }
        public bool AddEmployee(String name, String phone, int sex, int partId)
        {
            return DatabaseTool.ExecSql(String.Format(INSERT_EMPLOYEE_SQL, name, phone, sex, partId, TimeUtils.GetCurrentTimeUnix()));
        }
        //根据ID删除
        public bool DeleteEmployee(int id)
        {
            return DatabaseTool.ExecSql(String.Format(DELETE_EMPLOYEE_BY_ID,id));
        }

        public List<Employee> GetEmployeeByPartId(int partId)
        {
            List<Dictionary<String, Object>> result = DatabaseTool.ExecSqlWithReturn(String.Format(SELECT_EMPLOYEE_BY_PART,partId));
            //List<Dictionary<String, Object>> result = DatabaseTool.ExecSqlWithReturn("select * from employee");
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

    }
}