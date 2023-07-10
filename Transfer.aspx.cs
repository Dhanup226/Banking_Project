using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Transfer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\Dhananjay\D\Internet Banking Project\Registration page.mdb");
        con.Open();

        OleDbCommand cmd = new OleDbCommand("insert into Transfer values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')", con);
        OleDbCommand cmd1 = new OleDbCommand("update Deposit set Amount=Amount-'" + TextBox3.Text + "' where AccountNumber='" + TextBox1.Text + "'", con);
        OleDbCommand cmd2 = new OleDbCommand("update Deposit set Amount=Amount +" + TextBox3.Text + " where AccountNumber='" + TextBox2.Text + "'", con);

        // int tcamount = Convert.ToInt32(TextBox3.Text);
        //int accnum = Convert.ToInt32(TextBox2.Text);

        // OleDbCommand cmd2 = new OleDbCommand("update Deposit set Amount=+'" + tcamount + "' where AccountNumber='" + accnum + "'", con);

        //OleDbCommand cmd3 = new OleDbCommand("update Deposit set Amount=TO_NUMBER(Amount + '" + TextBox3.Text + "') WHERE AccountNumber='" + TextBox2.Text + "'", con);
        //OleDbCommand cmd3 = new OleDbCommand("insert into Deposit(Amount) values(Amount + TextBox3.Text.Trim()",con);
        // OleDbCommand cmd2 = new OleDbCommand("select Amount + '" + TextBox3.Text + "' as Amount from Deposit", con);
        //OleDbCommand cmd2 = new OleDbCommand("update Deposit set Amount= Cast(Amount as int)+'" + TextBox3.Text + "' where AccountNumber='" + TextBox2.Text + "'", con);


        cmd.ExecuteNonQuery();
        cmd1.ExecuteNonQuery();
        cmd2.ExecuteNonQuery();
        //cmd3.ExecuteNonQuery();
        Label4.Text = "Money Tranfered Successfully";


        con.Close();
    }
}