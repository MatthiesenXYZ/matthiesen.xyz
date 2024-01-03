import GhostContentAPI from '@tryghost/content-api';
const env = import.meta.env;

const ghostClient = new GhostContentAPI({ 
    url: env.CONTENT_API_URL, 
    key: env.CONTENT_API_KEY, 
    version: env.CONTENT_API_VER
})

export const getGhostPosts = async () => {
    const posts = await ghostClient.posts.browse({
        limit: 'all', 
        include: ['authors', 'tags'], 
        filter: 'visibility:public',
    }) 
    return posts;
}

export const getGhostFeaturedPosts = async () => {
    const posts = await ghostClient.posts.browse({
        limit: '3', 
        include: ['authors', 'tags'], 
        filter: 'featured:true',
    })
    return posts;
}