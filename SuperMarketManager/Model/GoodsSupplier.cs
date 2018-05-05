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
    }
}