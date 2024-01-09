import rss from "@astrojs/rss";
import { getGhostPosts } from "@lib/ghost";
import { RSSdescription, Title } from "headerVars";

export async function GET() {
  const posts = await getGhostPosts();
  return rss({
    title: Title,
    description: RSSdescription,
    site: import.meta.env.SITE,
    stylesheet: '/rss/styles.xsl',
    items: posts.map((post) => ({
      title: post.title,
      pubDate: post.published_at,
      description: post.excerpt,
      link: `/blog/${post.slug}/`,
    })),
  });
}