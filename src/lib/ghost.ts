import GhostContentAPI from '@tryghost/content-api';

export const ghostClient = new GhostContentAPI({
    url: import.meta.env.CONTENT_API_URL,
    key: import.meta.env.CONTENT_API_KEY,
    version: import.meta.env.CONTENT_API_VER,
});

const getGhostPosts = async () => {
    const posts = await ghostClient.posts.browse({
        limit: 'all', include: 'authors', filter: 'visibility:public' 
    })
    return posts;
}

export {
    getGhostPosts
}