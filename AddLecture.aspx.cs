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
    public partial class UpdateStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                List<string> ls = new List<string>();
                ls.Add("--Select--");
                ls.Add("Karnataka");
                ls.Add("Tamilnadu");
                ls.Add("Andra Pradesh");
                ls.Add("Kerala");
                ddlState.DataSource = ls;
                ddlState.DataBind();

                List<string> list = new List<string>();
                list.Add("--Select--");
                list.Add("Fresher");
                list.Add("Experienced");
                DDLlStatus.DataSource = list;
                DDLlStatus.DataBind();

                List<string> lsCourse = new List<string>();
                lsCourse.Add("--Select--");
                lsCourse.Add("BCA");
                lsCourse.Add("BBM");
                lsCourse.Add("B.Com");
                lsCourse.Add("B.A");
                DDLStream.DataSource = lsCourse;
                DDLStream.DataBind();

                List<string> ls1 = new List<string>();
                ls1.Add("--Select--");
                ls1.Add("Computer Science");
                ls1.Add("Science");
                ls1.Add("Commerce");
                DDLStream.DataSource = ls1;
                DDLStream.DataBind();

                List<string> Salary = new List<string>();
                Salary.Add("--Select Salary--");
                Salary.Add("10000-20000");
                Salary.Add("20000-30000");
                Salary.Add("30000-40000");
                Salary.Add("40000-50000");
                Salary.Add("50000-60000");
                Salary.Add("60000-70000");
                Salary.Add("70000-80000");
                Salary.Add("80000-90000");
                Salary.Add("90000-100000");
                Salary.Add("> 1 Lakh");
                DDLlAnnualSalry.DataSource = Salary;
                DDLlAnnualSalry.DataBind();
                
                List<string> ls3 = new List<string>();
                ls3.Add("--Select--");
                ls3.Add("myCity");
                ls3.Add("otherCity");
                ddlState.DataSource = ls;
                ddlState.DataBind();

            }
        }

        protected void DDLlStatus_SelectedIndexChanged(object sender, EventArgs e)
        {
            List<string> ls = new List<string>();
            ls.Clear();
            ls.Add("Select Status");
            switch (DDLlStatus.Text)
            {

                case "Fresher":
                    ls.Add("Not Applicable!");
                    break;

                case "Experienced":
                    ls.Add("1");
                    ls.Add("2");
                    ls.Add("3");
                    ls.Add("4");
                    ls.Add("5");
                    ls.Add("6");
                    ls.Add("7");
                    ls.Add("8");
                    ls.Add("9");
                    ls.Add("10");
                    ls.Add("11");
                    ls.Add("12");
                    ls.Add("13");
                    ls.Add("14");
                    ls.Add("15");
                    ls.Add("16");
                    ls.Add("17");
                    ls.Add("18");
                    ls.Add("19");
                    ls.Add("20");
                    ls.Add("21");
                    ls.Add("22");
                    ls.Add("23");
                    ls.Add("24");
                    ls.Add("25");
                    break;
            }
            DDLlExperience.DataSource=ls;
            DDLlExperience.DataBind();
        }

        protected void DDLStream_SelectedIndexChanged(object sender, EventArgs e)
        {
            List<string> ls = new List<string>();
            ls.Clear();
            ls.Add("Select Stream");
            switch (DDLStream.Text)
            {

                case "Computer Science":
                    ls.Add("Computer Science");
                    break;

                case "Science":
                    ls.Add("Science");
                    break;
                case "Commerce":
                    ls.Add("Commerce");
                    break;
            }
            DDLlSub.DataSource = ls;
            DDLlSub.DataBind();
        }

        protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
        {
            List<string> ls2 = new List<string>();
            ls2.Clear();
            ls2.Add("--Select District--");
            switch (ddlState.Text)
            {

                case "Karnataka":
                    ls2.Add("Bangalore");
                    break;

                case "Tamilnadu":
                    ls2.Add("Hosur");
                    break;
                case "Andra Pradesh":
                    ls2.Add("Kuppam");
                    break;
                case "Kerala":
                    ls2.Add("Kerala One");
                    break;
            }
            DDLDistrict.DataSource = ls2;
            DDLDistrict.DataBind();
        }

        protected void DDLDistrict_SelectedIndexChanged(object sender, EventArgs e)
        {
            List<string> ls2 = new List<string>();
            ls2.Clear();
            ls2.Add("--Select City--");
            switch (DDLDistrict.Text)
            {

                case "Bangalore":
                    ls2.Add("Garden City");
                    break;

                case "Hosur":
                    ls2.Add("Hosur City");
                    break;
                case "Kuppam":
                    ls2.Add("Kuppam City");
                    break;
                case "Kerala One":
                    ls2.Add("Kerala One City");
                    break;
            }
            DDLCity.DataSource = ls2;
            DDLCity.DataBind();
        }

        protected void cmdAddLecture_Click(object sender, EventArgs e)
        {
            try
            {
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Serverdatabase.mdf;Integrated Security=True;User Instance=True");
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            con.Open();
            cmd.CommandText = "insert into lectureReg([Lecturer_Name],[Mobile_Number],[Alternate_Number],[Email_id],[State],[District],[City],[Year_of_Join],[Qualification],[Present_Address],[Permanent_Address],[Lecture_Status],[Experience_Years],[Experience_Stream],[Subject],[Annual_Salary]) values('" + txtlname.Text + "','" + txtlmobile.Text + "','" + txtlalt.Text + "','" + txtlmail.Text  + "','" + ddlState.Text + "','" + DDLDistrict.Text + "','" + DDLCity.Text + "','" + txtlJoinYear.Text + "','" + txtlQfn.Text + "','" + txtPreAddress.Text + "','" + txtPerAddress.Text + "','" + DDLlStatus.Text + "','" + DDLlExperience.Text + "','" + DDLStream.Text + "','" + DDLlSub.Text + "','" + DDLlAnnualSalry.Text +  "')";
            cmd.ExecuteNonQuery();
            cmd.CommandText = "select * from lectureReg where lecturer_Name ='" + txtlname.Text + "'";
            cmd.ExecuteNonQuery();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                lblRegStatus.Text = " Lecture Registered Successfully-LECTURE-ID IS:";
                lblSuccessReg.Text = dr["Lecture_id"].ToString();
            }
            dr.Close();
            con.Close();
          }
        catch(SqlException e1)
        {
          Console.WriteLine("Message From Abraham:" + e1);
        }

        }

        protected void cmdExit_Click(object sender, EventArgs e)
        {
            Response.Redirect("Interface.aspx");
        }

        protected void cmdClear_Click(object sender, EventArgs e)
        {
            txtlname.Text = "";
            txtlmobile.Text = "";
            txtlalt.Text = "";
            txtlJoinYear.Text = "";
            txtlmail.Text = "";
            txtlQfn.Text = "";
            txtPerAddress.Text = "";
            txtPreAddress.Text = "";
        }

        }
        }
    