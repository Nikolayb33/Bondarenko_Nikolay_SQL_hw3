USE vk;
CREATE TABLE files (
    id SERIAL,
    filename VARCHAR(255), -- �������� �����
    loading_file_at DATETIME default NOW(), -- �������� ����� � �������
    updated_at on DATETIME current_timestamp(), -- ���������� ����� � �������
    
    index filename_idx (filename), -- ����������� ������� ����� � �����������
) COMMENT '����� � ��';

create table musics (
    id SERIAL,
    music_name VARCHAR(255), -- �������� �����
    from_user_id BIGINT unsigned not null, -- id ���������
    
    index music_name_idx (music_name), -- ����������� ������� �����, ����������������
    foreign key (from_user_id) reference users(id) -- ������� ����, ������� ���������� � ������������� ��
) COMMENT '������ � ��';

create table games (
    id SERIAL,
    games_name VARCHAR(255), -- �������� ����
    players_id BIGINT unsigned not null, -- id �������
    
    index games_name_idx (games_name), -- ����������� ������� ���, ����������������
    foreign key (players_id) reference users(id) -- ������� ����, ������� ������� � ������������� ��
) COMMENT '���� � ��';

    