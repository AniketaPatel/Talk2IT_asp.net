using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class activate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string email = Request.QueryString["email"].ToString();
            string key = Request.QueryString["key"].ToString();
            //Amount.Value = Request.QueryString["lr_amnt"].ToString();
            //SaveLocalHistory();
            //Divmessage.Visible = true;
            Response.Write(email);
            Response.Write(key);
        }
    }
}