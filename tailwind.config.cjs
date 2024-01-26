/** @type {import('tailwindcss').Config} */
const defaultTheme = require("tailwindcss/defaultTheme");
module.exports = {
  content: ["./src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue,xsl}"],
  theme: { 
    extend: { fontFamily: { 
        sans: [ "var(--font-inter)", ...defaultTheme.fontFamily.sans ] 
    } } 
  },
  plugins: [ 
    require("daisyui"), 
    require("@tailwindcss/typography") ],
  daisyui: { 
    themes: ["synthwave"], 
    logs: false,
  },
};
