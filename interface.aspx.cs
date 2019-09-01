using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VirtualCampus
{
    public partial class _interface : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string d = DateTime.Now.ToString();
            string display = "Welcome To Project Abraham Automated System, Your Session Starts At   :  " + d;
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);
            string display1 = "Access Authentically Granted...Please Wait and Click OK";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display1 + "');", true);
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            
        }
    }
}