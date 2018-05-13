using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class login : System.Web.UI.Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" || TextBox2.Text == "")
                Response.Write("<script>alert('用户名或密码不能为空')</script>");
            else if (TextBox1.Text == "admin" && TextBox2.Text == "admin")
                Response.Write("<script language='javascript'>window.location='home.aspx'</script>");
            else
                Response.Write("<script>alert('用户名或密码不正确！')</script>");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text  = "";
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Write("<script language='javascript'>window.location='Orders.aspx'</script>");
        }
    }
}