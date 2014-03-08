using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace imagesite
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string[] filesindirectory = new DirectoryInfo(Server.MapPath("~/Images"))
                               .EnumerateFiles()
                               .OrderByDescending(n => n.LastWriteTime)
                               .Select(n => n.FullName)
                               .ToArray();
            List<String> images = new List<string>(filesindirectory.Count());

            foreach (string item in filesindirectory)
            {
                if (System.IO.Path.GetFileName(item) != "Thumbs.db")
                {
                    images.Add(String.Format("/Images/{0}", System.IO.Path.GetFileName(item)));
                }
            }

            RepeaterImages.DataSource = images;
            RepeaterImages.DataBind();

        }
    }
}