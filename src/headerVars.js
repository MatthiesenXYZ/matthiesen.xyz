//
// MAIN SITE VARIABLES
//
export const Title = "Matthiesen IT Services & Support";
export const SEOdescription = "IT Support and Services provided remotely from and local to the Seattle, Washington area";
export const RSSdescription = "From helping you setup your computer, to building a datacenter.  From a Support Center to a Managed Service provider. Any IT Project is not to big or to small, Need a website? No Problem!  Looking to reduce monthly or yearly costs and switch to the Open Source alternative? Just Contact us for help!";
//
// Navigation Menu
//
export const navigationMenu = [
    {title: "Home", path: "/",  target: ""},
    {title: "About", path: "/about", target: ""},
    {title: "Blog", path: "/blog", target: ""},
    {title: "Store", path: "/store", target: "", 
      badge: true, badgetxt: "NEW"},
    {title: "Contact", path: "/contact", target: ""},
    {title: "Public Reports", path: "#", target: "", 
      children: [
        {title: "HDD Wipe Reports", path: "/hddreports", target: ""} 
      ]},
    {title: "Customer Logins", path: "#", target: "", 
      children: [
        {title: "Support Center", target: "_blank", 
          path: "https://support.matthiesen.xyz"},
        {title: "Billing & Invoicing", target: "_blank", 
          path: "https://billing.matthiesen.xyz/client/login"} 
      ]},
  ];