using SuperMarketManager.Database;
using SuperMarketManager.Model;
using SuperMarketManager.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SuperMarketManager.Service
{
    public class PurchaseService
    {
        private const String INSERT_PURCHASE_SQL = "insert into purchase(goods_supplier_id,number,time) values({0},{1},{2})";
        private const String SELECT_ALL_PURCHASE = "select * from purchase group by time";

        //查询采购记录
        public List<Purchase> GetAllPurchase()
        {
            List<Dictionary<String, Object>> sqlResult = DatabaseTool.ExecSqlWithReturn(String.Format(SELECT_ALL_PURCHASE));
            if (null == sqlResult || sqlResult.Count < 1)
            {
                return null;
            }
            else
            {
                List<Purchase> purchase = new List<Purchase>();
                foreach (Dictionary<String, Object> dic in sqlResult)
                {
                    purchase.Add(Purchase.CreatePurchase(dic));
                }
                return purchase;
            }
        }

        //添加采购记录
        public bool AddSales(int goods_supplier_id, int number)
        {
            long time = TimeUtils.GetCurrentTimeUnix();
            if(new GoodsService().PurchaseGoods(new GoodsSupplierService().GetGoodsSupplierById(goods_supplier_id).GoodsId,number))
            return DatabaseTool.ExecSql(String.Format(INSERT_PURCHASE_SQL, goods_supplier_id, number, time));
            return false;
        }
    }
}