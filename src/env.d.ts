/// <reference path="../.astro/types.d.ts" />
/// <reference types="astro/client" />

declare module '@tryghost/content-api';
declare module '@tryghost/helpers';
declare module '@adammatthiesen/astro-snipcart/vue';

interface ImportMetaEnv {
    readonly CONTENT_API_KEY: string;
    readonly CONTENT_API_URL: string;
    readonly CONTENT_API_VER: string;
    readonly PUBLIC_SNIPCART_API_KEY: string;
}