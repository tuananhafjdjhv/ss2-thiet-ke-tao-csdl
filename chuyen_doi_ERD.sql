create table nhacungcap(
	mancc int primary key auto_increment,
    tenncc varchar(100),
    diachi varchar(100),
    sdt varchar(12)
);
create table dondh(
	sodh int ,
    ngaydh datetime default now()
);
create table vattu(
	mavtu int primary key auto_increment,
    tenvtu varchar(255)
);
create table phieunhap(
	sopn int primary key auto_increment,
    ngaynhap date
);
create table phieuxuat(
	sopx int primary key auto_increment,
    ngayxuat date
);
create table chitietphieuxuat(
	dgxuat float,
    slxuat int,
    sopx int references phieuxuat(sopx),
    mavtu int references vattu(mavtu)
);
create table chitietphieunhap(
	dgnhap float,
    slnhap int,
    mavtu int references vattu(mavtu),
    sopn int 
);
create table chitietdondathang(
	sodh int references dondh(sodh),
    mavatu int references vattu(mavtu)
);
