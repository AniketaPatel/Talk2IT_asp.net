using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class edit_profile : System.Web.UI.Page
{
    talk2it tq = new talk2it();
    DataTable dt;
    DataSet ds1;
    protected void Page_Load(object sender, EventArgs e)
    {
       // Response.Write(Session["uid"].ToString());
        bind_image(); 

    }
    public void bind_image()
    {
        talk2it t2i = new talk2it();
        ds1 = t2i.getds("SELECT image FROM users_tb WHERE uid=" + Session["uid"].ToString()+";");

        DataList1.DataSource = ds1;
        DataList1.DataBind();
    }
}