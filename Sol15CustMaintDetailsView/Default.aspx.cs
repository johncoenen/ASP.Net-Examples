using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void DetailsView1_ItemUpdated(
        object sender, DetailsViewUpdatedEventArgs e)
    {
        if (e.Exception != null)
        {
            lblError.Text = "A database error has occurred.<br /><br />" +
                "Message: " + e.Exception.Message;
            e.ExceptionHandled = true;
            e.KeepInEditMode = true;
        }
        else if (e.AffectedRows == 0)
            lblError.Text = "Another user may have updated that customer."
                + "<br />Please try again.";
        else
            GridView1.DataBind();
    }

    protected void DetailsView1_ItemDeleted(
        object sender, DetailsViewDeletedEventArgs e)
    {
        if (e.Exception != null)
        {
            lblError.Text = "A database error has occurred.<br /><br />" +
                "Message: " + e.Exception.Message;
            e.ExceptionHandled = true;
        }
        else if (e.AffectedRows == 0)
            lblError.Text = "Another user may have updated that customer."
                + "<br />Please try again.";
        else
            GridView1.DataBind();
    }

    protected void DetailsView1_ItemInserted(
        object sender, DetailsViewInsertedEventArgs e)
    {
        if (e.Exception != null)
        {
            lblError.Text = "A database error has occurred.<br /><br />" +
                "Message: " + e.Exception.Message;
            e.ExceptionHandled = true;
            e.KeepInInsertMode = true;
        }
        else
            GridView1.DataBind();
    }
}