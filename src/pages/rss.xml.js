import rss from "@astrojs/rss";
import { getGhostPosts } from '@lib/ghost';
import { Title, RSSDescription} from 'headerVars';

export async function GET(context) {
  const posts = await getGhostPosts();
  return rss({
    title: Title,
    description: RSSDescription,
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