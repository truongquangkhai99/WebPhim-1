CREATE DATABASE WEBPHIM;
USE WEBPHIM;

drop database WEBPHIM;

CREATE TABLE THELOAI(
    ID INT not null AUTO_INCREMENT,
    TENTHELOAI text,
    PRIMARY KEY (ID)
);

CREATE TABLE PHIM(
    ID INT NOT NULL AUTO_INCREMENT,
    TENPHIMVN text,
    TENPHIMGOC text,
    TRANGTHAI text,
    DAODIEN text,
    DIENVIEN TEXT,
    QUOCGIA text,
    NAMPHATHANH DATE,
    THOILUONG INT,
    CHATLUONG text,
    DOPHANGIAI text,
    NGONNGU text,
    ANHPHIM TEXT,
    NOIDUNGPHIM TEXT,
    DUONGDAN TEXT,
    DANHGIA INT,
    TRAILER TEXT,
    PRIMARY KEY (ID)
);

CREATE TABLE CHITIETTHELOAI(
    IDPHIM INT,
    IDTHELOAI INT,
    PRIMARY KEY (IDPHIM, IDTHELOAI)
);

CREATE TABLE PHIMLE(
    IDPHIM INT,
    PRIMARY KEY (IDPHIM)
);

CREATE TABLE PHIMBO(
    IDPHIM INT,
    SOTAP INT,
    SOTAPHIENTAI INT,
    PRIMARY KEY (IDPHIM)
);
CREATE TABLE NGUOI(
    ID INT NOT NULL AUTO_INCREMENT,
    HOTEN text,
    NGAYSINH DATE,
    QUOCTICH text,
    TIEUSU TEXT,
    PRIMARY KEY (ID)
);
CREATE TABLE DAODIEN(
    IDDAODIEN INT NOT NULL PRIMARY KEY
);

CREATE TABLE DIENVIEN(
    IDDIENVIEN INT NOT NULL PRIMARY KEY
);

CREATE TABLE CHITEIDAODIEN(
    IDDAODIEN INT,
    IDPHIM INT,
    PRIMARY KEY (IDDAODIEN, IDPHIM)
);

CREATE TABLE CHITIETDIENVIEN(
    IDDIENVIEN INT,
    IDPHIM INT,
    PRIMARY KEY (IDDIENVIEN, IDPHIM)
);

CREATE TABLE QUOCGIA(
    ID INT AUTO_INCREMENT NOT NULL PRIMARY KEY ,
    TEN text
);

CREATE TABLE CHITIETQUOCGIA(
    IDPHIM INT,
    ID INT,
    PRIMARY KEY (IDPHIM, ID)
);

ALTER TABLE CHITIETTHELOAI ADD CONSTRAINT FK_CHITIETTHELOAI_PHIM FOREIGN KEY (IDPHIM) REFERENCES PHIM(ID);
ALTER TABLE CHITIETTHELOAI ADD CONSTRAINT FK_CHITIETTHELOAI_THELOAI FOREIGN KEY (IDTHELOAI) REFERENCES THELOAI(ID);
ALTER TABLE PHIMLE ADD CONSTRAINT FK_PHIMLE_PHIM FOREIGN KEY (IDPHIM) REFERENCES PHIM(ID);
ALTER TABLE PHIMBO ADD CONSTRAINT FK_PHIMbO_PHIM FOREIGN KEY (IDPHIM) REFERENCES PHIM(ID);
ALTER TABLE CHITEIDAODIEN ADD CONSTRAINT FK_CHITIETDAODIEN_PHIM FOREIGN KEY (IDPHIM) REFERENCES PHIM(ID);
ALTER TABLE CHITEIDAODIEN ADD CONSTRAINT FK_CHITIETDAODIEN_DAODIEN FOREIGN KEY (IDDAODIEN) REFERENCES DAODIEN(IDDAODIEN);
ALTER TABLE CHITIETDIENVIEN ADD CONSTRAINT FK_CHITIETDIENVIEN_DIENVIEN FOREIGN KEY (IDDIENVIEN) REFERENCES DIENVIEN(IDDIENVIEN);
ALTER TABLE CHITIETDIENVIEN ADD CONSTRAINT FK_CHITIETDIENVIEN_PHIM FOREIGN KEY (IDPHIM) REFERENCES PHIM(ID);
ALTER TABLE CHITIETQUOCGIA ADD CONSTRAINT FK_CHITIETQUOCGIA_PHIM FOREIGN KEY (IDPHIM) REFERENCES PHIM(ID);
ALTER TABLE CHITIETQUOCGIA ADD CONSTRAINT FK_CHITIETQUOCGIA_QUOCGIA FOREIGN KEY (ID) REFERENCES QUOCGIA(ID);


INSERT INTO THELOAI(TENTHELOAI) VALUES ('Phim hành động'),
                                       ('Phim viễn tưởng'),
                                       ('Phim chiến tranh'),
                                       ('Phim hình sự'),
                                       ('Phim phiêu lưu'),
                                       ('Phim hài hước'),
                                       ('Phim võ thuật'),
                                       ('Phim kinh dị'),
                                       ('Phim hồi hộp - gây cấn'),
                                       ('Phim bí ẩn - siêu nhiên'),
                                       ('Phim cổ trang'),
                                       ('Phim thần thoại'),
                                       ('Phim tâm lý'),
                                       ('Phim tài liệu'),
                                       ('Phim tình cảm - lãng mạn'),
                                       ('Phim chính kịch - Drama'),
                                       ('Phim thể thao - âm nhạc'),
                                       ('Phim gia đình'),
                                       ('Phim hoạt hình');
INSERT INTO QUOCGIA(TEN) VALUES('Việt Nam');
INSERT INTO QUOCGIA(TEN) VALUES('Mỹ');
INSERT INTO QUOCGIA(TEN) VALUES('Hàn Quốc');
INSERT INTO QUOCGIA(TEN) VALUES('Trung Quốc');
INSERT INTO QUOCGIA(TEN) VALUES('Nhật Bản');
INSERT INTO QUOCGIA(TEN) VALUES('Hồng Kông');
INSERT INTO QUOCGIA(TEN) VALUES('Ấn Độ');
INSERT INTO QUOCGIA(TEN) VALUES('Thái Lan');
INSERT INTO QUOCGIA(TEN) VALUES('Pháp');
INSERT INTO QUOCGIA(TEN) VALUES('Đài Loan');
INSERT INTO QUOCGIA(TEN) VALUES('Úc');
INSERT INTO QUOCGIA(TEN) VALUES('Anh');
INSERT INTO QUOCGIA(TEN) VALUES('Cananda');
INSERT INTO QUOCGIA(TEN) VALUES('Quốc gia khác');
SELECT * FROM THELOAI;