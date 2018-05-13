using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SuperMarketManager.Utils
{
    public class TimeUtils
    {
        public static long GetCurrentTimeUnix()
        {
            TimeSpan cha = (DateTime.Now - TimeZone.CurrentTimeZone.ToLocalTime(new System.DateTime(1970, 1, 1)));
            long t = (long)cha.TotalSeconds;
            return t;
        }
        /// <summary>  
        /// 时间戳转换为本地时间对象  
        /// </summary>  
        /// <returns></returns>        
        public static DateTime GetUnixDateTime(long unix)
        {
            //long unix = 1500863191;  
            DateTime dtStart = TimeZone.CurrentTimeZone.ToLocalTime(new DateTime(1970, 1, 1));
            DateTime newTime = dtStart.AddSeconds(unix);
            return newTime;
        }
        public static String GetTimeString(long unix)
        {
            return GetUnixDateTime(unix).ToString("f");
        }
    }
}