import rss from "@astrojs/rss";
import { getCollection } from "astro:content";

export async function GET(context) {
  const blog = await getCollection("blog", ({ data }) => { return !data.draft && data.publishDate < new Date(); });
  blog.sort(function (a, b) { return b.data.publishDate.valueOf() - a.data.publishDate.valueOf(); });
  return rss({
    title: "Matthiesen IT Services & Support",
    description: "From helping you setup your computer, to building a datacenter.  From a Support Center to a Managed Service provider. Any IT Project is not to big or to small, Need a website? No Problem!  Looking to reduce monthly or yearly costs and switch to the Open Source alternative? Just Contact us for help!",
    site: import.meta.env.SITE,
    stylesheet: "/rss.xsl",
    items: blog.map((post) => ({
      title: post.data.title,
      pubDate: post.data.publishDate,
      description: post.data.snippet,
      link: `/blog/${post.slug}/`,
    })),
  });
}