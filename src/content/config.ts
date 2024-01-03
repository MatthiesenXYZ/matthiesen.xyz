import { defineCollection } from 'astro:content';
import { hddReportSchema, servicesSchema, teamSchema, testimonialsSchema } from '../lib/schemas'

const teamCollection = defineCollection({ type: "data", schema: teamSchema });

const hddReportCollection = defineCollection({ type: "data", schema: hddReportSchema });

const testimonialsCollection = defineCollection({ type: "data", schema: testimonialsSchema });

const servicesCollection = defineCollection({ type: "data", schema: servicesSchema });

const productCollection = defineCollection({})

export const collections = {
  'team': teamCollection,
  'testimonials': testimonialsCollection,
  'hddreports': hddReportCollection,
  'services': servicesCollection,
};