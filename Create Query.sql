Create database ArtGallery;

use ArtGallery;

Create table Genre(
GenreId int identity(1,1) primary key,
Description VARCHAR(90)
);

Create table Artist(
ArtistId int identity(1,1) primary key,
Name VARCHAR(90),
Surname VARCHAR(90)
);

Create table ArtWork(
ArtWorkId int identity(1,1) primary key,
GenreId int,
ArtistId int

FOREIGN KEY (GenreId) REFERENCES Genre(GenreId),
FOREIGN KEY(ArtistId) REFERENCES Artist(ArtistId)
);

Create table Exhibition(
ExhibitionId int identity(1,1) primary key,
Description VARCHAR(90)
);

Create table Entry(
EntryId int identity(1,1) primary key,
ArtWorkId int,
ExhibitionId int,

FOREIGN KEY(ArtWorkId) REFERENCES ArtWork(ArtWorkId),
FOREIGN KEY(ExhibitionId) REFERENCES Exhibition(ExhibitionId)
);