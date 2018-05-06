﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SuperMarketManager.Model;
using SuperMarketManager.Database;
using SuperMarketManager.Utils;

namespace SuperMarketManager.Service
{
    public class SalesService
    {
        private const String INSERT_SALES_SQL = "insert into sales(goods_id,number,cost,time) values({0},{1},{2},{3})";
        private const String SELECT_ALL_SALES = "select * from sales group by time";

        //查询全部销售记录（同一时间一组）
        public List<Sales> GetAllPart()
        {
            List<Dictionary<String, Object>> sqlResult = DatabaseTool.ExecSqlWithReturn(String.Format(SELECT_ALL_SALES));
            if (null == sqlResult || sqlResult.Count< 1)
            {
                return null;
            }
            else
            {
                List<Sales> sales = new List<Sales>();
                foreach (Dictionary<String, Object> dic in sqlResult) {
                    sales.Add(Sales.CreateSale(dic));
                }
                return sales;
            }
        }

        //插入销售记录
        public bool AddSales(int goods_id,int number,float cost)
        {
            long time = TimeUtils.GetCurrentTimeUnix();
            return DatabaseTool.ExecSql(String.Format(INSERT_SALES_SQL, goods_id,number,cost,time));
        }
    }
}