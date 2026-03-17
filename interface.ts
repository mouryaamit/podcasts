export interface Person {
    profileImage: string
    name: string
    description?: string
}

export interface MediaMeta {
    banner: string
    title: string
    month: string
    duration: string
}

export interface YoutubeLink {
    youtubeLink?: string
    youtubeShareLink: string
}

export interface Episode extends MediaMeta, YoutubeLink {
    slug: string
    subtext: string
    tags: string[]
    featured: boolean

    guestExperts?: Person[]
    indexExperts: Person[]
}

export interface EpisodeDetail {
    title: string
    slug: string
    description: string[]

    youtubeLink: string
    youtubeShareLink: string

    highlights: Highlight[]
    timestamps: Timestamp[]
    aiSummaries: AiSummary[]
    conversations: ConversationBlock[]

    guestExperts: Person[]
    indexExperts: Person[]
}

export interface Highlight extends MediaMeta, YoutubeLink {
    tags: string[]
}

export interface Video extends MediaMeta, YoutubeLink { }

export interface Timestamp {
    from: string
    to: string
    title: string
}

export interface AiSummary {
    index: string
    title: string
    subtitle?: string
    conversations: string[]
}

export interface Conversation {
    speaker: string
    text: string
    from?: string
    to?: string
}

export interface ConversationBlock {
    title?: string
    messages: Conversation[]
}

export interface PaginatedResponse<T> {
    total: number
    page: number
    perPage: number
    items: T[]
}