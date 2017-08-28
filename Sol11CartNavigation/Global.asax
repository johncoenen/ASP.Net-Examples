<%@ Application Language="C#" %>
<%@ Import Namespace="System.Web.Routing" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup
        RegisterRoutes(RouteTable.Routes);
    }

    public static void RegisterRoutes(RouteCollection routes)
    {
        // ignore WebResource.axd file
        routes.Ignore("{resource}.axd/{pathInfo}");

        //map static pages
        routes.MapPageRoute("Home", "Home", "~/Default.aspx");
        
        routes.MapPageRoute("Shopping", "Shopping", "~/Shopping.aspx");
        routes.MapPageRoute("Cart", "Shopping/Cart", "~/Cart.aspx");
        routes.MapPageRoute("Checkout", "Shopping/Checkout", "~/Checkout.aspx");

        routes.MapPageRoute("Categories", "Categories", "~/Categories.aspx");
        routes.MapPageRoute("Costumes", "Categories/Costumes", "~/Costumes.aspx");
        routes.MapPageRoute("Masks", "Categories/Masks", "~/Masks.aspx");
        routes.MapPageRoute("Props", "Categories/Props", "~/Props.aspx");
        
        routes.MapPageRoute("Support", "Support", "~/Support.aspx");
        routes.MapPageRoute("Service", "Support/Service", "~/CustomerService.aspx");
        routes.MapPageRoute("Product", "Support/Product", "~/ProductSupport.aspx");
        routes.MapPageRoute("Map", "Support/Map", "~/Map.aspx");
        
        routes.MapPageRoute("About", "About", "~/About.aspx");
        routes.MapPageRoute("Mission", "About/Mission", "~/Mission.aspx");
        routes.MapPageRoute("History", "About/History", "~/History.aspx"); 
               
        routes.MapPageRoute("Order", "Shopping/Order/{productID}", "~/Order.aspx",
                            false, new RouteValueDictionary { { "productID", "" } });
    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
       
</script>
