using SuperMarketManager.Database;
using SuperMarketManager.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SuperMarketManager.Service
{
    public class SupplierService
    {
        private const String INSERT_SUPPLIER_SQL = "insert into supplier(name,phone,address,remark) values(\"{0}\",\"{1}\",\"{2}\",\"{3}\")";
        private const String SELECT_SUPPLIER_BY_ID = "select * from supplier where id={0}";
        private const String SELECT_ALL_SUPPLIER = "select * from supplier";

        private const String SELECT_SUPPLIER_BY_GOODS_TYPE = "select distinct supplier.* from supplier,goods,goods_supplier where goods.type={0} AND goods.id=goods_supplier.goods_id AND goods_supplier.supplier_id=supplier.id";

        //添加供应商
        public int AddSupplier(Supplier supplier)
        {
            return AddSupplier(supplier.Name, supplier.Phone, supplier.Address, supplier.Remark);
        }
        public int AddSupplier(String name, String phone, String address, String remark)
        {
            if (DatabaseTool.ExecSql(String.Format(INSERT_SUPPLIER_SQL, name, phone, address, remark)))
            {
                return DatabaseTool.GetLastInsertId();
            }
            return -1;
        }

        //根据id查询供应商
        public Supplier GetSupplier(int id)
        {
            List<Dictionary<String, Object>> sqlResult = DatabaseTool.ExecSqlWithReturn(String.Format(SELECT_SUPPLIER_BY_ID, id));
            if (null == sqlResult || sqlResult.Count < 1)
            {
                return null;
            }
            else
            {
                return Supplier.CreateSupplier(sqlResult[0]);
            }
        }

        //查询全部供应商
        public List<Supplier> GetAllSupplier()
        {
            List<Dictionary<String, Object>> sqlResult = DatabaseTool.ExecSqlWithReturn(String.Format(SELECT_ALL_SUPPLIER));
            if (null == sqlResult || sqlResult.Count < 1)
            {
                return null;
            }
            else
            {
                List<Supplier> suppliers = new List<Supplier>();
                foreach (Dictionary<String, Object> dic in sqlResult)
                {
                    suppliers.Add(Supplier.CreateSupplier(dic));
                }
                return suppliers;
            }
        }

        public List<Supplier> GetSuppliersForGoodsType(int goods_type)
        {
            List<Dictionary<String, Object>> sqlResult = DatabaseTool.ExecSqlWithReturn(String.Format(SELECT_SUPPLIER_BY_GOODS_TYPE, goods_type));
            if (null == sqlResult || sqlResult.Count < 1)
            {
                return null;
            }
            else
            {
                List<Supplier> suppliers = new List<Supplier>();
                foreach (Dictionary<String, Object> dic in sqlResult)
                {
                    suppliers.Add(Supplier.CreateSupplier(dic));
                }
                return suppliers;
            }
        }
    }
}