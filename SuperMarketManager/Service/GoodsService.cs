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
        private const String INSERT_GOODS_SQL = "insert into goods(name,type,number,price,discount,limit_number,status) values(\"{0}\",{1},{2},{3},{4},{5},{6},{7})";
        private const String SELECT_GOODS_BY_ID = "select * from goods where id={0}";

        public bool AddGoods(Goods goods) {
            return AddGoods(goods.Name, goods.Type, goods.Number, goods.Price, goods.Discount, goods.LimitNumber, goods.Status);
        }

        public bool AddGoods(String name,int type,int number,float price,float discount,int limitNumber,int status)
        {
            return DatabaseTool.ExecSql(String.Format(INSERT_GOODS_SQL,name,type,number,price,discount,limitNumber,status));
        }

        public Goods GetGoodsById(int id)
        {
            List<Dictionary<String, Object>> sqlResult = DatabaseTool.ExecSqlWithReturn(String.Format(SELECT_GOODS_BY_ID, id));
            if (null == sqlResult || sqlResult.Count < 1)
            {
                return null;
            }
            else
            {
                return Goods.CreateGoods(sqlResult[0]);
            }
        }


    }
}