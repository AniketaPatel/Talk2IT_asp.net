using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        talk2it tq = new talk2it();

    DataTable dt = tq.getTable("SELECT uid,status FROM users_tb WHERE email='" +email.Text + "' AND password='" + pass.Text + "' AND isBlocked='false'");
        if (dt.Rows.Count == 0)
        {
            notify.Text = "Please signup to login";
            notify.ForeColor=System.Drawing.Color.Red;
            //notify.BackColor = System.Drawing.Color.Red;
        }
        else
        {

            if (dt.Rows[0].ItemArray.GetValue(1).ToString() == "1")
            {
                Session["uid"] = dt.Rows[0].ItemArray.GetValue(0).ToString();
                Session["email"] = email.Text;
                Response.Redirect("admin_home.aspx");
            }
            else
            {
                Session["uid"] = dt.Rows[0].ItemArray.GetValue(0).ToString();
                Session["email"] = email.Text;
                Response.Redirect("home.aspx");
            }
        }
    }
}