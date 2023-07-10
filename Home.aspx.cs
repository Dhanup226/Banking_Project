using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Create AC.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Deposit.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Transfer.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Contact us.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("Check Balance.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("Withdraw.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("About us.aspx");
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        Response.Redirect("Logout.aspx");
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        Response.Redirect("Activity Page.aspx");
    }
}