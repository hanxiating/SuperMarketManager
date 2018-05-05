using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SuperMarketManager.Model
{
    public class Employee
    {
        public const int SEX_MAN = 0;
        public const int SEX_WOMAN = 1;

        public int Id { set; get; }
        public String Name { set; get; }
        public String Phone { set; get; }
        public int Sex { set; get; }
        public int PartId { set; get; }
        public long Time { set; get; }
    }
}