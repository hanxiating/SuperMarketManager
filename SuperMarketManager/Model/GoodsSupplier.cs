using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SuperMarketManager.Model
{
    public class GoodsSupplier
    {
        public int Id { set; get; }
        public int GoodsId { set; get; }
        public int SupplierId { set; get; }
        public float Price { set; get; }
    
        public static GoodsSupplier CreateGoodsSupplier(Dictionary<String, Object> dic)
        {
            GoodsSupplier goodsSupplier = new GoodsSupplier();
            goodsSupplier.Id = (int)dic["id"];
            goodsSupplier.GoodsId = (int)dic["goods_id"];
            goodsSupplier.SupplierId = (int)dic["supplier_id"];
            goodsSupplier.Price = (int)dic["price"];
            return goodsSupplier;
        }
    }
}