import rss from "@astrojs/rss";
import { getCollection } from "astro:content";

export async function GET(context) {
  const blog = await getCollection("blog");
  return rss({
    title: "Matthiesen IT Services & Support",
    description: "From helping you setup your computer, to building a datacenter.  From a Help-Desk to a Managed Service provider.",
    site: import.meta.env.SITE,
    items: blog.map((post) => ({
      title: post.data.title,
      pubDate: post.data.publishDate,
      description: post.data.snippet,
      link: `/blog/${post.slug}/`,
    })),
  });
}