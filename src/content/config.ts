import { defineCollection } from 'astro:content';
import { hddReportSchema, servicesSchema, teamSchema, testimonialsSchema } from '../schemas'

//// THIS IS THE OLD BLOG COLLECTION FOR STATIC PREBUILT
//// I AM NOW USING GHOST-CMS
//const blogCollection = defineCollection({
//  type: "content", schema: blogSchema,
//});

const teamCollection = defineCollection({
  type: "data", schema: teamSchema,
});

const hddReportCollection = defineCollection({
  type: "data", schema: hddReportSchema,
});

const testimonialsCollection = defineCollection({
  type: "data", schema: testimonialsSchema,
});

const servicesCollection = defineCollection({
  type: "data", schema: servicesSchema,
});

export const collections = {
//  'blog': blogCollection,
  'team': teamCollection,
  'testimonials': testimonialsCollection,
  'hddreports': hddReportCollection,
  'services': servicesCollection,
};