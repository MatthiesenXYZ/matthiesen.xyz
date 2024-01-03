/// <reference path="../.astro/types.d.ts" />
/// <reference types="astro/client" />

declare module '@tryghost/content-api';

interface ImportMetaEnv {
    readonly CONTENT_API_KEY: string;
    readonly CONTENT_API_URL: string;
    readonly CONTENT_API_VER: string;
}