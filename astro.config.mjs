import { defineConfig } from "astro/config";
import tailwind from "@astrojs/tailwind";
import sitemap from "@astrojs/sitemap";
import robotsTxt from "astro-robots-txt";
import netlify from "@astrojs/netlify";

// https://astro.build/config
export default defineConfig({
  site: "https://matthiesen.xyz",
  integrations: [tailwind({
    applyBaseStyles: false,
    nesting: true,
  }), sitemap(), robotsTxt()],
  redirects: {
    '/rss': '/rss.xml'
  },
  output: "server",
  adapter: netlify()
});