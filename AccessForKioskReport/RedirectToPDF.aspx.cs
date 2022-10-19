using System;
using System.Text.RegularExpressions;

namespace AccessForKioskReport
{
    public partial class RedirectToPDF : System.Web.UI.Page
    {
        public string URL { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            URL = Request.QueryString["pdf"].ToString();

            if (Session["TextBox3"] != null)
            {


                string path = Request.Url.ToString();

                if (Regex.IsMatch(path, "(.+)pdf=([a-zA-Z0-9_.]+)",
                    RegexOptions.IgnoreCase))
                {
                    string idString =
                         path.Substring(path.LastIndexOf('=') + 1,
                                        path.Length - path.LastIndexOf('=') - 1);
                    Server.TransferRequest("~/reports/" + idString);
                }
                Session.Abandon();
                Session.RemoveAll();
            }
            else
            {
                Response.Redirect("RegistrationForm.aspx?pdf="+URL);
            }
            //else if (Regex.IsMatch(path, "/URLRewriting/UserAccount/(.+).aspx",
            //         RegexOptions.IgnoreCase))
            //{
            //    String idString =
            //       path.Substring(path.LastIndexOf('/') + 1,
            //                      path.Length - path.LastIndexOf('/') - 6);
            //    Context.RewritePath("/URLRewriting/UserAccount.aspx?id=" +
            //                        idString);
            //}
        }

    }
}