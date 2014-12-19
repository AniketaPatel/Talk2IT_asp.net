using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Windows;

public partial class sent : System.Web.UI.Page
{
    talk2it tq = new talk2it();
    DataTable dt;
    int uid = 0, mid = 0;
    string email = "";
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
            email = Session["email"].ToString();
            //  

            dt = tq.getTable("SELECT users_tb.uid,users_tb.fname,users_tb.lname,messages_tb.* FROM users_tb ,messages_tb WHERE  messages_tb.sid=" + uid + " AND messages_tb.sid=users_tb.uid AND messages_tb.delete_status=0  AND messages_tb.archive_status=0 AND messages_tb.trash_status=0 ORDER BY messages_tb.date_time DESC");
            if (dt.Rows.Count != 0)
            {

                GridView2.DataSource = dt;
                GridView2.DataBind();
            }
        }
        talk2it t2i = new talk2it();
        dt = new DataTable();
        dt = t2i.getTable("SELECT count(*) FROM messages_tb WHERE rid=" + Session["uid"] + " AND archive_status=0 AND trash_status=0 AND delete_status=0");
        msg_in.Text = dt.Rows[0].ItemArray.GetValue(0).ToString();
        dt = new DataTable();
        dt = t2i.getTable("SELECT count(*) FROM messages_tb WHERE sid=" + Session["uid"]);
        msg_sent.Text = dt.Rows[0].ItemArray.GetValue(0).ToString();
        dt = new DataTable();
        dt = t2i.getTable("SELECT count(*) FROM messages_tb WHERE rid=" + Session["uid"] + " AND archive_status=1");
        msg_archive.Text = dt.Rows[0].ItemArray.GetValue(0).ToString();
        dt = new DataTable();
        dt = t2i.getTable("SELECT count(*) FROM messages_tb WHERE rid=" + Session["uid"] + " AND trash_status=1");
        msg_trash.Text = dt.Rows[0].ItemArray.GetValue(0).ToString();
    }
}