using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FileUploadDropdownlist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsave_Click(object sender, EventArgs e)
    {
        StringBuilder sb = new StringBuilder();

        if (FileUpload1.HasFile)
        {
            try
            {
                sb.AppendFormat(" Uploading file: {0}", FileUpload1.FileName);

                //saving the file
                FileUpload1.SaveAs(Server.MapPath("../" + "IMG/") + FileUpload1.FileName);

                //Showing the file information
                sb.AppendFormat("<br/> Save As: {0}", FileUpload1.PostedFile.FileName);
                sb.AppendFormat("<br/> File type: {0}", FileUpload1.PostedFile.ContentType);
                sb.AppendFormat("<br/> File length: {0}", FileUpload1.PostedFile.ContentLength);
                sb.AppendFormat("<br/> File name: {0}", FileUpload1.PostedFile.FileName);
                sb.AppendFormat("<br/> Dropdownlist Text: {0}", dropdownlist.SelectedItem.Text.ToString());
                sb.AppendFormat("<br/> Dropdownlist Value: {0}", dropdownlist.SelectedValue.ToString());
                lblmessagesave.Text = sb.ToString();
            }
            catch (Exception ex)
            {
                sb.Append("<br/> Error <br/>");
                sb.AppendFormat("Unable to save file <br/> {0}", ex.Message);
                lblmessagesave.Text = sb.ToString();
            }
        }
      
            lblmessagesave.Text = sb.ToString();
        
    }
    protected void btnsave_Click2(object sender, EventArgs e)
    {
        StringBuilder sb = new StringBuilder();

        if (File1.PostedFile != null)
        {
            try
            {
                sb.AppendFormat(" Uploading file: {0}", File1.PostedFile.FileName);

                //saving the file
                FileUpload1.SaveAs(Server.MapPath("../" + "IMG/") + File1.PostedFile.FileName);

                //Showing the file information
                sb.AppendFormat("<br/> Save As: {0}", File1.PostedFile.FileName);
                sb.AppendFormat("<br/> File type: {0}", File1.PostedFile.ContentType);
                sb.AppendFormat("<br/> File length: {0}", File1.PostedFile.ContentLength);
                sb.AppendFormat("<br/> File name: {0}", File1.PostedFile.FileName);
                sb.AppendFormat("<br/> Dropdownlist Value: {0}", Select1.Value.ToString());
                savedmessage.InnerHtml = sb.ToString();
            }
            catch (Exception ex)
            {
                sb.Append("Error");
                sb.AppendFormat("Unable to save file {0}", ex.Message);
                savedmessage.InnerHtml = sb.ToString();
            }
        }

        savedmessage.InnerHtml = sb.ToString();

    }
}