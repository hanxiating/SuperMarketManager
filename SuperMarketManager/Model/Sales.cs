using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SuperMarketManager.Model
{
    public class Sales
    {
        public int Id { set; get; }
        public int GoodsId { set; get; }
        public int Number { set; get; }
        public float Cost { set; get; }
        public long Time { set; get; }

        public static Sales CreateSale(Dictionary<String, Object> dic)
        {
            Sales sales = new Sales();
            sales.Id = (int)dic["id"];
            sales.GoodsId = (int)dic["goods_id"];
            sales.Number = (int)dic["number"];
            sales.Cost = (float)dic["cost"];
            sales.Time = (long)dic["time"];
            return sales;
        }
    }
}