using SuperMarketManager.Database;
using SuperMarketManager.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SuperMarketManager.Service
{
    public class PartService
    {
        private const String INSERT_PART_SQL = "insert into part(name) values(\"{0}\")";
        private const String SELECT_PART_BY_ID = "select * from part where id={0}";
        private const String SELECT_ALL_PART = "select * from part";

        /// <summary>
        /// 添加部门
        /// </summary>
        /// <param name="name">部门名称</param>
        /// <returns>是否成功添加</returns>
        public bool AddPart(String name)
        {
            return DatabaseTool.ExecSql(String.Format(INSERT_PART_SQL, name));
        }
        public Part GetPart(int id)
        {
            List<Dictionary<String, Object>> sqlResult = DatabaseTool.ExecSqlWithReturn(String.Format(SELECT_PART_BY_ID, id));
            if (null == sqlResult || sqlResult.Count < 1)
            {
                return null;
            }
            else
            {
                return CreatePart(sqlResult[0]);
            }
        }
        public List<Part> GetAllPart()
        {
            List<Dictionary<String, Object>> sqlResult = DatabaseTool.ExecSqlWithReturn(String.Format(SELECT_ALL_PART));
            if (null == sqlResult || sqlResult.Count < 1)
            {
                return null;
            }
            else
            {
                List<Part> parts = new List<Part>();
                foreach (Dictionary<String,Object> dic in sqlResult) {
                    parts.Add(CreatePart(dic));
                }
                return parts;
            }
        }

        private Part CreatePart(Dictionary<String, Object> dic)
        {
            Part part = new Part();
            part.Id = (int)dic["id"];
            part.Name = (String)dic["name"];
            return part;
        }
    }
}