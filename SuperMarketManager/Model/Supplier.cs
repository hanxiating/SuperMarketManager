using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SuperMarketManager.Model
{
    public class Supplier
    {
        public int Id { get; set; }
        public String Name { get; set; }
        public String Phone { get; set; }
        public String Address { get; set; }
        public String Remark { get; set; }

        public static Supplier CreateSupplier(Dictionary<String, Object> dic)
        {
            Supplier supplier = new Supplier();
            supplier.Id = (int)dic["id"];
            supplier.Name = (String)dic["name"];
            supplier.Phone = (String)dic["phone"];
            supplier.Address = (String)dic["address"];
            supplier.Remark = (String)dic["remark"];
            return supplier;
        }
    }
}