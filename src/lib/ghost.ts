import GhostContentAPI from '@tryghost/content-api';

export const ghostClient = new GhostContentAPI({
    url: 'https://ghost.matthiesen.xyz',
    key: import.meta.env.CONTENT_API_KEY,
    version: 'v5.0',
});