# Podcasts API

A Spring Boot REST API for managing podcasts, episodes, highlights, and videos.

## Technologies

- **Java 17**
- **Spring Boot 3.2.0**
- **Spring Data JPA**
- **PostgreSQL**
- **Maven**

## API Endpoints

### Health Check
- `GET /health` - Health check endpoint

### Episodes
- `GET /episodes` - Get episodes with optional filtering and pagination
  - Query parameters:
    - `slug` (optional): Filter by episode slug
    - `featured` (optional): Filter by featured episodes (true/false)
    - `page` (optional, default: 1): Page number
    - `perPage` (optional, default: 10): Items per page

### Highlights
- `GET /highlights` - Get highlights with pagination
  - Query parameters:
    - `page` (optional, default: 1): Page number
    - `perPage` (optional, default: 10): Items per page

### Videos
- `GET /videos` - Get videos with pagination
  - Query parameters:
    - `page` (optional, default: 1): Page number
    - `perPage` (optional, default: 10): Items per page

## Response Format

All list endpoints return paginated responses in the following format:

```json
{
  "total": 100,
  "page": 1,
  "perPage": 10,
  "items": [...]
}
```

## Running the Application

1. Ensure you have Java 17 and Maven installed
2. Configure your PostgreSQL database in `application.properties`
3. Run the application:

```bash
mvn spring-boot:run
```

The application will start on port 8080 by default.

## Database Schema

The application uses PostgreSQL with the following main entities:
- Episodes
- Highlights
- Videos
- People (guests/experts)
- Episode details, timestamps, AI summaries, conversation blocks

See `DB_SCHEMA.md` for detailed database schema information.
