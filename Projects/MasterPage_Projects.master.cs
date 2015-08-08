using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage2 : System.Web.UI.MasterPage
{
    private Panel projects_directory = null;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (projects_directory == null)
        {
            projects_directory = new Panel();

            // Generate Projects Row (bottom projects directory) based on contents of Projects folder
            string[] files = { "ConcurrentContainers", "WiiMotion", "GameBoyEmulator", "SerializeQueue", "BubbleGrow", "GreyWeaver", "PreviewLite" };
            foreach (string file_name in files)
            {
                Panel panel = new Panel();
                panel.CssClass = "col-sm-3 col-xs-6";

                HyperLink link = new HyperLink();
                link.NavigateUrl = "~/Projects/" + file_name + ".aspx";

                Image image = new Image();
                image.CssClass = "img-responsive portfolio-item";
                image.ImageUrl = "~/data/" + file_name + ".png";

                link.Controls.Add(image);
                panel.Controls.Add(link);
                projects_directory.Controls.Add(panel);
            }
        }
        
        ProjectsRow.Controls.Add(projects_directory);
    }
}
