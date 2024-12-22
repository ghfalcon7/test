using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Stock_Control
{
    public partial class Add_Emp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Any page load initialization logic can go here
        }

        protected void submitBtn_Click(object sender, EventArgs e)
        {
            // Access the TextBox controls and get their values
            string badgeNumberValue = badgeNumber.Text;
            string employeeNameValue = employeeName.Text;
            string departmentValue = department.Text;

            // Add logic to process the form data
            Response.Write($"Employee Added: {employeeNameValue}, Badge: {badgeNumberValue}, Department: {departmentValue}");
        }
    }
}
