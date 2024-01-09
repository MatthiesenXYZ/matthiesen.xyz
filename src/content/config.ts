import { defineCollection, z } from 'astro:content';

const store = defineCollection({ 
  type: "data", 
  schema: ({ image }) => z.object({
    id: z.string(),
    name: z.string(),
    url: z.string(),
    image: image(),
    price: z.number(),
    description: z.string(), 
  }),
});

const testimonials = defineCollection({ 
  type: "data", 
  schema: ({ image }) => z.object({
    name: z.string(),
    postDate: z.string(),
    postSource: z.object({
      desc: z.string(),
      link: z.string().optional(),
    }).optional(),
    avatar: image(),
    title: z.string(),
    body: z.string(),
  }),
});

const team = defineCollection({ 
  type: "data", 
  schema: ({ image }) => z.object({
    name: z.string(),
    title: z.string(),
    profileurl: z.string().optional(),
    avatar: image(),
  }),
});

const services = defineCollection({ 
  type: "data", 
  schema: z.object({
    title: z.string(),
    icon: z.string().default('bi bi-balloon'),
    description: z.string(),
  }),
});

const hddReport = defineCollection({ 
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

export const collections = {
  'team': team,
  'testimonials': testimonials,
  'hddreports': hddReport,
  'services': services,
  'store': store,
};