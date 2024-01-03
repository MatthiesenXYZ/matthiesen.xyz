import { reference, z } from "astro:content";

export const teamSchema = z.object({
  name: z.string(),
  title: z.string(),
  profileurl: z.string().optional(),
  avatar: z.string().default('/default-review.jpg'),
})

export const hddReportSchema = z.object({
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

export const testimonialsSchema = z.object({
  name: z.string(),
  postDate: z.string(),
  postSource: z.object({
    desc: z.string(),
    link: z.string().optional(),
  }).optional(),
  avatar: z.string(),
  title: z.string(),
  body: z.string(),
})

export const servicesSchema = z.object({
  title: z.string(),
  icon: z.string().default('bi bi-balloon'),
  description: z.string(),
})

//
//// UNUSED SCHEMAS
//

export const blogSchema = z.object({
  draft: z.boolean(),
  title: z.string(),
  snippet: z.string(),
  image: z.object({
    src: z.string(),
    alt: z.string(),
  }),
  publishDate: z.string().transform(str => new Date(str)),
  author: reference('team').default('adam-matthiesen'),
  category: z.string(),
  tags: z.array(z.string()),
})