using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
public partial class home : System.Web.UI.Page
{
    talk2it tq = new talk2it();
    DataTable dt;
    DataSet ds1;
    string uidd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] == null && Session["email"] == null)
        {
            Response.Redirect("login.aspx");
        }
        else
        {
        uidd=Session["uid"].ToString();
        bind_image(); 
          /*  string[] filePaths = Directory.GetFiles(Server.MapPath("images/user/"));
            List<ListItem> files = new List<ListItem>();
            foreach (string filePath in filePaths)
            {
                string fileName = Path.GetFileName(filePath);
                files.Add(new ListItem(fileName, "images/user/" + fileName));
            }
            GridView1.DataSource = files;
            GridView1.DataBind();*/
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
    
      int uid=Convert.ToInt32(Session["uid"]);
      string email=Session["email"].ToString();
    
	}
            
     dt = tq.getTable("SELECT * FROM users_tb  ");
          if (dt.Rows.Count != 0)
    {
        string name = dt.Columns[1].ToString() + " " + dt.Columns[2].ToString();
        string gender=dt.Columns[6].ToString();
        string image=dt.Columns[7].ToString();
    }
      }
    
    protected void Upload(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.PostedFile.SaveAs(Server.MapPath("images/user/") + fileName);
            //Response.Write(fileName);
            talk2it t2i = new talk2it();
            //Response.Write("UPDATE users_tb SET image='" + fileName + "' WHERE uid=" + Session["uid"] + ";");
            t2i.dodml("UPDATE users_tb SET image='"+fileName+"' WHERE uid="+Session["uid"]+";");
            //Response.Write("Image Uploaded successfully");
            bind_image();
        }
    }
    public void bind_image()
    {
        talk2it t2i = new talk2it();
        ds1 = t2i.getds("SELECT image FROM users_tb WHERE uid=" + Session["uid"]);

        DataList1.DataSource = ds1;
        DataList1.DataBind();
    }
}