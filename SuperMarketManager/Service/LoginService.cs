using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SuperMarketManager.Service
{
    public class LoginService
    {
        //验证管理员身份登录密码
        public bool identifyManager(string name,string pswd)
        {
            if (name.Trim() != "admin" || pswd.Trim() != "admin")
                return false;
            else
                return true;
        }
    }
}