set datestyle = 'DMY';

INSERT INTO streaming_service.users(user_id, login, user_name, user_country, subscription_type, user_age)
VALUES (1, 'milfhunter2008', 'Андрей', 'Russia', 'personal', 14),
       (2, 'xXx_VYACHESLAV_NAGIBATOR_XxX', 'Вячеслав', 'Russia', 'student', 20),
       (3, 'ElonMusk', 'Elon', 'USA', 'personal', 51),
       (4, 'sanctions_enjoyer', 'Василий', 'Turkey', 'free', 22),
       (5, '1337', 'Hans', 'Germany', 'personal', 32);

INSERT INTO streaming_service.albums(album_id, valid_from, valid_to, album_name, album_cover, is_deluxe)
VALUES (1, 03092015, 04092015, 'Rodeo',
        'https://drive.google.com/file/d/1yqEMG6rure4CYls6q8GnwU0exdpl7X6a/view?usp=sharing', false),
       (1, 04092015, 31122999, 'Rodeo (expanded version)',
        'https://drive.google.com/file/d/1jiXyoVZjG9ts8hXKVOl2WM66xBWAjVc9/view?usp=sharing', true),
       (2, 18062013, 31122999, 'Yeezus',
        'https://drive.google.com/file/d/1I4ODljfQP8twqBwhxTY0kFOR7OVMc3Q0/view?usp=sharing', false),
       (3, 26052015, 31222999, 'AT.LONG.LAST.A$AP',
        'https://drive.google.com/file/d/1uAhz4u4kPgRNQ5EoXSLg3lwq6TdLkzgz/view?usp=sharing', false),
       (4, 23032004, 32122999, 'Madvillainy',
        'https://drive.google.com/file/d/1Zgqvm2EZGyy8lCD81_lZL5eZ1jfHVtqP/view?usp=sharing', false);

INSERT INTO streaming_service.tracks(track_id, track_name, track_duration, explicit_content)
VALUES (1, 'Pornography', 231, true),
       (2, 'Oh My Dis Side', 351, true),
       (3, '3500', 461, true),
       (4, 'Wasted', 235, true),
       (5, '90210', 339, true),
       (6, 'Pray 4 Love', 307, true),
       (7, 'Nightcrawler', 321, true),
       (8, 'Piss On Your Grave', 166, true),
       (9, 'Antidote', 262, true),
       (10, 'Impossible', 242, true),
       (11, 'Maria I''m Drunk', 341, true),
       (12, 'Flying High', 208, true),
       (13, 'I Can Tell', 235, true),
       (14, 'Apple Pie', 219, true),
       (15, 'Ok Alright', 413, true),
       (16, 'Never Catch Me', 176, true),
       (17, 'On Sight', 156, true),
       (18, 'Black Skinhead', 188, true),
       (19, 'I Am A God', 231, true),
       (20, 'New Slaves', 256, true),
       (21, 'Hold My Liquor', 326, true),
       (22, 'Im In It', 234, true),
       (23, 'Blood On The Leaves', 299, true),
       (24, 'Guilt Trip', 243, true),
       (25, 'Send It Up', 172, true),
       (26, 'Bound 2', 229, true),
       (27, 'Holy Ghost', 191, true),
       (28, 'Canal St.', 227, true),
       (29, 'Fine Whine', 218, true),
       (30, 'L$D', 238, true),
       (31, 'Excuse me', 238, true),
       (32, 'JD', 105, true),
       (33, 'Lord Pretty Flacko Joyde 2 (LPFJ2)', 126, true),
       (34, 'Electric Body', 175, true),
       (35, 'Jukebox Joints', 323, true),
       (36, 'Max B', 161, true),
       (37, 'Pharsyde', 222, true),
       (38, 'Wavybone', 303, true),
       (39, 'West Side Highway', 176, true),
       (40, 'Better Things', 199, true),
       (41, 'M''$', 233, true),
       (42, 'Dreams (Interlude)', 136, true),
       (43, 'Everyday', 260, true),
       (44, 'Back Home', 278, true),
       (45, 'The Illest Villains', 115, true),
       (46, 'Accordion', 118, true),
       (47, 'Meat Grinder', 131, true),
       (48, 'Bistro', 67, true),
       (49, 'Raid', 150, true),
       (50, 'America''s Most Blunted', 234, true),
       (51, 'Sickfit', 81, true),
       (52, 'Rainbows', 171, true),
       (53, 'Curls', 95, true),
       (54, 'Do Not Fire!', 52, true),
       (55, 'Money Folder', 182, true),
       (56, 'Shadows Of Tomorrow', 156, true),
       (57, 'Operation Lifesaver aka Mint Test', 90, true),
       (58, 'Figaro', 145, true),
       (59, 'Hardcore Hustle', 81, true),
       (60, 'Strange Ways', 111, true),
       (61, 'Fancy Clown', 115, true),
       (62, 'Eye', 117, true),
       (63, 'Supervillain theme', 52, true),
       (64, 'All Caps', 130, true),
       (65, 'Great Day', 136, true),
       (66, 'Rhinestone Cowboy', 239, true);

INSERT INTO streaming_service.artists(artist_id, artist_name, artist_photo, artist_country)
VALUES (1, 'Travis Scott', 'url', 'USA'),
       (2, 'Quavo', 'url', 'USA'),
       (3, 'Future', 'url', 'USA'),
       (4, '2 Chainz', 'url', 'USA'),
       (5, 'Juicy J', 'url', 'USA'),
       (6, 'Kacy Hill', 'url', 'USA'),
       (7, 'The Weeknd', 'url', 'Canada'),
       (8, 'Swae Lee', 'url', 'USA'),
       (9, 'Chief Keef', 'url', 'USA'),
       (10, 'Kanye West', 'url', 'USA'),
       (11, 'Justin Bieber', 'url', 'Canada'),
       (12, 'Young Thug', 'url', 'USA'),
       (13, 'Toro y Moi', 'url', 'Japan'),
       (14, 'Schoolboy Q', 'url', 'USA'),
       (15, 'A$AP Rocky', 'url', 'USA'),
       (16, 'Joe Fox', 'url', 'USA'),
       (17, 'Bones', 'url', 'USA'),
       (18, 'M.I.A.', 'url', 'UK'),
       (19, 'James Fauntleroy', 'url', 'USA'),
       (20, 'Lil Wayne', 'url', 'USA'),
       (21, 'Rod Stewart', 'url', 'UK'),
       (22, 'Mark Ronson', 'url', 'UK'),
       (23, 'Mos Def', 'url', 'USA'),
       (24, 'Acyde', 'url', 'Unknown'),
       (25, 'A$AP Yams', 'url', 'USA'),
       (26, 'MF DOOM', 'url', 'USA'),
       (27, 'Madlib', 'url', 'USA'),
       (28, 'MED', 'url', 'USA'),
       (29, 'Wildchild', 'url', 'USA'),
       (30, 'Stacy Epps', 'url', 'Unknown');

INSERT INTO streaming_service.playlists(playlist_id, user_id, playlist_name, playlist_cover)
VALUES (1, 1, 'My empty playlist', 'url'),
       (2, 2, 'My favourite albums', 'url'),
       (3, 2, 'Madvillain', 'url'),
       (4, 4, 'Random song lol', 'url'),
       (5, 5, 'Another name', 'url');

INSERT INTO streaming_service.tracks_and_artists(track_id, artist_id)
VALUES (1, 1),
       (2, 1),
       (2, 2),
       (3, 1),
       (3, 3),
       (3, 4),
       (4, 1),
       (4, 5),
       (5, 1),
       (5, 6),
       (6, 1),
       (6, 7),
       (7, 1),
       (7, 8),
       (7, 9),
       (8, 1),
       (8, 10),
       (9, 1),
       (10, 1),
       (11, 1),
       (11, 11),
       (11, 12),
       (12, 1),
       (12, 13),
       (13, 1),
       (14, 1),
       (15, 14),
       (16, 1),
       (17, 10),
       (18, 10),
       (19, 10),
       (20, 10),
       (21, 10),
       (21, 9),
       (22, 10),
       (23, 10),
       (24, 10),
       (25, 10),
       (26, 10),
       (27, 15),
       (27, 16),
       (28, 15),
       (28, 17),
       (29, 15),
       (29, 16),
       (29, 18),
       (30, 15),
       (31, 15),
       (32, 15),
       (33, 15),
       (34, 15),
       (34, 14),
       (35, 15),
       (35, 16),
       (35, 10),
       (36, 15),
       (36, 16),
       (37, 15),
       (37, 16),
       (38, 15),
       (38, 5),
       (39, 15),
       (39, 19),
       (40, 15),
       (41, 15),
       (41, 20),
       (42, 15),
       (43, 15),
       (43, 21),
       (43, 22),
       (44, 15),
       (44, 23),
       (44, 24),
       (44, 25),
       (45, 26),
       (45, 27),
       (46, 26),
       (46, 27),
       (47, 26),
       (47, 27),
       (48, 26),
       (48, 27),
       (49, 26),
       (49, 27),
       (49, 28),
       (50, 26),
       (50, 27),
       (51, 26),
       (51, 27),
       (52, 26),
       (52, 27),
       (53, 26),
       (53, 27),
       (54, 26),
       (54, 27),
       (55, 26),
       (55, 27),
       (56, 26),
       (56, 27),
       (57, 26),
       (57, 27),
       (58, 26),
       (58, 27),
       (59, 26),
       (59, 27),
       (59, 29),
       (60, 26),
       (60, 27),
       (61, 26),
       (61, 27),
       (62, 26),
       (62, 27),
       (62, 30),
       (63, 26),
       (63, 27),
       (64, 26),
       (64, 27),
       (65, 26),
       (65, 27),
       (66, 26),
       (66, 27);

INSERT INTO streaming_service.artists_and_users(artist_id, user_id)
VALUES (1, 1),
       (1, 2),
       (2, 2),
       (3, 2),
       (4, 2),
       (5, 2);

INSERT INTO streaming_service.users_and_tracks(user_id, track_id)
VALUES (1, 1),
       (1, 2),
       (1, 3),
       (1, 4),
       (1, 5),
       (1, 6),
       (1, 7),
       (1, 8),
       (1, 9),
       (1, 10),
       (1, 11),
       (1, 12),
       (1, 13),
       (1, 14),
       (1, 15),
       (1, 16),
       (1, 17),
       (1, 18),
       (1, 19),
       (1, 20),
       (1, 21),
       (1, 22),
       (1, 23),
       (1, 24),
       (1, 25),
       (1, 26),
       (1, 27),
       (1, 28),
       (1, 29),
       (1, 30),
       (1, 31),
       (1, 32),
       (1, 33),
       (1, 34),
       (1, 35),
       (1, 36),
       (1, 37),
       (1, 38),
       (1, 39),
       (1, 40),
       (1, 41),
       (1, 42),
       (1, 43),
       (1, 44),
       (1, 45),
       (1, 46),
       (1, 47),
       (1, 48),
       (1, 49),
       (1, 50),
       (1, 51),
       (1, 52),
       (1, 53),
       (1, 54),
       (1, 55),
       (1, 56),
       (1, 57),
       (1, 58),
       (1, 59),
       (1, 60),
       (1, 61),
       (1, 62),
       (1, 63),
       (1, 64),
       (1, 65),
       (1, 66);

INSERT INTO streaming_service.playlists_and_tracks(playlist_id, track_id, track_number)
VALUES (2, 1, 1),
       (2, 2, 2),
       (2, 3, 3),
       (2, 4, 4),
       (2, 5, 5),
       (2, 6, 6),
       (2, 7, 7),
       (2, 8, 8),
       (2, 9, 9),
       (2, 10, 10),
       (2, 11, 11),
       (2, 12, 12),
       (2, 13, 13),
       (2, 14, 14),
       (2, 15, 15),
       (2, 16, 16),
       (2, 17, 17),
       (2, 18, 18),
       (2, 19, 19),
       (2, 20, 20),
       (2, 21, 21),
       (2, 22, 22),
       (2, 23, 23),
       (2, 24, 24),
       (2, 25, 25),
       (2, 26, 26),
       (2, 27, 27),
       (2, 28, 28),
       (2, 29, 29),
       (2, 30, 30),
       (2, 31, 31),
       (2, 32, 32),
       (2, 33, 33),
       (2, 34, 34),
       (2, 35, 35),
       (2, 36, 36),
       (2, 37, 37),
       (2, 38, 38),
       (2, 39, 39),
       (2, 40, 40),
       (2, 41, 41),
       (2, 42, 42),
       (2, 43, 43),
       (2, 44, 44),
       (2, 45, 45),
       (2, 46, 46),
       (2, 47, 47),
       (2, 48, 48),
       (2, 49, 49),
       (2, 50, 50),
       (2, 51, 51),
       (2, 52, 52),
       (2, 53, 53),
       (2, 54, 54),
       (2, 55, 55),
       (2, 56, 56),
       (2, 57, 57),
       (2, 58, 58),
       (2, 59, 59),
       (2, 60, 60),
       (2, 61, 61),
       (2, 62, 62),
       (2, 63, 63),
       (2, 64, 64),
       (2, 65, 65),
       (2, 66, 66),
       (3, 45, 1),
       (3, 46, 2),
       (3, 47, 3),
       (3, 48, 4),
       (3, 49, 5),
       (3, 50, 6),
       (3, 51, 7),
       (3, 52, 8),
       (3, 53, 9),
       (3, 54, 10),
       (3, 55, 11),
       (3, 56, 12),
       (3, 57, 13),
       (3, 58, 14),
       (3, 59, 15),
       (3, 60, 16),
       (3, 61, 17),
       (3, 62, 18),
       (3, 63, 19),
       (3, 64, 20),
       (3, 65, 21),
       (3, 66, 22),
       (4, 34, 1);

