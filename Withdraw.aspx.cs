using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class Withdraw : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\\Dhananjay\\D\\Internet Banking Project\\Registration page.mdb");
        con.Open();
        OleDbCommand cmd3 = new OleDbCommand("insert into Withdraw values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DateTime.Now + "')", con);
        OleDbCommand cmd4 = new OleDbCommand("update Deposit set Amount=Amount-'" + TextBox2.Text + "' where AccountNumber='" + TextBox1.Text + "'", con);

        // OleDbCommand cmd2 = new OleDbCommand("update Deposit set Amount=(Amount)+('" + TextBox3.Text + "') where AccountNumber='" + TextBox2.Text + "'", con);


        //OleDbCommand cmd = new OleDbCommand("update Deposit set amount=(amount-'" + TextBox3.Text + "') where AccountNumber='" + TextBox1.Text + "'",con);
        //OleDbCommand cmd1 = new OleDbCommand("insert into Transfer values('" + TextBox1.Text + "')", con);
        cmd3.ExecuteNonQuery();
        cmd4.ExecuteNonQuery();
        // cmd2.ExecuteNonQuery();

        Label3.Text = "Money Withdrawal Successfully";
        con.Close();
    }
}