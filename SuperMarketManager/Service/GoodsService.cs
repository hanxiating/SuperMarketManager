using SuperMarketManager.Database;
using SuperMarketManager.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SuperMarketManager.Service
{
    public class GoodsService
    {
        private const String INSERT_GOODS_SQL = "insert into goods(name,type,number,price,discount,limit_number,status) values(\"{0}\",{1},{2},{3},{4},{5},{6})";
        private const String SELECT_GOODS_BY_ID = "select * from goods where id={0}";
        private const String SELECT_GOODS_BY_TYPE = "select * from goods where type={0}";
        private const String SELECT_ALL_GOODS = "select * from goods";
        private const String UPDATE_GOODS_NUMBER = "update goods set number={0} where id={1}";

        private const String GET_WAIT_PURCHASE_GOODS = "select goods.*,number/limit_number as weight from goods order by weight";

        private const String GET_WAIT_PURCHASE_GOODS_BY_TYPE = "select goods.*,number/limit_number as weight from goods where type={0} order by weight";

        private const String SEARCH_GOODS_BYNAME = "select * from goods where type={0} and name=\"{1}\"";
        private const String SEARCH_GOODS_BYNAME_WITHOUT_TYPE = "select * from goods where name=\"{0}\"";


        public int AddGoods(Goods goods)
        {
            return AddGoods(goods.Name, goods.Type, goods.Number, goods.Price, goods.Discount, goods.LimitNumber, goods.Status);
        }


        public int AddGoods(String name, int type, int number, float price, float discount, int limitNumber, int status)
        {
            if (DatabaseTool.ExecSql(String.Format(INSERT_GOODS_SQL, name, type, number, price, discount, limitNumber, status)))
            {
                return DatabaseTool.GetLastInsertId();
            }
            return -1;
        }

        public Goods GetGoodsById(int id)
        {
            return GetGoodsList(String.Format(SELECT_GOODS_BY_ID, id))[0];
        }

        public List<Goods> GetGoodsByTypeId(int type)
        {
            return GetGoodsList(String.Format(SELECT_GOODS_BY_TYPE, type));
        }

        public bool UpdateGoodsNumber(int id, int number)
        {
            return DatabaseTool.ExecSql(String.Format(UPDATE_GOODS_NUMBER, number, id));
        }

        public bool PurchaseGoods(int id, int number)
        {
            Goods goods = GetGoodsById(id);
            if (null != goods)
            {
                return UpdateGoodsNumber(id, goods.Number + number);
            }
            return false;
        }

        public bool SaleGoods(int id, int number)
        {
            Goods goods = GetGoodsById(id);
            if (null != goods && number <= goods.Number)
            {
                return UpdateGoodsNumber(id, goods.Number - number);
            }
            return false;
        }

        public List<Goods> GetAllGoods()
        {
            return GetGoodsList(SELECT_ALL_GOODS);
        }

        public List<Goods> GetWaitPurchaseGoods()
        {
            return GetGoodsList(GET_WAIT_PURCHASE_GOODS);
        }



        public List<Goods> GetWaitPurchaseGoodsByType(int type)
        {
            return GetGoodsList(String.Format(GET_WAIT_PURCHASE_GOODS_BY_TYPE, type));
        }


        private List<Goods> GetGoodsList(String sql)
        {
            List<Dictionary<String, Object>> sqlResult = DatabaseTool.ExecSqlWithReturn(sql);
            List<Goods> goods = new List<Goods>();
            if (null == sqlResult || sqlResult.Count < 1)
            {
                return goods;
            }
            else
            {
                
                foreach (Dictionary<String, Object> dic in sqlResult)
                {
                    goods.Add(Goods.CreateGoods(dic));
                }
                return goods;
            }
        }

        public List<Goods> SearchGoods(int part_id,String name)
        {
            return GetGoodsList(String.Format(SEARCH_GOODS_BYNAME,part_id,name));
        }

        public List<Goods> SearchGoods(String name)
        {
            return GetGoodsList(String.Format(SEARCH_GOODS_BYNAME_WITHOUT_TYPE, name));
        }
       // public List<Supplier>
    }
}