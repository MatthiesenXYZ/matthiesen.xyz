import GhostContentAPI from '@tryghost/content-api';
const env = import.meta.env;
import GhostAdminAPI from '@tryghost/admin-api';

const ghostClient = new GhostContentAPI({ 
    url: env.CONTENT_API_URL, 
    key: env.CONTENT_API_KEY, 
    version: env.CONTENT_API_VER
})

const ghostAdmin = new GhostAdminAPI({
    url: env.CONTENT_API_URL,
    version: env.CONTENT_API_VER,
    key: env.ADMIN_API_KEY
})

export const getGhostPosts = async () => {
    const posts = await ghostClient.posts.browse({
        limit: 'all', 
        include: ['authors', 'tags'], 
        filter: 'visibility:public' }) 
    return posts;
}

export const getDraftGhostPosts = async () => {
    const posts = await ghostAdmin.posts.browse({
        limit: 'all', 
        include: ['authors', 'tags'], 
        filter: 'status:draft',
        formats: 'html' }) 
    return posts;
}

export const getGhostFeaturedPosts = async () => {
    const posts = await ghostClient.posts.browse({
        limit: '3', 
        include: ['authors', 'tags'], 
        filter: 'featured:true' })
    return posts;
}

export const getGhostAuthors = async () => {
    const authors = await ghostClient.authors.browse()
    return authors;
}

export const getGhostTags = async () => {
    const tags = await ghostClient.tags.browse().include({"count.posts": true,})
    return tags;
}