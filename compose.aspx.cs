using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class compose : System.Web.UI.Page
{
    int uid = 0;
          talk2it tq = new talk2it();
            DataTable dt;
//    DateTime ClientDateTime = DateTime.Now;
        DateTime _localTime = TimeZoneInfo.ConvertTimeBySystemTimeZoneId(DateTime.Now, "Arab Standard Time");
              
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] == null && Session["email"] == null)
        {
            //Response.WriteFile("login.aspx");
            Response.Redirect("login.aspx");
        }
        else
        {
             uid = Convert.ToInt32(Session["uid"]);
           //  Response.Write(_localTime);
       dt= tq.getTable("SELECT friends_tb.f_list,users_tb.fname FROM friends_tb,users_tb WHERE uid="+uid+" AND fid="+uid);
       if (dt.Rows.Count != 0)
            {	string list=dt.Rows[0].ToString();
	
			//dt= tq.getTable("SELECT * FROM users_tb WHERE fname<>"+dt.Rows[1]+" AND isActive=1 AND uid IN ("+list+");");
				}			
				
    }
}
    protected void Reset_Click(object sender, EventArgs e)
    {

    }
    protected void Send_Click(object sender, EventArgs e)
    {
        int o=0;
        dt = tq.getTable("SELECT uid FROM users_tb WHERE email='"+rid.Text+"';");
        if (dt.Rows.Count == 0)
        {
            //Response.write
        }
        else 
        {
            string id = dt.Rows[0].ItemArray.GetValue(0).ToString();
            dt = tq.getTable("select mid from  messages_tb order by mid desc");
            o=Convert.ToInt32(dt.Rows[0].ItemArray.GetValue(0));
            o = o + 1;
            //String.Format("{0:d/M/yyyy HH:mm:ss}", datetime);
            dt = tq.getTable("Insert into messages_tb values(" + o + "," + uid + ",'" + subject.Text + "','" + message1.Text + "'," + Session["uid"] + "," + id + ",'" + _localTime + "',0,0,0,0)");
            Response.Write("Message sent successfully");
        }
    }
}