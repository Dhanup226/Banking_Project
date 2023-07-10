using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Deposit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
    }

    protected void Button2_Click1(object sender, EventArgs e)
    {
        OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\\Dhananjay\\D\\Internet Banking Project\\Registration page.mdb");
        con.Open();
        OleDbCommand cmd = new OleDbCommand("insert into DepositRecords values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DateTime.Now + "')", con);

        //OleDbCommand cmd1 = new OleDbCommand("insert into Deposit values('" + TextBox1.Text + "','" + TextBox2.Text + "')", con);
        OleDbCommand cmd2 = new OleDbCommand("update Deposit set Amount=Amount +" + TextBox2.Text + " where AccountNumber='" + TextBox1.Text + "'", con);

        cmd.ExecuteNonQuery();
        //cmd1.ExecuteNonQuery();
        cmd2.ExecuteNonQuery();

        Label3.Text = "Money Deposited Successfully";

        con.Close();
    }
}