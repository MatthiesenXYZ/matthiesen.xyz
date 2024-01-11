// IMPORT Ghost Content API & Ghost Types
import GhostContentAPI from '@tryghost/content-api';
import type {PostOrPage, PostsOrPages, Authors, Tag, Tags} from './ghostTypes';

// IMPORT ENV Variables
const env = import.meta.env;

// SET GHOST FILTERS AND VERSION
const curAPIVer:string = 'v5.0';
const iPost = ['authors', 'tags'];

// Create Local Ghost Client
const ghostClient = new GhostContentAPI({ 
    key: env.CONTENT_API_KEY, url: env.CONTENT_API_URL, 
    version: curAPIVer
})

// Get Posts (General "ALL")
export const getGhostPosts = async () => {
    const ghostPosts: PostsOrPages = await ghostClient.posts.browse({
        limit:'all',include:iPost,filter:'visibility:public' }) 
    return ghostPosts;
}

// Get Posts (Featured "setlimit")
export const getGhostFeaturedPosts = async (flimit: string) => {
    const ghostFeaturedPosts: PostsOrPages = await ghostClient.posts.browse({
        limit:`${flimit}`,include:iPost,filter:'featured:true' })
    return ghostFeaturedPosts;
}

// Get Post (By Slug)
export const getGhostPostbySlug = async (slug: string) => {
    const ghostPostbySlug: PostOrPage = await ghostClient.posts.read({
        slug:`${slug}`,include:iPost })
    return ghostPostbySlug;
}

// Get Post (By Tag)
export const getGhostPostsbyTag = async (tagSlug: string) => {
    const ghostPostsbyTag: PostsOrPages = await ghostClient.posts.browse({
        filter:`tag:${tagSlug}`,limit:'all',include:iPost })
    return ghostPostsbyTag;
}

// Get Tags (General "ALL")
export const getGhostTags = async () => {
    const ghostTags: Tags = await ghostClient.tags.browse({ include:`count.posts` })
    return ghostTags;
}

// Get Tag (By Slug)
export const getGhostTagbySlug = async (slug: string) => {
    const ghostTagbySlug: Tag = await ghostClient.tags.read({
        slug:`${slug}`,include:`count.posts` })
    return ghostTagbySlug;
}

// Get Authors (General "ALL")
export const getGhostAuthors = async () => {
    const ghostAuthors: Authors = await ghostClient.authors.browse()
    return ghostAuthors;
}