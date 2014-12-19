using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class friends : System.Web.UI.Page
{
    talk2it it =new talk2it();
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] == null && Session["email"] == null)
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            int uid = Convert.ToInt32(Session["uid"]);
            string email = Session["email"].ToString();
            dt = it.getTable("select * from friends_tb where fid=" + uid);
            if (dt == null)
                Label5.Text = "You Have No Friends...";
            else
            {
                string flist = dt.Rows[3].ToString();
                Response.Write(flist);
            }
        }
   
    
    }
}