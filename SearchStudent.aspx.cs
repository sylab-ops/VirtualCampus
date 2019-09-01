using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Configuration;

namespace VirtualCampus
{
    public partial class SearchStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            lblNotify.Text = "";
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Serverdatabase.mdf;Integrated Security=True;User Instance=True");

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            con.Open();
            string sql;
            sql = "select * from StudentRegistrations where Student_id ='" + txtSearchInput.Text + "'";
            cmd.CommandText = sql;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                lblNotify.ForeColor = System.Drawing.Color.Green;
                lblNotify.Text = "Searching Record.......Found! Below Are The Details";
                txtfname.Text = dr["FirstName"].ToString();
                txtmname.Text = dr["MiddleName"].ToString();
                txtlname.Text = dr["LastName"].ToString();
                txtftname.Text = dr["FatherName"].ToString();
                txtmtname.Text = dr["MotherName"].ToString();
                txtGuardian.Text = dr["GuardianName"].ToString();
                txtgender.Text = dr["Gender"].ToString();
                txtdob.Text = dr["DOB"].ToString();
                txtnationality.Text = dr["Nationality"].ToString();
                txtage.Text = dr["Age"].ToString();
                txtbg.Text = dr["BloodGroup"].ToString();
                txtcountry.Text = dr["Country"].ToString();
                txtstate.Text = dr["State"].ToString();
                txtcity.Text = dr["City"].ToString();
                txtpin.Text = dr["PinCode"].ToString();
                txtcontact.Text = dr["ContactNumber"].ToString();
                txtmobile.Text = dr["MobileNumber"].ToString();
                txtmail.Text = dr["E-Mail"].ToString();
                txtlinkedin.Text = dr["LinkedINID"].ToString();
                txtfb.Text = dr["facebookID"].ToString();
                txttwitter.Text = dr["TwitterID"].ToString();
                txtnaukri.Text = dr["NaukriID"].ToString();
                txtblog.Text = dr["BlogAddress"].ToString();
                txtrelationship.Text = dr["Relationship"].ToString();
                txtoccupation.Text = dr["Occupation"].ToString();
                txtannualincome.Text = dr["AnnualIncome"].ToString();
                txtdependents.Text = dr["Dependents"].ToString();
                txtphonehome.Text = dr["PhoneHome"].ToString();
                txtreligion.Text = dr["Religion"].ToString();
                txtcategory.Text = dr["Category"].ToString();
                txtcaste.Text = dr["Caste"].ToString();
                txtmothertongue.Text = dr["MotherTongue"].ToString();
            }
            else
            {
                lblNotify.ForeColor = System.Drawing.Color.IndianRed;
                lblNotify.Text = "Record Doesn't Exist Please Try Another Student ID!";
                Clear();
            }
        }

        protected void cmdEdit_Click(object sender, EventArgs e)

        {
            if (lblNotify.Text != "Searching Record.......Found! Below Are The Details")
            {
                string display = "Dear Admin Sorry For The Inconvenience! There Is No Record To Edit";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);
            }
            else if (txtSearchInput.Text == "" && lblNotify.Text == "")
            {
                    string display = "Sorry! This Operation Requires Student Record!";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);
                
            }
            else
            {
                lblNotify.ForeColor = System.Drawing.Color.HotPink;
                lblNotify.Text = "Editing Of Current Record Is In Progress.....";
                cmdEdit.Text = "Editing";
                Enabled();
            }
        }

        protected void cmdUpdate_Click(object sender, EventArgs e)
        {
            Disabled();
            cmdEdit.Text = "Edit This Record";
            lblNotify.ForeColor = System.Drawing.Color.Chocolate;
            lblNotify.Text = "Updating Record..Please Wait.......Database Updated Successfully";
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Serverdatabase.mdf;Integrated Security=True;User Instance=True");
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            con.Open();
            string sql;
            sql = "update StudentRegistrations SET FirstName='" + txtfname.Text + "',MiddleName='" + txtmname.Text + "',LastName='" + txtlname.Text + "',FatherName='" + txtftname.Text + "',MotherName='" + txtmtname.Text + "',GuardianName='" + txtGuardian.Text + "',Gender='" + txtgender.Text + "',DOB='" + txtdob.Text + "',Nationality='" + txtnationality.Text + "',Age='" + txtage.Text + "',BloodGroup='" + txtbg.Text + "',Country='" + txtcountry.Text + "',State='" + txtstate.Text + "',City='" + txtcity.Text + "',PinCode='" + txtpin.Text + "',ContactNumber='" + txtcontact.Text + "',MobileNumber='" + txtmobile.Text + "',LinkedINID='" + txtlinkedin.Text + "',FacebookID='" + txtfb.Text + "',TwitterID='" + txttwitter.Text + "',NaukriID='" + txtnaukri.Text + "',Relationship='" + txtrelationship.Text + "',Occupation='" + txtoccupation.Text + "',AnnualIncome='" + txtannualincome.Text + "',Dependents='" + txtdependents.Text + "',PhoneHome='" + txtphonehome.Text + "',Religion='" + txtreligion.Text + "',Category='" + txtcategory.Text + "',Caste='" + txtcaste.Text + "',MotherTongue='" + txtmothertongue.Text + "'  where Student_id='" + txtSearchInput.Text + "'"; 
            cmd.CommandText = sql;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                string d = DateTime.Now.ToString();
                string display = "Record Updated Failed!!please try again..thank you";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "','" + d + "');", true);
                
            }
            else
            {
                string d = DateTime.Now.ToString();
                string display = "Record Update Successfully At:" +d+   "Thank You!";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);
            }
        }

        protected void cmdDelete_Click(object sender, EventArgs e)
        {
            if (lblNotify.Text != "Searching Record.......Found! Below Are The Details")
            {
                string display = "Dear Admin Sorry For The Inconvenience! There Is No Such Record To Delete";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);
            }
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Serverdatabase.mdf;Integrated Security=True;User Instance=True");

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            con.Open();
            string sql, sql1,sql2;
            sql = "delete from StudentRegistrations where Student_id='" + txtSearchInput.Text + "'";
            sql1 = "delete from StudentUserAccounts where Student_id='" + txtSearchInput.Text + "'";
            sql2 = "delete from ScholarshipStat where Student_id='"+txtSearchInput.Text +"'";
            cmd.CommandText = sql + sql1 + sql2;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                //Do Nothing
            }
            else
            {
                lblNotify.ForeColor = System.Drawing.Color.Orange;
                lblNotify.Text = "Deletion Successfull";
                string d = DateTime.Now.ToString();
                string display = "Record Deleted Successfully At:" + d + "Thank You!";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);
                Clear();
            }


        }
        private void Enabled()
        {
            txtfname.Enabled = true;
            txtmname.Enabled = true;
            txtlname.Enabled = true;
            txtftname.Enabled = true;
            txtmtname.Enabled = true;
            txtGuardian.Enabled = true;
            txtgender.Enabled = true;
            txtdob.Enabled = true;
            txtnationality.Enabled = true;
            txtage.Enabled = true;
            txtbg.Enabled = true;
            txtcountry.Enabled = true;
            txtstate.Enabled = true;
            txtcity.Enabled = true;
            txtpin.Enabled = true;
            txtcontact.Enabled = true;
            txtmobile.Enabled = true;
            txtmail.Enabled = true;
            txtlinkedin.Enabled = true;
            txtfb.Enabled = true;
            txttwitter.Enabled = true;
            txtnaukri.Enabled = true;
            txtblog.Enabled = true;
            txtrelationship.Enabled = true;
            txtoccupation.Enabled = true;
            txtannualincome.Enabled = true;
            txtdependents.Enabled = true;
            txtphonehome.Enabled = true;
            txtreligion.Enabled = true;
            txtcategory.Enabled = true;
            txtcaste.Enabled = true;
            txtmothertongue.Enabled = true;
        }
        private void Disabled()
        {
            txtfname.Enabled = false;
            txtmname.Enabled = false;
            txtlname.Enabled = false;
            txtftname.Enabled = false;
            txtmtname.Enabled = false;
            txtGuardian.Enabled = false;
            txtgender.Enabled = false;
            txtdob.Enabled = false;
            txtnationality.Enabled = false;
            txtage.Enabled = false;
            txtbg.Enabled = false;
            txtcountry.Enabled = false;
            txtstate.Enabled = false;
            txtcity.Enabled = false;
            txtpin.Enabled = false;
            txtcontact.Enabled = false;
            txtmobile.Enabled = false;
            txtmail.Enabled = false;
            txtlinkedin.Enabled = false;
            txtfb.Enabled = false;
            txttwitter.Enabled = false;
            txtnaukri.Enabled = false;
            txtblog.Enabled = false;
            txtrelationship.Enabled = false;
            txtoccupation.Enabled = false;
            txtannualincome.Enabled = false;
            txtdependents.Enabled = false;
            txtphonehome.Enabled = false;
            txtreligion.Enabled = false;
            txtcategory.Enabled = false;
            txtcaste.Enabled = false;
            txtmothertongue.Enabled = false;
        }
        private void Clear()
        {
            txtfname.Text = "";
            txtmname.Text = "";
            txtlname.Text = "";
            txtftname.Text = "";
            txtmtname.Text = "";
            txtGuardian.Text = "";
            txtgender.Text = "";
            txtdob.Text = "";
            txtnationality.Text = "";
            txtage.Text = "";
            txtbg.Text = "";
            txtcountry.Text = "";
            txtstate.Text = "";
            txtcity.Text = "";
            txtpin.Text = "";
            txtcontact.Text = "";
            txtmobile.Text = "";
            txtmail.Text = "";
            txtlinkedin.Text = "";
            txtfb.Text = "";
            txttwitter.Text = "";
            txtnaukri.Text = "";
            txtblog.Text = "";
            txtrelationship.Text = "";
            txtoccupation.Text = "";
            txtannualincome.Text = "";
            txtdependents.Text = "";
            txtphonehome.Text = "";
            txtreligion.Text = "";
            txtcategory.Text = "";
            txtcaste.Text = "";
            txtmothertongue.Text = "";
        }
        protected void cmdExit_Click(object sender, EventArgs e)
        {
        Response.Redirect("Interface.aspx");
        }
    }
   
    
}