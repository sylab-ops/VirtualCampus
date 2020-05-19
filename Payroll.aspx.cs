using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace VirtualCampus
{
    public partial class Payroll : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        public class ReadData
        {
            public bool FindString(string myStrings)
            {
                SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Serverdatabase.mdf;Integrated Security=True;User Instance=True");
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "FindString";
                cmd.Parameters.AddWithValue("@MyString", myStrings);
                try
                {
                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        return true;
                    }
                }
                catch (Exception ex)
                {
                   
                }
                finally
                {
                    if (con.State == ConnectionState.Open)
                        con.Close();
                }
                return false;
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                if (lblEmpID.Text == "" && lblEmpName.Text == "")
                {
                    string display = "Please Select Emplyee From The List to Calculate Salary Breakups!";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);
                    Button2.Enabled = false;
                }


                string myString = lblName.Text;
                ReadData r = new ReadData();
                if (r.FindString(myString) == true)
                {

                    lblWhatHappened.ForeColor = System.Drawing.Color.Red;
                    lblWhatHappened.Text = "Record Already Exists";
                    Button2.Enabled = false;
                    Button3.Enabled = false;
                }
                else
                {
                    lblWhatHappened.ForeColor = System.Drawing.Color.DarkGreen;
                    lblWhatHappened.Text = "Available To Record!";
                    Button2.Enabled = true;
                    Button3.Enabled = true;
                    Button1.Enabled = false;
                    Button2.Enabled = true;
                    string empname = lblName.Text;
                    string empno = lblID.Text;
                    float basic = Convert.ToInt32(txtCalculateSalary.Text);
                    float hra = Convert.ToInt32(basic * 0.4);
                    float da = Convert.ToInt32(basic * 0.6);
                    float gross = Convert.ToInt32(basic + hra + da);
                    float pf = Convert.ToInt32(gross * 0.13);
                    float tax = Convert.ToInt32(gross * 0.2);
                    float deductions = Convert.ToInt32(pf + tax);
                    float netsalary = Convert.ToInt32(gross - deductions);


                    lblEmpBasic.Text = basic.ToString(); ;
                    lblHRA.Text = hra.ToString();
                    lblDA.Text = da.ToString();
                    lblGross.Text = gross.ToString();
                    lblPF.Text = pf.ToString();
                    lblTax.Text = tax.ToString();
                    lblDeductions.Text = deductions.ToString();
                    lblTotal.Text = netsalary.ToString();
                }
            }
            catch (SqlException myex)
            {
                
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myex + "');", true);
                Button2.Enabled = false;
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (Button1.Enabled == true)
            {
                Button1.Enabled = false;
            }
            else if(Button1.Enabled==false)
            {
                Button1.Enabled = true;
            }
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

            try
            {
                
                Button1.Enabled = true;
                Button2.Enabled = false;
                string jesus = ListBox1.SelectedItem.Value;
                SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Serverdatabase.mdf;Integrated Security=True;User Instance=True");
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                string sql;
                sql = "select * from lectureReg where Lecture_id ='" + jesus + "'";
                cmd.CommandText = sql;
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    
                    lblID.Text = dr["Lecture_id"].ToString();
                    lblName.Text = dr["Lecturer_Name"].ToString();
                    lblDept.Text = dr["Experience_Stream"].ToString();
                    lblSubject.Text = dr["Subject"].ToString();
                    lblEmpID.Text = lblID.Text;
                    lblEmpName.Text = lblName.Text;
                }
                else
                {
                    dr.Close();
                    Button1.Enabled = false;
                    Button2.Enabled = false;
                    lblID.Text = "";
                    lblName.Text = "";
                    lblDept.Text = "";
                    lblSubject.Text = "";
                }
            }

            catch (IndexOutOfRangeException ex)
            {
                ListBox1.ClearSelection();
                Response.Write("Message From Manjunath:" + ex);
            }
            catch (SqlException sql)
            {
                Response.Write("Message From Manjunath:"+sql);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
               
                if (lblID.Text == "" && lblName.Text == "")
                {
                    string display = "Please Select Emplyee From The List to Assign Salary";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);
                    Button2.Enabled = false;
                }
                else if (lblEmpName.Text == "" && lblEmpName.Text == "")
                {
                    string display = "Please Select Emplyee From The List to Assign Salary";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);
                    Button2.Enabled = false;
                }
                else
                {

                    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Serverdatabase.mdf;Integrated Security=True;User Instance=True");
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;
                    con.Open();
                    cmd.CommandText = "insert into Salarydatabase([EmployeeID],[EmployeeName],[Department],[Subject],[BasicSalary],[HRA],[DA],[GrossSalary],[PF],[Tax],[Deductions],[NetSalary],[DateTimeOfTransaction]) values('" + lblEmpID.Text + "','" + lblEmpName.Text + "','" + lblDept.Text + "','" + lblSubject.Text + "','" + lblEmpBasic.Text + "','" + lblHRA.Text + "','" + lblDA.Text + "','" + lblGross.Text + "','" + lblPF.Text + "','" + lblTax.Text + "','" + lblDeductions.Text + "','" + lblTotal.Text + "','" + DateTime.Now.ToString() + "')";
                    cmd.ExecuteNonQuery();
                    lblWhatHappened.Text = "Transaction Success";
                    cmd.CommandText = "insert into PayrollEntries([EmployeeID],[EmployeeName],[Department],[NetSalary],[TransactionDate],[TransactionTime],[Status]) values('" + lblEmpID.Text + "','" + lblEmpName.Text + "','" + lblDept.Text + "','" + lblTotal.Text + "','" + DateTime.Today.ToShortDateString() + "','" + DateTime.Now.ToLocalTime() +"','" + lblWhatHappened.Text + "')";
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

        protected void Button4_Click(object sender, EventArgs e)
        {
            ListBox1.ClearSelection();
            Response.Redirect("AccountsHome.aspx");
        }
    }
}
     