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