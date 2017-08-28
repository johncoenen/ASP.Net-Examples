using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CheckOut : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // get entry data from cookies
        //if (Request.Cookies["FirstName"] != null)
        //    txtFirstName.Text = Request.Cookies["FirstName"].Value;
        //if (Request.Cookies["LastName"] != null)
        //    txtLastName.Text = Request.Cookies["LastName"].Value;

        //get entry data from session state
        if (!IsPostBack)
        {
            string firstName = (string)Session["FirstName"];
            if (firstName != null) txtFirstName.Text = (string)Session["FirstName"];
            string lastName = (string)Session["FirstName"];
            if (lastName != null) txtLastName.Text = (string)Session["LastName"];
            txtFirstName.Focus();
        }       
    }    
    protected void btnContinue_Click(object sender, EventArgs e)
    {
        this.LoadCustomerData();
        Response.Redirect("~/Order.aspx");
    }
    private void LoadCustomerData()
    {
        // load data in session state object
        Session["FirstName"] = txtFirstName.Text;
        Session["LastName"] = txtLastName.Text;

        //load same data in cookies with 5 minute expiration
        //if (Page.IsValid)
        //{
        //    DateTime expiry = DateTime.Now.AddMinutes(5);
        //    this.SetResponseCookie("FirstName", txtFirstName.Text, expiry);
        //    this.SetResponseCookie("LastName", txtLastName.Text, expiry);    
        //}
    }
    private void SetResponseCookie(string name, string value, DateTime expiry)
    {
        HttpCookie cookie = new HttpCookie(name, value);
        cookie.Expires = expiry;
        Response.Cookies.Add(cookie);
    }
}