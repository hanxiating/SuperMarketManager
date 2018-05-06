using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SuperMarketManager.Model
{
    public class GoodsType
    {
        public int Id { set; get; }
        public String Name { get; set; }

        public static GoodsType CreateGoodsType(Dictionary<String, Object> dic)
        {
            GoodsType type = new GoodsType();
            type.Id = (int)dic["id"];
            type.Name = (String)dic["name"];
            return type;
        }
    }
}