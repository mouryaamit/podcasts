export interface Podcasts {
  episodes: Episode[]
  episodesDetails: EpisodesDetail[]
  videos: Video[]
}

export interface Episode {
  banner: string
  title: string
  slug: string
  subtext: string
  tags: string[]
  month: string
  duration: string
  guestExperts?: GuestExpert[]
  indexExperts: IndexExpert[]
  youtubeShareLink: string
  featured: boolean
}

export interface GuestExpert {
  profileImage: string
  name: string
  description: string
}

export interface IndexExpert {
  profileImage: string
  name: string
  description: string
}

export interface EpisodesDetail {
  title: string
  slug: string
  youtubeLink: string
  youtubeShareLink: string
  description: string[]
  highlights: Highlight[]
  timestamps: Timestamp[]
  aiSummaries: AiSummary[]
  conversations: Conversation[]
  guestExperts: GuestExpert[]
  indexExperts: IndexExpert[]
}

export interface Highlight {
  banner: string
  title: string
  tags: string[]
  month: string
  duration: string
  youtubeLink: string
  youtubeShareLink: string
}

export interface Timestamp {
  from: string
  to: string
  title: string
}

export interface AiSummary {
  index: string
  title: string
  conversations: string[]
  subtitle?: string
}

export interface Conversation {
  speaker?: string
  conversations?: string[]
  title?: string
}

export interface Video {
  banner: string
  title: string
  month: string
  duration: string
  youtubeLink: string
  youtubeShareLink: string
}
