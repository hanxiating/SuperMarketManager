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

    }
}