using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SuperMarketManager.Model
{
    public class Part
    {
        public int Id { get; set; }
        public String Name { get; set; }
        public static Part CreatePart(Dictionary<String, Object> dic)
        {
            Part part = new Part();
            part.Id = (int)dic["id"];
            part.Name = (String)dic["name"];
            return part;
        }
    }
}