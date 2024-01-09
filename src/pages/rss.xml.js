import rss from "@astrojs/rss";
import { getGhostPosts } from "../lib/ghost";

export async function GET() {
  const posts = await getGhostPosts();
  return rss({
    title: "Matthiesen IT Services & Support",
    description: "From helping you setup your computer, to building a datacenter.  From a Support Center to a Managed Service provider. Any IT Project is not to big or to small, Need a website? No Problem!  Looking to reduce monthly or yearly costs and switch to the Open Source alternative? Just Contact us for help!",
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