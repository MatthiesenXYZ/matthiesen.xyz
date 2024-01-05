import { defineConfig } from "astro/config";
import tailwind from "@astrojs/tailwind";
import mdx from "@astrojs/mdx";
import sitemap from "@astrojs/sitemap";
import robotsTxt from "astro-robots-txt";
import cloudflare from "@astrojs/cloudflare";

// https://astro.build/config
export default defineConfig({
  site: "https://matthiesen.xyz",
  integrations: [tailwind(), mdx(), sitemap(), robotsTxt()],
  redirects: {
    '/rss': '/rss.xml'
  },
  output: "server",
  adapter: cloudflare()
});