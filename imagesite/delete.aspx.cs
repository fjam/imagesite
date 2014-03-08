using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
namespace imagesite
{
    public partial class delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string[] filePaths = Directory.GetFiles(Server.MapPath("~/Images/"));
                List<ListItem> files = new List<ListItem>();
                foreach (string filePath in filePaths)
                {
                    files.Add(new ListItem(Path.GetFileName(filePath), filePath));
                }
                GridView1.DataSource = files;
                GridView1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string filePath = TextBox1.Text;    
                File.Delete(filePath);
                Response.Redirect(Request.Url.AbsoluteUri);
                Label1.Text = "Delete Successful";
                Label1.ForeColor = System.Drawing.Color.Green;
            }
            catch (Exception ex)
            {
                Label1.Text = "Something went wrong, make sure you entered the path correctly.";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}