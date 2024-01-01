// 1. Import utilities from `astro:content`
import { z, defineCollection } from 'astro:content';

// 2. Define your collection(s)
const blogCollection = defineCollection({
  type: "content",
  schema: z.object({
    draft: z.boolean(),
    title: z.string(),
    snippet: z.string(),
    image: z.object({
      src: z.string(),
      alt: z.string(),
    }),
    publishDate: z.string().transform(str => new Date(str)),
    author: z.string().default('Adam Matthiesen'),
    category: z.string(),
    tags: z.array(z.string()),
  }),
});

const teamCollection = defineCollection({
  type: "data",
  schema: z.object({
    name: z.string(),
    title: z.string(),
    profileurl: z.string().optional(),
    avatar: z.string().default('/default-review.jpg'),
  }),
});

const hddReportCollection = defineCollection({
  type: "data",
  schema: z.object({
    serial: z.string(),
    make: z.string(),
    model: z.string(),
    capacity: z.string(),
    size: z.string(),
    type: z.string(),
    isSSD: z.boolean(),
    reportDate: z.coerce.date(),
    manuDate: z.coerce.date(),
    pdf: z.string(),
  }),
});

const testimonialsCollection = defineCollection({
  type: "data",
  schema: z.object({
    name: z.string(),
    postDate: z.string(),
    postSource: z.object({
      desc: z.string(),
      link: z.string().optional(),
    }).optional(),
    avatar: z.string(),
    title: z.string(),
    body: z.string(),
  }),
});

const servicesCollection = defineCollection({
  type: "data",
  schema: z.object({
    title: z.string(),
    icon: z.string().default('bi bi-balloon'),
    description: z.string(),
  }),
});

// 3. Export a single `collections` object to register your collection(s)
//    This key should match your collection directory name in "src/content"
export const collections = {
  'blog': blogCollection,
  'team': teamCollection,
  'testimonials': testimonialsCollection,
  'hddreports': hddReportCollection,
  'services': servicesCollection,
};