using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.Routing;
using System.Web.Optimization;


namespace Website_Gym
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            Application.Lock();
            string demFilePath = Server.MapPath("~/Dem.txt");

            if (!System.IO.File.Exists(demFilePath))
            {
                System.IO.File.WriteAllText(demFilePath, "0");
            }

            string fileContent = System.IO.File.ReadAllText(demFilePath);
            if (string.IsNullOrWhiteSpace(fileContent) || !int.TryParse(fileContent, out int soLuotTruyCap))
            {
                soLuotTruyCap = 0;
                System.IO.File.WriteAllText(demFilePath, "0");
            }
            Application["SoLuotTruyCap"] = soLuotTruyCap;

            Application.UnLock();
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Application.Lock();
            Application["SoLuotTruyCap"] = (int)Application["SoLuotTruyCap"] + 1;

            // Ghi xuống file
            System.IO.File.WriteAllText(Server.MapPath("~/Dem.txt"), Application["SoLuotTruyCap"].ToString());

            if (Application["SLOnline"] == null)
            {
                Application["SLOnline"] = 1;
            }
            else
            {
                Application["SLOnline"] = (int)Application["SLOnline"] + 1;
            }
            Application.UnLock();
        }

        protected void Session_End(object sender, EventArgs e)
        {
            Application.Lock();
            Application["SLOnline"] = (int)Application["SLOnline"] - 1;
            Application.UnLock();
        }
    }
}
