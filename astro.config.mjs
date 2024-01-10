import { defineConfig } from "astro/config";
import tailwind from "@astrojs/tailwind";
import sitemap from "@astrojs/sitemap";
import robotsTxt from "astro-robots-txt";
import netlify from "@astrojs/netlify";
import vue from "@astrojs/vue";

// https://astro.build/config
export default defineConfig({
  site: "https://matthiesen.xyz",
  integrations: [
    tailwind({
      applyBaseStyles: false,
      nesting: true
    }), 
    sitemap(), 
    robotsTxt(), 
    vue()],
  output: "server",
  adapter: netlify()
});