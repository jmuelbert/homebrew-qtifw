export const SITE = {
    title: 'Documentation',
    description: 'Your website description.',
    defaultLanguage: 'en-us'
} as const

export const OPEN_GRAPH = {
    image: {
        src: '/default-og-image.png',
        alt: 'astro logo on a starry expanse of space,' + ' with a purple saturn-like planet floating in the right foreground'
    },
    twitter: 'astrodotbuild'
}

export const KNOWN_LANGUAGES = {
    English: 'en'
} as const
export const KNOWN_LANGUAGE_CODES = Object.values(KNOWN_LANGUAGES)

export const EDIT_URL = ``

export const COMMUNITY_INVITE_URL = `https://github.com/jmuelbert/homebrew-qtifw/discussions`

// See "Algolia" section of the README for more information.
export const ALGOLIA = {
    indexName: 'XXXXXXXXXX',
    appId: 'XXXXXXXXXX',
    apiKey: 'XXXXXXXXXX'
}

export type Sidebar = Record<(typeof KNOWN_LANGUAGE_CODES)[number], Record<string, { text: string; link: string }[]>>
export const SIDEBAR: Sidebar = {
    en: {
        'Section Header': [{ text: 'Introduction', link: 'en/introduction' }]
    }
}
