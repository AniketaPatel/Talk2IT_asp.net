using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class manage_user : System.Web.UI.Page
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

            if(!IsPostBack)
            {
                load_data();
            }
        }
        talk2it t2i = new talk2it();
        dt = new DataTable();
        dt = t2i.getTable("SELECT count(*) FROM messages_tb WHERE rid=" + Session["uid"] + "AND archive_status=0 AND trash_status=0 AND delete_status=0");
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
   
    protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        

    }
   
    protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView2.EditIndex = e.NewEditIndex;
        load_data();
    }
    public void load_data()
    {
        dt = tq.getTable("SELECT * FROM users_tb WHERE status=0");
        if (dt.Rows.Count != 0)
        {

            GridView2.DataSource = dt;
            GridView2.DataBind();
        }
    }
    protected void GridView2_RowUpdating1(object sender, GridViewUpdateEventArgs e)
    {
        string uid = ((Label)GridView2.Rows[e.RowIndex].FindControl("Label1")).Text;
        CheckBox isb = (CheckBox)GridView2.Rows[e.RowIndex].FindControl("CheckBox1");
        string isblocked = "";
        if (isb.Checked == true)
            isblocked = "true";
        else if(isb.Checked == false)
            isblocked = "false";

      //  Response.Write(isblocked);
       // Response.Write(uid);
       dt = tq.getTable("update users_tb set isBlocked='"+isblocked+"' where uid= " + uid);
       // ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Row is moved in to archive...');", true);

        GridView2.EditIndex = -1;
        load_data();
    }
    protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView2.EditIndex = -1;
        load_data();
    }
}