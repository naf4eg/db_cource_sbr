
CREATE TABLE IF NOT EXISTS student02.artists();

ALTER TABLE IF EXISTS student02.artists
    ADD COLUMN IF NOT EXISTS id                         BIGSERIAL,
    ADD COLUMN IF NOT EXISTS first_name                 VARCHAR,
    ADD COLUMN IF NOT EXISTS last_name                  VARCHAR,
    ADD COLUMN IF NOT EXISTS gender                     VARCHAR,
    ADD COLUMN IF NOT EXISTS birth_day                  DATE
;

COMMENT ON TABLE  student02.artists                 	IS 'Таблица музыкальных исполнителей';
COMMENT ON COLUMN student02.artists.id                  IS 'Идентификатор исполнителя';
COMMENT ON COLUMN student02.artists.first_name          IS 'Имя';
COMMENT ON COLUMN student02.artists.last_name           IS 'Фамилия';
COMMENT ON COLUMN student02.artists.gender              IS 'Пол';
COMMENT ON COLUMN student02.artists.birth_day           IS 'Дата рождения';

ALTER TABLE student02.artists ADD primary key (id);


--------------------------------------------------------------------------------------------------


CREATE TABLE IF NOT EXISTS student02.genres();


ALTER TABLE IF EXISTS student02.genres
    ADD COLUMN IF NOT EXISTS id                   BIGSERIAL,
    ADD COLUMN IF NOT EXISTS name                 VARCHAR
;

COMMENT ON TABLE  student02.genres                         IS 'Таблица музыкальных жанров';
COMMENT ON COLUMN student02.genres.id                      IS 'Идентификатор жанра';
COMMENT ON COLUMN student02.genres.name                    IS 'Имя жанра';


ALTER TABLE student02.genres ADD primary key (id);


--------------------------------------------------------------------------------------------------



CREATE TABLE IF NOT EXISTS student02.albums();

ALTER TABLE IF EXISTS student02.albums
    ADD COLUMN IF NOT EXISTS id                         BIGSERIAL,
    ADD COLUMN IF NOT EXISTS year                 		SMALLINT,
    ADD COLUMN IF NOT EXISTS genre_id                   BIGSERIAL,
    ADD COLUMN IF NOT EXISTS artists_id                 BIGSERIAL
;

COMMENT ON TABLE  student02.albums                 	   IS 'Таблица музыкальных альбомов';
COMMENT ON COLUMN student02.albums.id                  IS 'Идентификатор музыкального альбома';
COMMENT ON COLUMN student02.albums.year          	   IS 'Год выпуска';
COMMENT ON COLUMN student02.albums.genre_id     	   IS 'Идентификатор жанра';
COMMENT ON COLUMN student02.albums.artists_id          IS 'Идентификатор исполнителя';

ALTER TABLE student02.albums ADD primary key (id);
ALTER TABLE student02.albums ADD foreign key (artists_id) REFERENCES student02.artists(id);
ALTER TABLE student02.albums ADD foreign key (genre_id) REFERENCES student02.genres(id);


--------------------------------------------------------------------------------------------------



CREATE TABLE IF NOT EXISTS student02.music_tracks();

ALTER TABLE IF EXISTS student02.music_tracks
    ADD COLUMN IF NOT EXISTS id                         BIGSERIAL,
    ADD COLUMN IF NOT EXISTS year                 		SMALLINT,
    ADD COLUMN IF NOT EXISTS time                 		INTEGER,
    ADD COLUMN IF NOT EXISTS listening_count            BIGINT,
    ADD COLUMN IF NOT EXISTS name                       VARCHAR,
    ADD COLUMN IF NOT EXISTS genre_id                   BIGSERIAL,
    ADD COLUMN IF NOT EXISTS artists_id                 BIGSERIAL
;

COMMENT ON TABLE  student02.music_tracks                 	 IS 'Таблица музыкальных треков';
COMMENT ON COLUMN student02.music_tracks.id                  IS 'Идентификатор музыкального трека';
COMMENT ON COLUMN student02.music_tracks.year                IS 'Год выпуска';
COMMENT ON COLUMN student02.music_tracks.time                IS 'Время в секундах';
COMMENT ON COLUMN student02.music_tracks.listening_count     IS 'Количество прослушиваний';
COMMENT ON COLUMN student02.music_tracks.name                IS 'Название';
COMMENT ON COLUMN student02.music_tracks.genre_id     	 	 IS 'Идентификатор жанра';
COMMENT ON COLUMN student02.music_tracks.artists_id          IS 'Идентификатор артиста';


ALTER TABLE student02.music_tracks ADD primary key (id);
ALTER TABLE student02.music_tracks ADD foreign key (artists_id) REFERENCES student02.artists(id);
ALTER TABLE student02.music_tracks ADD foreign key (genre_id) REFERENCES student02.genres(id);
