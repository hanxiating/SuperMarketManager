using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SuperMarketManager.Model
{
    public class Sale
    {
        public int Id { set; get; }
        public int GoodsId { set; get; }
        public int Number { set; get; }
        public float Cost { set; get; }
        public long Time { set; get; }
    }
}