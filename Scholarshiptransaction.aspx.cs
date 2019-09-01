using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace VirtualCampus
{
    public partial class Scholarshiptransaction : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<string> ls = new List<string>();
                ls.Add("--Select--");
                ls.Add("Documents Pending");
                ls.Add("Documents Forwarded");
                ddlstatus.DataSource = ls;
                ddlstatus.DataBind();

                List<string> list = new List<string>();
                list.Add("--Select--");
                list.Add("Cheque Received");
                list.Add("Cheque Not Received");
                ddlDispenseStatus.DataSource = list;
                ddlDispenseStatus.DataBind();

            }
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {

                
                string jesus = ListBox1.SelectedItem.Value;
                SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Serverdatabase.mdf;Integrated Security=True;User Instance=True");
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                string sql;
                sql = "select * from ScholarshipStat where Student_id ='" + jesus + "'";
                cmd.CommandText = sql;
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {

                    lblid.Text = dr["Student_id"].ToString();
                    lblname.Text = dr["Student_name"].ToString();
                    lblclass.Text = dr["Student_Class"].ToString();
                    lblsemester.Text = dr["Student_Semester"].ToString();
                    lblCaste.Text = dr["Student_Caste"].ToString();
                    lblSubCaste.Text = dr["Student_SubCaste"].ToString();
                    lblStatus.Text = dr["Status"].ToString();
                    lblextra.BackColor = System.Drawing.Color.LightGreen;
                    lblextra.ForeColor = System.Drawing.Color.Blue;
                    lblextra.Text = "Connection Successfully Established";
                    cmdSave.Enabled = true;
                }
                else
                {
                    lblid.Text = "";
                    lblname.Text = "";
                    lblclass.Text = "";
                    lblsemester.Text = "";
                    lblCaste.Text = "";
                    lblSubCaste.Text = "";
                    lblStatus.Text = "";
                    lblextra.BackColor = System.Drawing.Color.Yellow;
                    lblextra.ForeColor = System.Drawing.Color.Red;
                    lblextra.Text = "Connection Not Successful!";
                    cmdSave.Enabled = false;
                }
            }

            catch (IndexOutOfRangeException ex)
            {
                ListBox1.ClearSelection();
                lblWhatHappened.ForeColor = System.Drawing.Color.Red;
                lblWhatHappened.Text = "Error Occured! Can't Find The Index Range!";
            }
            catch (SqlException sql)
            {
                ListBox1.ClearSelection();
                lblWhatHappened.ForeColor = System.Drawing.Color.DarkGreen;
                lblWhatHappened.Text = "Error Occured! Can't Retrieve data!";
            }
        }

        protected void YesNo_CheckedChanged(object sender, EventArgs e)
        {
            lblSC.Visible =false;
            HyperLink1.Visible = false;
            lblST.Visible = false;
            HyperLink2.Visible = false;
            lblOBC.Visible = false;
            HyperLink3.Visible = false;
            Label3.Visible = true;
            Label13.Visible = true;
            Label14.Visible = true;
            Label15.Visible = true;
            Label16.Visible = true;
            Label17.Visible=true;
            Label18.Visible=true;
            Label19.Visible=true;
            txtamtRecDate.Visible = true;
            txtregno.Visible = true;
            txtregdate.Visible = true;
            txtpaiddate.Visible = true;
            txtamtreceived.Visible = true;
            ddlDispenseStatus.Visible = true;
            ddlstatus.Visible = true;
            cmdSave.Visible = true;
            cmdReset.Visible = true;
            cmdexit.Visible = true;

        }

        protected void YesNo1_CheckedChanged(object sender, EventArgs e)
        {
            lblSC.Visible = true;
            HyperLink1.Visible = true;
            lblST.Visible = true;
            HyperLink2.Visible = true;
            lblOBC.Visible = true;
            HyperLink3.Visible = true;
            Label3.Visible = false;
            txtamtRecDate.Visible = false;
            Label13.Visible = false;
            Label14.Visible = false;
            Label15.Visible = false;
            Label16.Visible = false;
            Label17.Visible=false;
            Label18.Visible=false;
            Label19.Visible=false;
            txtregno.Visible = false;
            txtregdate.Visible = false;
            txtpaiddate.Visible = false;
            txtamtreceived.Visible = false;
            ddlDispenseStatus.Visible = false;
            ddlstatus.Visible = false;
            cmdSave.Visible = false;
            cmdReset.Visible = false;
            cmdexit.Visible = false;
        }

        protected void ddlstatus_SelectedIndexChanged(object sender, EventArgs e)
        {
            List<string> ls2 = new List<string>();
            ls2.Clear();
            ls2.Add("--Select--");
            switch (ddlstatus.Text)
            {

                case "Documents Pending":
                    ls2.Add("Document Yet To Collect");
                    ls2.Add("Document Collected");
                    break;

                case "Documents Forwarded":
                    ls2.Add("Cheque Received");
                    ls2.Add("Cheque Not Received");
                    break;
                
            }
            ddlDispenseStatus.DataSource = ls2;
            ddlDispenseStatus.DataBind();
        }

        protected void cmdSave_Click(object sender, EventArgs e)
        {
            try
            {

                if (lblid.Text == "" && lblname.Text == "")
                {
                    string display = "Please Select Student From The List!";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);
                    cmdSave.Enabled = false;
                }
                else if (lblclass.Text=="" && lblsemester.Text =="")
                {
                    string display = "Select Student First!";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);
                    cmdSave.Enabled = false;
                }
                else
                {
          
                    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Serverdatabase.mdf;Integrated Security=True;User Instance=True");
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;
                    con.Open();
                    cmd.CommandText = "update ScholarshipStat SET Status='" + ddlDispenseStatus.Text + "', ScholarshipRegNo='" + txtregno.Text + "' where Student_id='" + lblid.Text + "' and Student_name='" + lblname.Text + "' and Student_Class='" + lblclass.Text + "'";
                    cmd.ExecuteNonQuery();
                    cmd.CommandText = "insert into ScholarshipEntries([Student_id],[StudentName],[ScholarshipNumber],[Status],[StatusReason],[DateTime]) values('" + lblid.Text + "','" + lblname.Text + "','" + txtregno.Text + "','" + ddlstatus.Text + "','" +ddlDispenseStatus.Text+ "','" + DateTime.Now.ToString() + "')";
                    cmd.ExecuteNonQuery();
                    cmd.CommandText = "insert into ScholarshipUpdateData([Student_id],[ScholarshipRegNo],[DateOfRegister],[ApplicationStatus],[ScholarshipStatus],[AmountRecievedDate],[AmountReceived],[DateOfScholarshipPaid]) values('" + lblid.Text + "','" + txtregno.Text + "','" + txtregdate.Text + "','" + ddlstatus.Text + "','" + ddlDispenseStatus.Text + "','"+txtamtRecDate.Text+"','" + txtamtreceived.Text + "','" + txtpaiddate.Text + "')";
                    cmd.ExecuteNonQuery();
                    SqlDataReader dr = cmd.ExecuteReader();
                    lblWhatHappened.Text = "Transaction Success";
                    dr.Close();
                    con.Close();
                }
            }
            catch (SqlException exe)
            {
                lblWhatHappened.ForeColor = System.Drawing.Color.Red;
                lblWhatHappened.Text = "Transaction Failed!";
                Response.Write("Message From Manjunath:" + exe);
            }
        }

        protected void cmdReset_Click(object sender, EventArgs e)
        {
            txtregno.Text = "";
            txtamtRecDate.Text= "";
            txtamtreceived.Text = "";
            txtpaiddate.Text = "";
            txtregdate.Text = "";
        }

        protected void cmdexit_Click(object sender, EventArgs e)
        {
            Response.Redirect("AccountsHome.aspx");
        }
      
    }
}