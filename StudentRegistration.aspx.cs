using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace VirtualCampus
{
    public partial class StudentRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtpayingfee.Attributes.Add("onkeypress","return NumberOnly()");
            txtDOA.Text = DateTime.Now.ToString();
            txttotfee.Text = "40000";
            if (!IsPostBack)
            {
                List<string> ls = new List<string>();
                ls.Add("--Select--");
                ls.Add("India");
                ls.Add("USA");
                ls.Add("UK");
                ls.Add("Japan");
                ls.Add("Nigeria");
                ls.Add("Africa");
                DDLCountry.DataSource = ls;
                DDLCountry.DataBind();

                List<string> list = new List<string>();
                list.Add("--Select--");
                list.Add("Hindu");
                list.Add("Muslim");
                list.Add("Christian");
                list.Add("Sikh");
                list.Add("Buddhism");
                list.Add("Anglo Indian");
                DDLReligion.DataSource = list;
                DDLReligion.DataBind();

                List<string> lsCourse = new List<string>();
                lsCourse.Add("--Select--");
                lsCourse.Add("BCA");
                lsCourse.Add("BBM");
                lsCourse.Add("B.Com");
                lsCourse.Add("B.A");
                DDLCourse.DataSource = lsCourse;
                DDLCourse.DataBind();
            }

        }

        protected void cmdRegister_Click(object sender, EventArgs e)
        {
            try
            {

                string dt1 = "" + DDLDay.SelectedValue.ToString() + "/" + DDLMonth.SelectedValue.ToString() + "/" + DDLYear.SelectedValue.ToString() + "";

                DateTime dt = Convert.ToDateTime(dt1);

                string country = DDLCountry.SelectedValue.ToString();
                string state = DDLState.SelectedValue.ToString();
                string city = DDLCity.SelectedValue.ToString();
                string Relationship = DDLRelationship.SelectedValue.ToString();
                string Occupation = DDLOccupation.SelectedValue.ToString();
                string Dependents = DDLDependents.SelectedValue.ToString();
                string Religion = DDLReligion.SelectedValue.ToString();
                string Category = DDLCategory.SelectedValue.ToString();
                string Caste = DDLCaste.SelectedValue.ToString();
                string MotherTongue = DDLMotherTongue.SelectedValue.ToString();
                string promo = DDLPromo.SelectedValue.ToString();
                string Course = DDLCourse.SelectedValue.ToString();
                string Sem = DDLSemester.SelectedValue.ToString();
                string Section = DDLSection.SelectedValue.ToString();
                string Gender = "";
                if (RadioButton1.Checked)
                {
                    Gender = RadioButton1.Text;
                }
                else if (RadioButton2.Checked)
                {
                    Gender = RadioButton2.Text;
                }
                else if (RadioButton3.Checked)
                {
                    Gender = RadioButton3.Text;
                }


                SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Serverdatabase.mdf;Integrated Security=True;User Instance=True");
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                con.Open();
                cmd.CommandText = "insert into StudentRegistrations([FirstName],[MiddleName],[LastName],[MotherName],[FatherName],[GuardianName],[Gender],[BirthPlace],[DOB],[Nationality],[Age],[BloodGroup],[Country],[State],[City],[PinCode],[ContactNumber],[MobileNumber],[E-Mail],[LinkedINID],[FacebookID],[TwitterID],[NaukriID],[BlogAddress],[Relationship],[Occupation],[AnnualIncome],[Dependents],[PhoneHome],[Religion],[Category],[Caste],[MotherTongue],[CollegeName],[CollegeAddress],[PCourse],[PYearPassed],[Promo],[DateOfAdmission],[Course],[Semester],[Section],[RollNo],[TotalFee],[RemainingFee],[PayingFee],[PermanentAddress],[Username],[Password]) values('" + txtfname.Text + "','" + txtmname.Text + "','" + txtlname.Text + "','" + txtmtname.Text + "','" + txtftname.Text + "','" + txtgname.Text + "','" + Gender + "','" + txtbirthPlace.Text + "','" + dt + "','" + txtNationality.Text + "','" + txtAge.Text + "','" + txtBloodGroup.Text + "','" + country + "','" + state + "','" + city + "','" + txtpin.Text + "','" + txtContact.Text + "','" + txtMobile.Text + "','" + txtMail.Text + "','" + txtfbID.Text + "','" + txtLinkedIN.Text + "','" + txtTwitterID.Text + "','" + txtNaukriID.Text + "','" + txtBlogAddress.Text + "','" + Relationship + "','" + Occupation + "','" + DDLAnnualIncome.SelectedValue + "','" + Dependents + "','" + txtPhoneHome.Text + "','" + Religion + "','" + Category + "','" + Caste + "','" + MotherTongue + "','" + txtCollegeName.Text + "','" + txtAddress.Text + "','" + txtPCourse.Text + "','" + txtPYear.Text + "','" + promo + "','" + DateTime.Now.ToString() + "','" + Course + "','" + Sem + "','" + Section + "','" + txtrollno.Text + "','" + txttotfee.Text + "','" + txtremfee.Text + "','" + txtpayingfee.Text + "','" + txtAddress.Text + "','" + txtUsername.Text + "','" + txtPassword.Text + "')";
                cmd.ExecuteNonQuery();
                cmd.CommandText = "select * from StudentRegistrations where FirstName ='" + txtfname.Text + "'";
                cmd.ExecuteNonQuery();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    lblRegID.Text = dr["Student_id"].ToString();
                    string d = DateTime.Now.ToString();
                    string display = "Congratulations! Student Registered At   :  " + d + " Student ID is :" + lblRegID.Text + "Status :" + lblRegistration.Text;
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);
                }
                dr.Close();
                if (DDLCategory.SelectedValue != "General")
                {
                    cmd.CommandText = "insert into ScholarshipStat([Student_id],[Student_name],[Student_Class],[Student_Semester],[Student_Caste],[Student_SubCaste]) values('" + lblRegID.Text + "','" + txtfname.Text + "','" + Course + "','" + DDLSemester.SelectedValue + "','" + Category + "','" + Caste + "')";
                    cmd.ExecuteNonQuery();
                    cmd.CommandText = "insert into StudentUserAccounts([Student_id],[Username],[Password]) values('" + lblRegID.Text + "','" + txtUsername.Text + "','" + txtPassword.Text + "')";
                    cmd.ExecuteNonQuery();
                    lblRegistration.Text = "Registered Successfully(Scholarship Eligible)";
                    string d = DateTime.Now.ToString();
                    string display = "Congratulations! Student Registered At   :  " + d + " Student ID is :" + lblRegID.Text + "Status :" + lblRegistration.Text;
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);

                    txtfname.Text = "";
                    txtmname.Text = "";
                    txtlname.Text = "";
                    RadioButton1.Checked = false;
                    RadioButton2.Checked = false;
                    RadioButton3.Checked = false;
                    txtbirthPlace.Text = "";
                    txtmtname.Text = "";
                    txtftname.Text = "";
                    txtgname.Text = "";
                    DDLDay.SelectedValue = "";
                    txtNationality.Text = "";
                    txtAge.Text = "";
                    txtBloodGroup.Text = "";
                    city = "";
                    txtpin.Text = "";
                    txtContact.Text = "";
                    txtMobile.Text = "";
                    txtMail.Text = "";
                    txtLinkedIN.Text = "";
                    txtNaukriID.Text = "";
                    txtBlogAddress.Text = "";
                    txtTwitterID.Text = "";
                    txtfbID.Text = "";
                    Relationship = "";
                    Occupation = "";
                    DDLAnnualIncome.SelectedValue = "";
                    DDLDependents.SelectedValue = "";
                    txtPhoneHome.Text = "";
                    Religion = "";
                    Category = "";
                    Caste = "";
                    MotherTongue = "";
                    txtCollegeName.Text = "";
                    txtPAddress.Text = "";
                    txtPCourse.Text = "";
                    txtPYear.Text = "";
                    promo = "";
                    txtDOA.Text = "";
                    Course = "";
                    Sem = "";
                    Section = "";
                    txtrollno.Text = "";
                    txttotfee.Text = "";
                    txtremfee.Text = "";
                    txtpayingfee.Text = "";
                    txtAddress.Text = "";
                    txtUsername.Text = "";
                    txtPassword.Text = "";
                }
                else
                    lblRegistration.Text = "Registered Successfully(Non-Scholarship)";
                con.Close();
                txtfname.Text = "";
                txtmname.Text = "";
                txtlname.Text = "";
                RadioButton1.Checked = false;
                RadioButton2.Checked = false;
                RadioButton3.Checked = false;
                txtbirthPlace.Text = "";
                txtmtname.Text = "";
                txtftname.Text = "";
                txtgname.Text = "";
                DDLDay.SelectedValue = "";
                DDLMonth.SelectedValue = "";
                txtNationality.Text = "";
                txtAge.Text = "";
                txtBloodGroup.Text = "";
                txtpin.Text = "";
                txtContact.Text = "";
                txtMobile.Text = "";
                txtMail.Text = "";
                txtLinkedIN.Text = "";
                txtNaukriID.Text = "";
                txtBlogAddress.Text = "";
                txtTwitterID.Text = "";
                txtfbID.Text = "";
                Relationship = "";
                Occupation = "";
                DDLAnnualIncome.SelectedValue = "";
                Dependents = "";
                txtPhoneHome.Text = "";
                Religion = "";
                Category = "";
                Caste = "";
                MotherTongue = "";
                txtCollegeName.Text = "";
                txtPAddress.Text = "";
                txtPCourse.Text = "";
                txtPYear.Text = "";
                promo = "";
                txtDOA.Text = "";
                Course = "";
                Sem = "";
                Section = "";
                txtrollno.Text = "";
                txttotfee.Text = "";
                txtremfee.Text = "";
                txtpayingfee.Text = "";
                txtAddress.Text = "";
                txtUsername.Text = "";
                txtPassword.Text = "";
                string d1 = DateTime.Now.ToString();
                string display1 = "Congratulations! Student Registered At   \n:  " + d1 + " \nStudent ID is :" + lblRegID.Text + "Status :" + lblRegistration.Text;
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display1 + "');", true);
            }
            catch (SqlException ex)
            {
                lblRegistration.Text = "Connection Error!Retry";
            }
        }

        protected void cmdFeecalc_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtpayingfee.Text == "")
                {
                    string display = "Please Enter paying Fee Inorder To Register";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);
                }
                else
                {
                    txtremfee.Text = (Convert.ToDecimal(txttotfee.Text) - Convert.ToDecimal(txtpayingfee.Text)).ToString();
                }
            }
            catch (FormatException fex)
            {
                string display = "Fee Must Be In Indian Rupees Or Numbers!Other Characters Are Not Allowed";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);
            }
        }

        protected void cmdReset_Click(object sender, EventArgs e)
        {
            txtfname.Text = "";
        }
    
        protected void cmdExit_Click(object sender, EventArgs e)
        {
            Response.Redirect("interface.aspx");
        }

        protected void cmdFeecalc_Click1(object sender, EventArgs e)
        {
            txtremfee.Text = (Convert.ToDecimal(txttotfee.Text) - Convert.ToDecimal(txtpayingfee.Text)).ToString();
        }

        protected void DDLCountry_SelectedIndexChanged(object sender, EventArgs e)
        {

            List<string> ls = new List<string>();
            ls.Clear();
            ls.Add("Select State");
            switch (DDLCountry.Text)
            {

                case "India":
                    ls.Add("Karnataka");
                    ls.Add("Tamilnadu");
                    ls.Add("Kerala");
                    ls.Add("Andhra Pradesh");
                    break;

                case "US":
                    ls.Add("Washington");
                    ls.Add("England");
                    break;

                case "Nigeria":
                    ls.Add("Kaduna");
                    ls.Add("Nassarawa");
                    ls.Add("Abuja");
                    ls.Add("Lagos");
                    break;
            }
            DDLState.DataSource = ls;
            DDLState.DataBind();
        }

        protected void DDLState_SelectedIndexChanged(object sender, EventArgs e)
        {
            List<string> ls = new List<string>();
            ls.Clear();
            ls.Add("Select City");
            switch (DDLState.Text)
            {
                case "TamilNadu":
                    ls.Add("Chennai");
                    ls.Add("Vellore");
                    ls.Add("Hosur");
                    break;

                case "Karnataka":
                    ls.Add("Bangalore");
                    ls.Add("Mysore");
                    ls.Add("Glbarga");
                    ls.Add("Chitradurga");
                    ls.Add("Bidar");
                    ls.Add("Shimoga");
                    ls.Add("Hubli");
                    ls.Add("Chikkamagaluru");
                    ls.Add("Hassan");
                    
                    break;

                case "Nassarawa":
                    ls.Add("Karau");
                    ls.Add("Karau Mada");
                    break;

                case "Kaduna":
                    ls.Add("Romi");
                    ls.Add("Television");
                    ls.Add("Sabon Tasha");
                    break;

                case "Abuja":
                    ls.Add("Maraba Yanya");
                    ls.Add("Airport Road");
                    ls.Add("Estate Road");
                    break;

                case "Lagos":
                    ls.Add("Lag 1");
                    ls.Add("Lag 2");
                    break;

                case "Washington":
                    ls.Add("Washington City");
                    ls.Add("Wash 2");
                    break;

                case "England":
                    ls.Add("Eng 1");
                    ls.Add("Eng 2");
                    break;
            }
            DDLCity.DataSource = ls;
            DDLCity.DataBind();

        }

        protected void DDLReligion_SelectedIndexChanged(object sender, EventArgs e)
        {
            List<string> ls = new List<string>();
            ls.Clear();
            ls.Add("--Select--");
            switch (DDLReligion.Text)
            {
                case "Hindu":
                    ls.Add("SC");
                    ls.Add("ST");
                    ls.Add("OBC");
                    ls.Add("General");
                    break;

                case "Muslim":
                    ls.Add("Muslim");
                    break;

                case "Christian":
                    ls.Add("Roman");
                    ls.Add("Catholic");
                    ls.Add("Pentecostal");
                    break;

                case "Sikh":
                    ls.Add("Sikh");
                    break;

                case "Anglo Indian":
                    ls.Add("Foreign Indian");
                    break;


                case "Pegan":
                    ls.Add("Pegan");
                    break;
            }
            DDLCategory.DataSource = ls;
            DDLCategory.DataBind();

        }

        protected void DDLCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            List<string> ls = new List<string>();
            ls.Clear();
            ls.Add("--Select--");
            switch (DDLCategory.Text)
            {
                case "SC":
                    ls.Add("Adi Karnataka");
                    ls.Add("Adi Dravida");
                    break;

                case "ST":
                    ls.Add("Kuruba");
                    break;

                case "OBC":
                    ls.Add("Vokkaliga");
                    break;

                case "General":
                    ls.Add("Western-Life");
                    ls.Add("Gowda");
                    ls.Add("Reddy");
                    ls.Add("lingaaytath");
                    ls.Add("Aachaari");
                    break;
                case "Muslim":
                    ls.Add("Muslim 1");
                    break;
                case "Roman":
                    ls.Add("Rome 1");
                    break;
                case "Catholic":
                    ls.Add("Catholic 1");
                    break;
                case "Pentecostal 1":
                    ls.Add("Catholic 1");
                    break;
                case "Sikh":
                    ls.Add("Sikh 1");
                    break;
                case "Buddhism":
                    ls.Add("Buddhism 1");
                    break;
                case "Foreign Indian":
                    ls.Add("Anglo Indian Empty");
                    break;
            }
            DDLCaste.DataSource = ls;
            DDLCaste.DataBind();

        }
        
        private void OnTextChanged(object sender, EventArgs e)
        {
            if (!System.Text.RegularExpressions.Regex.IsMatch("^[0-9]", txtAge.Text))
            {
                txtAge.Text = string.Empty;
            }
        }

        protected void txtAge_TextChanged(object sender, EventArgs e)
        {
            if (!System.Text.RegularExpressions.Regex.IsMatch("^[0-9]", txtAge.Text))
            {
                txtAge.Text = string.Empty;
            }
        }

        protected void DDLCourse_SelectedIndexChanged(object sender, EventArgs e)
        {
            List<string> lsC = new List<string>();
            lsC.Clear();
            lsC.Add("--Select--");
            switch (DDLCourse.Text)
            {

                case "BCA":
               
                    lsC.Add("BCA 1st Year");
                    lsC.Add("BCA 2nd Year");
                    lsC.Add("Bca 3rd Year");
                    break;

                case "BBM":
                   
                    lsC.Add("BBM 1st Year");
                    lsC.Add("BBM 2nd Year");
                    lsC.Add("BBM 3rd Year");
                    break;

                case "B.A":
                    lsC.Add("BA 1st Year");
                    lsC.Add("BA 2nd Year");
                    lsC.Add("BA 3rd Year");
                    break;

                case "B.Com":
                    lsC.Add("BCOM 1st YearS");
                    lsC.Add("BCOM 2nd Year");
                    lsC.Add("BCOM 3rd Year");
                    break;
            }
            DDLSemester.DataSource = lsC;
            DDLSemester.DataBind();
        }

        protected void DDLYear_SelectedIndexChanged(object sender, EventArgs e)
        {
            string  num = DDLYear.SelectedValue.ToString();
            string year = DateTime.Now.Year.ToString();
            txtAge.Text  = (Convert.ToInt32(year) - Convert.ToInt32(num)).ToString();
        }
    }
}
    