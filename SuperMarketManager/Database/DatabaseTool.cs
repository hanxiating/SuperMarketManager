﻿using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace SuperMarketManager.Database
{
    public class DatabaseTool
    {
        private static MySqlConnection sqlConnection;
        public static MySqlConnection GetSqlConnection()
        {
            if (null == sqlConnection || sqlConnection.State == System.Data.ConnectionState.Closed)
            {
                sqlConnection = new MySqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
                sqlConnection.Open();
            }
            return sqlConnection;
        }
        public static bool ExecSql(String sql)
        {
            MySqlCommand command = new MySqlCommand(sql, GetSqlConnection());
            return command.ExecuteNonQuery() > 0 ? true : false;
        }

        public static int GetLastInsertId()
        {
            MySqlCommand command = new MySqlCommand("SELECT LAST_INSERT_ID()", GetSqlConnection());
            MySqlDataReader reader = command.ExecuteReader();
            reader.Read();
            int result= reader.GetInt32(0);
            reader.Close();
            return  result;
        }
        public static List<Dictionary<String, Object>> ExecSqlWithReturn(String sql)
        {
            List<Dictionary<String, Object>> list = new List<Dictionary<string, object>>();

            MySqlCommand sqlCommand = new MySqlCommand(sql, GetSqlConnection());

            MySqlDataReader reader = sqlCommand.ExecuteReader();
            while (reader.Read())
            {
                Dictionary<String, Object> keyValues = new Dictionary<string, object>();
                System.Diagnostics.Debug.WriteLine(reader.FieldCount+"---------------------");
                for (int i = 0; i < reader.FieldCount; i++)
                {
                    System.Diagnostics.Debug.WriteLine(reader.GetName(i) + "---------------------"+ reader.GetFieldValue<Object>(i));
                    keyValues.Add(reader.GetName(i), reader.GetFieldValue<Object>(i));
                }
                list.Add(keyValues);
            }
            reader.Close();
            return list;
        }

    }
}