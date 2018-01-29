<%@ Application Language="C#" %>
<%@ Import Namespace="IntroAsp.net" %>
<%@ Import Namespace="System.Web.Optimization" %>
<%@ Import Namespace="System.Web.Routing" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        RouteConfig.RegisterRoutes(RouteTable.Routes);
        BundleConfig.RegisterBundles(BundleTable.Bundles);
        Application["number"] = 0;
    }

    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started
        Session["number1"] = 0;
    }

</script>
