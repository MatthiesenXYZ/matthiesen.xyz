import { defineConfig } from "astro/config";
import tailwind from "@astrojs/tailwind";
import mdx from "@astrojs/mdx";
import sitemap from "@astrojs/sitemap";
import solid from '@astrojs/solid-js';
import sentry from "@sentry/astro";
import spotlightjs from "@spotlightjs/astro";
import robotsTxt from "astro-robots-txt";

// https://astro.build/config
export default defineConfig({
  site: "https://matthiesen.xyz",
  integrations: [tailwind(), mdx(), sitemap(), solid(), sentry(), spotlightjs(), robotsTxt()],
  redirects: {
    '/rss': '/rss.xml'
  }
});