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
    public partial class StudentFeePay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            cmdpayfee.Enabled = false;
        }

        protected void cmdClear_Click(object sender, EventArgs e)
        {
            txtpayingfee.Text = "";
            txtRpayingfee.Text = "";
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                txtpayingfee.Text = "";
                txtRpayingfee.Text = "";
                string jesus = ListBox1.SelectedItem.Value;
                SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Serverdatabase.mdf;Integrated Security=True;User Instance=True");
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                string sql;
                sql = "select * from StudentRegistrations where Student_id ='" + jesus + "'";
                cmd.CommandText = sql;
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    lblWhatHappened.Text = "Student record Found!";
                    lblID.Text = dr["Student_id"].ToString();
                    lblName.Text = dr["FirstName"].ToString();
                    lblClass.Text = dr["Course"].ToString();
                    lblSection.Text = dr["Semester"].ToString();
                    lblRollNo.Text = dr["RollNo"].ToString();
                    txttotfee.Text = dr["TotalFee"].ToString();
                    txtpaidfee.Text = dr["PayingFee"].ToString();
                    txtremfee.Text = dr["RemainingFee"].ToString();
                }
                else
                {
                    dr.Close();
                    lblID.Text = "";
                    lblName.Text = "";
                    lblClass.Text = "";
                    lblSection.Text = "";
                    lblRollNo.Text = "";
                    lblWhatHappened.Text = "Student Record Doesn't Exist!";
                }
            }

            catch (IndexOutOfRangeException ex)
            {
                ListBox1.ClearSelection();
                Response.Write("Message From Manjunath:" + ex);
            }
            catch (SqlException sql)
            {
                Response.Write("Message From Manjunath:" + sql);
            }
        }

        protected void cmdpayfee_Click(object sender, EventArgs e)
        {
            

            if (txtpayingfee.Text != txtRpayingfee.Text)
            {
                string display = "Paying Fee & Re-Enter paying Fee Doesn't Match!";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);
            }
            else if (txtpayingfee.Text == "")
            {
                string display1 = "Please Enter paying Fee Inorder To Register";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display1 + "');", true);
            }
            else if (txtRpayingfee.Text == "")
            {
                string display2 = "Please Re-Enter paying Fee Inorder To Register";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display2 + "');", true);
            }
           
            else
            {
                try
                {

                    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Serverdatabase.mdf;Integrated Security=True;User Instance=True");
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;
                    con.Open();
                    cmd.CommandText= "update StudentRegistrations SET TotalFee='" + txttotfee.Text + "',RemainingFee='" + txtremfee.Text + "',PayingFee='" + txtRpayingfee.Text + "' where Student_id='" + lblID.Text + "'";
                    cmd.ExecuteNonQuery();
                    cmd.CommandText = "insert into StudentFeeEntries([Student_id],[Student_Name],[Class],[Section],[RollNo],[PaidFee],[RemainingFee],[DateTime]) values('" + lblID.Text + "','" + lblName.Text + "','" + lblClass.Text + "','" + lblSection.Text + "','" + lblRollNo.Text + "','" + txtRpayingfee.Text + "','" + txtremfee.Text + "','"+DateTime.Now.ToString()+"')";
                    cmd.ExecuteNonQuery();
                    SqlDataReader dr1 = cmd.ExecuteReader();
                    if (dr1.Read())
                    {
                        string d = DateTime.Now.ToString();
                        string display = "Record Updated Failed!!please try again..thank you";
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "','" + d + "');", true);
                        lblTransStatus.ForeColor = System.Drawing.Color.Red;
                        lblTransStatus.Text = "Transaction Failed!!! Try Again Later";

                    }
                    else
                    {
                        string d2 = DateTime.Now.ToString();
                        string display2 = "Record Update Successfully At:" + d2 + "Thank You!";
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display2 + "');", true);
                        lblTransStatus.ForeColor = System.Drawing.Color.DarkGreen;
                        lblTransStatus.Text = "Transaction Successful! Thank You For Using Service";
                        txtpayingfee.Text = "";
                        txtRpayingfee.Text = "";
                    }

                }
                catch (SqlException sql)
                {
                    lblTransStatus.Text = "Service Stopped!! Server Down...Sorry Regretted";
                }
                catch (FormatException frm)
                {
                    lblTransStatus.Text = "Format Exception!!Service Stopped";
                }
            }
        }

        protected void cmdcalculate_Click(object sender, EventArgs e)
        {
            try
            {
                decimal i = decimal.Parse(txtRpayingfee.Text);
                decimal j = decimal.Parse(txtremfee.Text);

                if (txtpayingfee.Text.ToString() != txtRpayingfee.Text.ToString())
                {
                    lblTransStatus.Text = "Paying Fee Doesn't Match Re-Enter Fee!";
                }
                else if (i>j)
                       {
                string display2 = "Paying Fee Is Greater Than Remaining Fee! Please Check & Calculate";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display2 + "');", true);
                     }
                else
                {
                    txtremfee.Text = (Convert.ToDecimal(txtremfee.Text) - Convert.ToDecimal(txtpayingfee.Text)).ToString();
                    lblTransStatus.Text = "Calculated Successfully! You Can Update Now";
                    cmdpayfee.Enabled = true;
                }

            }
            catch (FormatException format)
            {
                lblTransStatus.Text = "Can't Update...Student Might Not Selected or You Might Missing Remaining Fee!";
            }
        }

    }

}