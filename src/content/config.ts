import { defineCollection } from 'astro:content';
import { hddReportSchema, servicesSchema, storeSchema, teamSchema, testimonialsSchema } from '../lib/schemas'

const team = defineCollection({ 
  type: "data", schema: teamSchema 
});

const hddReport = defineCollection({ 
  type: "data", schema: hddReportSchema 
});

const testimonials = defineCollection({ 
  type: "data", schema: testimonialsSchema 
});

const services = defineCollection({ 
  type: "data", schema: servicesSchema 
});

const store = defineCollection({ 
  type: "data", schema: storeSchema 
});

export const collections = {
  'team': team,
  'testimonials': testimonials,
  'hddreports': hddReport,
  'services': services,
  'store': store,
};