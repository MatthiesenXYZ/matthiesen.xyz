// IMPORT Ghost Content API & Ghost Types
import GhostContentAPI from '@tryghost/content-api';
import type { PostOrPage, PostsOrPages, Authors, Tag, Tags, ArrayOrValue, IncludeParam, LimitParam, Settings, Nullable } from 'tryghost__content-api';

// CALL GHOST VARS AND CREATE CLIENT
const key = import.meta.env.CONTENT_API_KEY;
const url = import.meta.env.CONTENT_API_URL;
const version = "v5.0"
const ghostClient = new GhostContentAPI({ key, url, version })
const include:ArrayOrValue<IncludeParam> = ['authors', 'tags'];

// Get Posts (General "ALL")
export const getGhostPosts = async () => {
    const ghostPosts:PostsOrPages = await ghostClient.posts.browse({include,filter:'visibility:public'}) 
    return ghostPosts; }

// Get Posts (Recent "setLimit?")
export const getGhostRecentPosts = async (setLimit?:ArrayOrValue<LimitParam>) => {
    const ghostRecentPosts:PostsOrPages = await ghostClient.posts.browse({limit:setLimit?setLimit:"6",include,filter:'visibility:public'}); 
    return ghostRecentPosts; }

// Get Posts (Featured "setLimit?")
export const getGhostFeaturedPosts = async (setLimit?:ArrayOrValue<LimitParam>) => {
    const ghostFeaturedPosts:PostsOrPages = await ghostClient.posts.browse({limit:setLimit?setLimit:"1",include,filter:'featured:true'});
    return ghostFeaturedPosts; }

// Get Post (By Slug)
export const getGhostPostbySlug = async (slug:Nullable<string>) => {
    const ghostPostbySlug:PostOrPage = await ghostClient.posts.read({slug},{include});
    return ghostPostbySlug; }

// Get Post (By Tag)
export const getGhostPostsbyTag = async (slug:Nullable<string>) => {
    const ghostPostsbyTag:PostsOrPages = await ghostClient.posts.browse({filter:`tag:${slug}`,include});
    return ghostPostsbyTag; }

// Get Tags (General "ALL")
export const getGhostTags = async () => {
    const ghostTags:Tags = await ghostClient.tags.browse({include:`count.posts`});
    return ghostTags; }

// Get Tag (By Slug)
export const getGhostTagbySlug = async (slug:Nullable<string>) => {
    const ghostTagbySlug:Tag = await ghostClient.tags.read({slug},{include:`count.posts`});
    return ghostTagbySlug; }

// Get Authors (General "ALL")
export const getGhostAuthors = async () => {
    const ghostAuthors:Authors = await ghostClient.authors.browse();
    return ghostAuthors; }

// Get Pages (ALL)
export const getGhostPages = async () => {
    const ghostPages:PostsOrPages = await ghostClient.pages.browse();
    return ghostPages; }

// Get Page (by Slug)
export const getGhostPage = async (slug:Nullable<string>) => {
    const ghostPage:PostOrPage = await ghostClient.pages.read({slug});
    return ghostPage; }

// Get Settings
export const getGhostSettings = async () => {
    const ghostSettings:Settings = await ghostClient.settings.browse();
    return ghostSettings; }