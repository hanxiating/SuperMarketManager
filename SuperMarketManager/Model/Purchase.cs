using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SuperMarketManager.Model
{
    public class Purchase
    {
        public int Id { set; get; }
        public int GoodsSupplierId { set; get; }
        public int Number { set; get; }
        public long Time { get; set; }

        public static Purchase CreatePurchase(Dictionary<String, Object> dic)
        {
            Purchase purchase = new Purchase();
            purchase.Id = (int)dic["id"];
            purchase.GoodsSupplierId = (int)dic["goods_supplier_id"];
            purchase.Number = (int)dic["number"];
            purchase.Time = (long)dic["number"];
            return purchase;
        }
    }
}