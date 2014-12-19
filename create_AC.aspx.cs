using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;

public partial class create_AC : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        { 
        for (int i = 1970; i <= 2013; i++)
            year.Items.Add(new ListItem(i.ToString(),i.ToString()));		 
        }
    }
    protected void SignUp_Click(object sender, EventArgs e)
    {
        talk2it tq = new talk2it();
        Random r = new Random();
        Random random = new Random();
        string r1="";
        int i;
        for (i = 1; i < 11; i++)
        {
            r1 += random.Next(0, 9).ToString();
        }
      //  Response.Write(r1);
        string date1 = d1.SelectedValue + "-" + month.SelectedValue + "-" + year.SelectedValue;
        string e1 = email.Text;
        ////////////////////
       /* UnicodeEncoding uEncode = new UnicodeEncoding();
        byte[] bytPassword = uEncode.GetBytes(pass1.Text);
        SHA512Managed sha = new SHA512Managed();
        byte[] hash = sha.ComputeHash(bytPassword);
        string pass=Convert.ToBase64String(hash);
        *//////////////
        if (pass1.Text != pass2.Text)
        {
            notify.Text = "Password do not match";
            notify.ForeColor = System.Drawing.Color.Red;
        }
        else
            if (notify.Text == "")
            {
                if (gender.SelectedValue == "Male")
                {
                    tq.dodml("INSERT INTO users_tb(fname,lname,email,password,bdate,gender,image,status,a_code,isActive) VALUES('" + fname.Text + "','" + lname.Text + "','" + email.Text + "','" + pass1.Text + "'," + date1 + ",'M','default.png',0,'" + r1 + "',0)");
                    notify.Text = "User added successfully";
                    notify.ForeColor = System.Drawing.Color.Green;
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Thank You For Joining IT...');", true); 
                    Response.Redirect("login.aspx");
                }
                else
                {
                    tq.dodml("INSERT INTO users_tb(fname,lname,email,password,bdate,gender,image,status,a_code,isActive) VALUES('" + fname.Text + "','" + lname.Text + "','" + email.Text + "','" + pass1.Text + "'," + date1 + ",'F','default.png',0,'" + r1 + "',0)");
                    notify.Text = "User added successfully";
                    notify.ForeColor = System.Drawing.Color.Green;
                    Response.Write("<script>alert('Thank you for Joining to IT')</script>");
                    Response.Redirect("login.aspx");
                }
            }    
        cleardata();
    }
    public void cleardata()
    {
        fname.Text = "";
        lname.Text = "";
        email.Text = "";
        pass1.Text = "";
        pass2.Text = "";
        year.SelectedIndex = 0;
        gender.ClearSelection();
        //year.Text = "";
    }
}