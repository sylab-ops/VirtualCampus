using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;
namespace VirtualCampus
{
    public partial class NotifyInbox : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                string str = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Serverdatabase.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True";
                SqlConnection con = new SqlConnection(str);
                if (e.CommandName == "Download")
                {
                    int index = Convert.ToInt32(e.CommandArgument);

                    GridViewRow row = GridView1.Rows[index];
                    string filename = row.Cells[1].Text.ToString();
                    string infile = Server.MapPath("~/Notifications/" + filename);
                    string outfile = @"D://" + filename;

                    File.Copy(infile, outfile);
                    lblDownDel.Text = "File Downloaded Successfully to D:// Drive...";
                }
            }
            catch (FileNotFoundException error)
            {
                lblDownDel.Text = "File Doesn't Exist!";
                Response.Write("Message From Manjunath :" + error);
            }
            catch(IOException io)
            {
                lblDownDel.Text = "Can't Download File! File Already Downloaded & Exists In The D:// Directory";
            }
        }
    }
}