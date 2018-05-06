using SuperMarketManager.Database;
using SuperMarketManager.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SuperMarketManager.Service
{
    public class GoodsTypeService
    {
        private const String INSERT_TYPE_SQL = "insert into goods_type(name) values(\"{0}\")";
        private const String SELECT_TYPE_BY_ID = "select * from goods_type where id={0}";
        private const String SELECT_ALL_TYPE = "select * from goods_type";

        public bool AddGoodsType(String name)
        {
            return DatabaseTool.ExecSql(String.Format(INSERT_TYPE_SQL, name));
        }
        public GoodsType GetGoodsType(int id)
        {
            List<Dictionary<String, Object>> sqlResult = DatabaseTool.ExecSqlWithReturn(String.Format(SELECT_TYPE_BY_ID, id));
            if (null == sqlResult || sqlResult.Count < 1)
            {
                return null;
            }
            else
            {
                return GoodsType.CreateGoodsType(sqlResult[0]);
            }
        }
        public List<GoodsType> GetAllGoodsType()
        {
            List<Dictionary<String, Object>> sqlResult = DatabaseTool.ExecSqlWithReturn(String.Format(SELECT_ALL_TYPE));
            if (null == sqlResult || sqlResult.Count < 1)
            {
                return null;
            }
            else
            {
                List<GoodsType> goodsTypes = new List<GoodsType>();
                foreach (Dictionary<String, Object> dic in sqlResult)
                {
                    goodsTypes.Add(GoodsType.CreateGoodsType(dic));
                }
                return goodsTypes;
            }
        }


    }
}