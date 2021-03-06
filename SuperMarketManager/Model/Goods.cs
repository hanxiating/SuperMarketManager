﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SuperMarketManager.Model
{
    public class Goods
    {
        public int Id { get; set; }
        public String Name { get; set; }
        public int Type { get; set; }
        public float Price { get; set; }
        public float Discount { get; set; }
        public int Number { get; set; }
        public int LimitNumber { get; set; }
        private int status = 1;
        public int Status { get { return status; } set { status = value; } }

        public static Goods CreateGoods(Dictionary<String, Object> dic)
        {
            Goods goods = new Goods();
            goods.Id = (int)dic["id"];
            goods.Name = (String)dic["name"];
            goods.Type = (int)dic["type"];
            goods.Number = (int)dic["number"];
            goods.Price = (float)dic["price"];
            goods.Discount = (float)dic["discount"];
            goods.LimitNumber = (int)dic["limit_number"];
            goods.Status = (int)dic["status"];
            return goods;
        }
    }
}