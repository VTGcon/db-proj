create schema streaming_service;

CREATE TABLE streaming_service.users
(
    user_id           INTEGER     NOT NULL PRIMARY KEY,
    login             VARCHAR(50) NOT NULL,
    user_name         VARCHAR(50) NOT NULL,
    user_country      VARCHAR(50) NOT NULL,
    subscription_type VARCHAR(50) CHECK (subscription_type = 'family'
        OR subscription_type = 'personal'
        OR subscription_type = 'student'
        OR subscription_type = 'free'),
    user_age          INTEGER     NOT NULL
);

CREATE TABLE streaming_service.tracks
(
    track_id         INTEGER NOT NULL PRIMARY KEY,
    track_name       VARCHAR NOT NULL,
    track_duration   INTEGER NOT NULL,
    explicit_content BOOLEAN
);

CREATE TABLE streaming_service.users_and_tracks
(
    user_id  INTEGER NOT NULL,
    track_id INTEGER NOT NULL,
    CONSTRAINT users_and_tracks_id PRIMARY KEY (user_id, track_id),
    FOREIGN KEY (user_id) REFERENCES streaming_service.users (user_id) ON DELETE CASCADE,
    FOREIGN KEY (track_id) REFERENCES streaming_service.tracks (track_id) ON DELETE CASCADE
);

CREATE TABLE streaming_service.playlists
(
    playlist_id    INTEGER      NOT NULL PRIMARY KEY,
    user_id        INTEGER      NOT NULL,
    playlist_name  VARCHAR(50)  NOT NULL,
    playlist_cover VARCHAR(512) NOT NULL CHECK (playlists.playlist_cover ~ $$^(https?://|www\.)[\.A-Za-z0-9\-]+\.[a-zA-Z]{2,4}$$),
    FOREIGN KEY (user_id) REFERENCES streaming_service.users (user_id) ON DELETE CASCADE
);

CREATE TABLE streaming_service.playlists_and_tracks
(
    playlist_id  INTEGER NOT NULL,
    track_id     INTEGER NOT NULL,
    track_number INTEGER NOT NULL,
    CONSTRAINT playlists_and_tracks_id PRIMARY KEY (playlist_id, track_id),
    FOREIGN KEY (playlist_id) REFERENCES streaming_service.playlists (playlist_id) ON DELETE CASCADE,
    FOREIGN KEY (track_id) REFERENCES streaming_service.tracks (track_id) ON DELETE CASCADE
);

CREATE TABLE streaming_service.artists
(
    artist_id      INTEGER      NOT NULL PRIMARY KEY,
    artist_name    VARCHAR(50)  NOT NULL,
    artist_photo   VARCHAR(512) NOT NULL CHECK (artist_photo ~ $$^(https?://|www\.)[\.A-Za-z0-9\-]+\.[a-zA-Z]{2,4}$$),
    artist_country VARCHAR(50)
);

CREATE TABLE streaming_service.artists_and_users
(
    artist_id INTEGER NOT NULL,
    user_id   INTEGER NOT NULL,
    CONSTRAINT artists_and_users_id PRIMARY KEY (artist_id, user_id),
    FOREIGN KEY (artist_id) REFERENCES streaming_service.artists (artist_id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES streaming_service.users (user_id) ON DELETE CASCADE
);

CREATE TABLE streaming_service.tracks_and_artists
(
    track_id  INTEGER NOT NULL,
    artist_id INTEGER NOT NULL,
    CONSTRAINT tracks_and_artists_id PRIMARY KEY (track_id, artist_id),
    FOREIGN KEY (track_id) REFERENCES streaming_service.tracks (track_id) ON DELETE CASCADE,
    FOREIGN KEY (artist_id) REFERENCES streaming_service.artists (artist_id) ON DELETE CASCADE
);

CREATE TABLE streaming_service.albums
(
    album_id    INTEGER      NOT NULL,
    valid_from  TIMESTAMP,
    valid_to    TIMESTAMP,
    album_name  VARCHAR(50)  NOT NULL,
    album_cover VARCHAR(512) NOT NULL CHECK (albums.album_cover ~ $$^(https?://|www\.)[\.A-Za-z0-9\-]+\.[a-zA-Z]{2,4}$$),
    is_deluxe   BOOLEAN,
    CONSTRAINT album_version_id PRIMARY KEY (album_id, valid_from)
);

CREATE TABLE streaming_service.artists_and_albums
(
    artist_id INTEGER NOT NULL,
    album_id  INTEGER NOT NULL,
    CONSTRAINT artists_and_albums_id PRIMARY KEY (artist_id, album_id),
    FOREIGN KEY (artist_id) REFERENCES streaming_service.artists (artist_id) ON DELETE CASCADE
--     FOREIGN KEY (album_id) REFERENCES streaming_service.albums (album_id) ON DELETE CASCADE
);

CREATE TABLE streaming_service.tracks_and_albums
(
    track_id INTEGER NOT NULL,
    album_id INTEGER NOT NULL,
    CONSTRAINT tracks_and_albums_id PRIMARY KEY (track_id, album_id),
    FOREIGN KEY (track_id) REFERENCES streaming_service.tracks (track_id) ON DELETE CASCADE
--     FOREIGN KEY (album_id) REFERENCES streaming_service.albums (album_id) ON DELETE CASCADE
);

CREATE TABLE streaming_service.users_and_albums
(
    user_id  INTEGER NOT NULL,
    album_id INTEGER NOT NULL,
    CONSTRAINT users_and_albums_id PRIMARY KEY (user_id, album_id),
    FOREIGN KEY (user_id) REFERENCES streaming_service.users (user_id) ON DELETE CASCADE
--     FOREIGN KEY (album_id) REFERENCES streaming_service.albums (album_id) ON DELETE CASCADE
);

CREATE TABLE streaming_service.streams
(
    stream_id   INTEGER NOT NULL PRIMARY KEY,
    user_id     INTEGER NOT NULL,
    track_id    INTEGER NOT NULL,
    album_id    INTEGER NOT NULL,
    stream_date TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES streaming_service.users (user_id) ON DELETE CASCADE,
    FOREIGN KEY (track_id) REFERENCES streaming_service.tracks (track_id) ON DELETE CASCADE
--     FOREIGN KEY (album_id) REFERENCES streaming_service.albums (album_id) ON DELETE CASCADE
);
