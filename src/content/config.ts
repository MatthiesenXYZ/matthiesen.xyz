// 1. Import utilities from `astro:content`
import { z, defineCollection } from 'astro:content';

// 2. Define your collection(s)
const blogCollection = defineCollection({
  schema: z.object({
    draft: z.boolean(),
    title: z.string(),
    snippet: z.string(),
    image: z.object({
      src: z.string(),
      alt: z.string(),
    }),
    publishDate: z.string().transform(str => new Date(str)),
    author: z.string().default('Astroship'),
    category: z.string(),
    tags: z.array(z.string()),
  }),
});

const teamCollection = defineCollection({
  schema: z.object({
    draft: z.boolean(),
    name: z.string(),
    title: z.string(),
    profileurl: z.string().optional(),
    avatar: z.string(),
    publishDate: z.string().transform(str => new Date(str)),
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
  })
})

// 3. Export a single `collections` object to register your collection(s)
//    This key should match your collection directory name in "src/content"
export const collections = {
  'blog': blogCollection,
  'team': teamCollection,
  'hddreports': hddReportCollection,
};