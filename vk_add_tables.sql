USE vk;
CREATE TABLE files (
    id SERIAL,
    filename VARCHAR(255), -- название файла
    loading_file_at DATETIME default NOW(), -- загрузка файла в систему
    updated_at on DATETIME current_timestamp(), -- обновление файла в системе
    
    index filename_idx (filename), -- копирование перечня файла с сортировкой
) COMMENT 'Файлы в вк';

create table musics (
    id SERIAL,
    music_name VARCHAR(255), -- название песни
    from_user_id BIGINT unsigned not null, -- id слушателя
    
    index music_name_idx (music_name), -- копирование перечня песен, отсортированного
    foreign key (from_user_id) reference users(id) -- внешний ключ, отсылка слушателей к пользователям вк
) COMMENT 'Музыка в вк';

create table games (
    id SERIAL,
    games_name VARCHAR(255), -- название игры
    players_id BIGINT unsigned not null, -- id игроков
    
    index games_name_idx (games_name), -- копирование перечня игр, отсортированного
    foreign key (players_id) reference users(id) -- внешний ключ, отсылка игроков к пользователям вк
) COMMENT 'Игры в вк';

    