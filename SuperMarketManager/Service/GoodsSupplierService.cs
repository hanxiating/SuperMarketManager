using SuperMarketManager.Database;
using SuperMarketManager.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SuperMarketManager.Service
{
    public class GoodsSupplierService
    {
        private const String SELECT_SUPPLIERS_BY_GOODSID = "select * from goods_supplier where goods_id={0}";
        private const String INSERT_GOODS_SUPPLIER_SQL = "insert into goods_supplier(goods_id,supplier_id,price) values({0},{1},{2})";

        //根据货物id查询供应商信息
        public List<GoodsSupplier> GetGoodsSuppliers(int goods_id)
        {
            List<Dictionary<String, Object>> sqlResult = DatabaseTool.ExecSqlWithReturn(String.Format(SELECT_SUPPLIERS_BY_GOODSID, goods_id));
            if (null == sqlResult || sqlResult.Count < 1)
            {
                return null;
            }
            else
            {
                List<GoodsSupplier> goodsSuppliers = new List<GoodsSupplier>();
                foreach (Dictionary<String, Object> dic in sqlResult)
                {
                    goodsSuppliers.Add(GoodsSupplier.CreateGoodsSupplier(dic));
                }
                return goodsSuppliers;
            }
        }

        //添加货物—供应商
        public bool AddPart(int goods_id, int supplier_id, float price)
        {
            return DatabaseTool.ExecSql(String.Format(INSERT_GOODS_SUPPLIER_SQL, goods_id, supplier_id, price));
        }
    }
}