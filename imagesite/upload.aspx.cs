using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace imagesite
{
    public partial class upload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (FileUpload1.HasFile)
                {
                    string fileExt = System.IO.Path.GetExtension(FileUpload1.FileName);

                    if (fileExt.ToLower() != ".jpg" && fileExt.ToLower() != ".jpeg" && fileExt.ToLower() != ".png" && fileExt.ToLower() != ".gif")
                    {
                        Label1.Text = "Only Images files";
                        Label1.ForeColor = System.Drawing.Color.Red;
                    }

                    else
                    {
                        int fileSize = FileUpload1.PostedFile.ContentLength;
                        if (fileSize > 5242880)
                        {
                            Label1.Text = "Less than 5 MB only";
                            Label1.ForeColor = System.Drawing.Color.Red;
                        }
                        else
                        {
                            FileUpload1.SaveAs(Server.MapPath("~/Images/") + DateTime.Now.ToString("yyyy-MM-dd HHmmtt") + FileUpload1.FileName);
                            Label1.Text = "File Uploaded";
                            Label1.ForeColor = System.Drawing.Color.Green;
                        }
                    }
                }
                else
                {
                    Label1.Text = "Select a file to upload";
                    Label1.ForeColor = System.Drawing.Color.Red;
                }
            }
            catch (Exception ex)
            {
                Response.Write("Something went wrong try again");
            }
        
        }
    }
}