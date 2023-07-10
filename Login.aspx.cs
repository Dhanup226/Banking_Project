using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class Welcome : System.Web.UI.Page
{
    OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\\Dhananjay\\D\\Internet Banking Project\\Registration page.mdb");
    OleDbDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        /*OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\\Internet Banking Project\\Registration page.mdb");
        con.Open();
        OleDbCommand cmd = new OleDbCommand( "select * from Login where Username='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'");
        OleDbDataReader reader = null;
       reader=cmd.ExecuteReader();
        int count = 0;
        while(reader.Read())
        {
            count=count++;
        }
        if(count==1)
        {
            Response.Write("<script>'Username and Password is correct'</script>");
        }
        else if(count>1)
        {
            Response.Write("<script>'Duplicate Username and Password'</script>");
        }
        else 
        {
            //Response.Write("<script>'Username and Password is not correct'</script>");
            lblmsg.Text = "Username and Password is not correct";
        }
        con.Close();*/
        con.Open();
        OleDbCommand cmd1 = new OleDbCommand("select * from login ", con);
        cmd1.ExecuteNonQuery();
        DataTable dt = new DataTable();
        OleDbDataAdapter da = new OleDbDataAdapter(cmd1);
        da.Fill(dt);
        foreach (DataRow dr in dt.Rows)
        {


            if (dr["Username"].ToString() == TextBox1.Text && dr["Password"].ToString() == TextBox2.Text)
            {
                Session["Username"] = dr["Username"].ToString();
                Session["u_id"] = dr["u_id"].ToString();
                Response.Redirect("Home.aspx");
                //Response.Redirect("Admin.aspx");
            }
            else
            {
                Label3.Text = "Wrong UseName Or Password...!";
                Label3.ForeColor = System.Drawing.Color.Red;

            }

        }



        /* OleDbCommand cmd = new OleDbCommand("select * from registration", con);
         OleDbDataReader dr1 = cmd.ExecuteReader();
         while (dr1.Read())
         {
             if (dr1[1].ToString() == TextBox1.Text && dr1[7].ToString() == TextBox2.Text)
             {
                 Session["u_id"] = dr1["u_id"].ToString();
                 Session["Username"] = dr1["Username"].ToString();
                 Response.Redirect("Home.aspx");
             }
            else
             {
                 if (dr1[1].ToString() != TextBox1.Text && dr1[7].ToString() != TextBox2.Text)
                 {
                     lblmsg.Text = "Wrong UserName / Password OR Register If You Are New User....";
                     lblmsg.ForeColor = System.Drawing.Color.Red;

                 }


             }
         }*/

        TextBox1.Text = "";
        TextBox1.Text = "";
        Label3.Text = "Login Sccessfully";


        con.Close();

        
    }
}