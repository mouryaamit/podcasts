# Podcasts API - Java Backend

A comprehensive Spring Boot application for managing podcasts, episodes, highlights, and related content.

## Project Structure

```
java/
├── src/main/java/com/podcasts/
│   ├── PodcastsApplication.java          # Main Spring Boot application
│   ├── controller/                       # REST API controllers
│   │   ├── EpisodeController.java
│   │   ├── PersonController.java
│   │   ├── HighlightController.java
│   │   └── VideoController.java
│   ├── service/                          # Business logic services
│   │   ├── EpisodeService.java
│   │   ├── PersonService.java
│   │   ├── HighlightService.java
│   │   └── VideoService.java
│   ├── repository/                       # Data access repositories
│   │   ├── EpisodeRepository.java
│   │   ├── PersonRepository.java
│   │   ├── HighlightRepository.java
│   │   └── VideoRepository.java
│   ├── model/                            # JPA entities
│   │   ├── Episode.java
│   │   ├── Person.java
│   │   ├── EpisodePerson.java
│   │   ├── EpisodePersonId.java
│   │   ├── EpisodeDetails.java
│   │   ├── Highlight.java
│   │   ├── EpisodeTimestamp.java
│   │   ├── AiSummary.java
│   │   ├── AiSummaryConversation.java
│   │   ├── ConversationBlock.java
│   │   ├── ConversationMessage.java
│   │   └── Video.java
│   └── dto/                              # Response DTOs
│       ├── EpisodeResponse.java
│       ├── PersonResponse.java
│       ├── EpisodePersonResponse.java
│       ├── EpisodeDetailsResponse.java
│       ├── HighlightResponse.java
│       ├── EpisodeTimestampResponse.java
│       ├── AiSummaryResponse.java
│       ├── AiSummaryConversationResponse.java
│       ├── ConversationBlockResponse.java
│       ├── ConversationMessageResponse.java
│       └── VideoResponse.java
├── src/main/resources/
│   └── application.properties            # Configuration
└── pom.xml                               # Maven configuration
```

## API Endpoints

### Episodes
- `GET /api/episodes` - Get all episodes
- `GET /api/episodes/{id}` - Get episode by ID
- `GET /api/episodes/slug/{slug}` - Get episode by slug
- `GET /api/episodes/featured` - Get featured episodes
- `GET /api/episodes/search?q={query}` - Search episodes
- `GET /api/episodes/tag/{tag}` - Get episodes by tag
- `POST /api/episodes` - Create new episode
- `PUT /api/episodes/{id}` - Update episode
- `DELETE /api/episodes/{id}` - Delete episode

### People
- `GET /api/people` - Get all people
- `GET /api/people/{id}` - Get person by ID
- `GET /api/people/name/{name}` - Get person by name
- `GET /api/people/search?q={query}` - Search people
- `POST /api/people` - Create new person
- `PUT /api/people/{id}` - Update person
- `DELETE /api/people/{id}` - Delete person

### Highlights
- `GET /api/highlights` - Get all highlights
- `GET /api/highlights/episode/{episodeId}` - Get highlights by episode
- `GET /api/highlights/{id}` - Get highlight by ID
- `GET /api/highlights/search?q={query}` - Search highlights
- `GET /api/highlights/tag/{tag}` - Get highlights by tag
- `POST /api/highlights` - Create new highlight
- `PUT /api/highlights/{id}` - Update highlight
- `DELETE /api/highlights/{id}` - Delete highlight

### Videos
- `GET /api/videos` - Get all videos
- `GET /api/videos/{id}` - Get video by ID
- `GET /api/videos/search?q={query}` - Search videos
- `POST /api/videos` - Create new video
- `PUT /api/videos/{id}` - Update video
- `DELETE /api/videos/{id}` - Delete video

## Database Configuration

The application uses PostgreSQL. Update the connection details in `application.properties`:

```properties
spring.datasource.url=jdbc:postgresql://localhost:5432/podcasts
spring.datasource.username=postgres
spring.datasource.password=password
```

## Running the Application

1. Ensure PostgreSQL is running
2. Create the database: `createdb podcasts`
3. Run the application:
   ```bash
   cd java
   mvn spring-boot:run
   ```

The API will be available at `http://localhost:8080`

## Features

- **Full CRUD Operations**: Complete Create, Read, Update, Delete for all entities
- **Search Functionality**: Text-based search across titles, descriptions, and names
- **Tag-based Filtering**: Filter episodes and highlights by tags
- **Featured Content**: Special handling for featured episodes
- **RESTful Design**: Clean REST API following standard conventions
- **CORS Support**: Cross-origin resource sharing enabled
- **Validation**: Input validation using Bean Validation
- **Transaction Management**: Proper transaction handling for data consistency

## Technologies Used

- **Spring Boot 3.2.0**: Framework for building the application
- **Spring Data JPA**: Data access layer
- **Spring Web**: REST API support
- **Hibernate**: JPA implementation
- **PostgreSQL**: Database
- **Maven**: Build tool
- **Java 17**: Programming language