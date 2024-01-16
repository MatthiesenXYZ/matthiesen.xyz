import rss from "@astrojs/rss";
import { RSSdescription, Title } from "headerVars";
import { getGhostPosts } from '@matthiesenxyz/astro-ghostcms';

export async function GET() {
  const ghostPosts = await getGhostPosts();
  return rss({
    title: Title,
    description: RSSdescription,
    site: import.meta.env.SITE,
    stylesheet: '/rss/styles.xsl',
    items: ghostPosts.map((ghostPost) => ({
      title: ghostPost.title,
      pubDate: ghostPost.published_at,
      description: ghostPost.excerpt,
      link: `/blog/${ghostPost.slug}/`,
    })),
  });
}