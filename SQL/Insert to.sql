use ArtGallery;


INSERT INTO Artist (Name, Surname)
VALUES
('Pablo', 'Picasso'),
('Vincent', 'van Gogh'),
('Leonardo', 'da Vinci'),
('Frida', 'Kahlo'),
('Claude', 'Monet'),
('Andy', 'Warhol');
 GO

 

INSERT INTO Genre (Description)
VALUES
('Art Nouveau'),
('Classicism'),
('Portrait'),
('Anciet Art'),
('Modern Art');
GO


Alter table Artwork
add ArtworkTitle VARCHAR(90);

INSERT INTO Artwork
(ArtworkTitle, ArtistID, GenreID)
VALUES
('Starry Night', 2, 1),
('Sunflowers', 2, 1),
('Mona Lisa', 3, 3),
('The Last Supper', 3, 3),
('Guernica', 1, 4),
('Les Demoiselles d''Avignon', 1, 4),
('The Weeping Woman', 1, 2),
('Self Portrait', 4, 3),
('The Two Fridas', 4, 2),
('Water Lilies', 5, 1),
('Impression Sunrise', 5, 1),
('Woman with a Parasol', 5, 1),
('Campbell Soup Cans', 6, 5),
('Marilyn Diptych', 6, 5),
('Eight Elvises', 6, 5),
('The Kiss', 4, 2),
('Blue Abstract', 1, 4),
('Portrait of Dora Maar', 1, 3),
('Irises', 2, 1),
('Almond Blossoms', 2, 1);
GO


Alter table Exhibition
add Location VARCHAR(90);

INSERT INTO Exhibition
(Description,Location)
VALUES
('Masters of Europe', 'Cape Town Gallery'),
('Modern Art Collection', 'Johannesburg Art Museum'),
('Portrait Masters', 'Durban Art Centre'),
('Impressionist Dreams', 'Cape Town Gallery'),
('European Classics', 'Pretoria Museum'),
('Art Through History','Johannesburg Art Museum'),
('Women in Art','Durban Art Centre'),
('Contemporary Masters','Cape Town Gallery'),
('Famous Portraits','Pretoria Museum'),
('Art and Culture','Johannesburg Art Museum'),
('European Impressionism','Cape Town Gallery'),
('Mexican Art Exhibition','Durban Art Centre'),
('The Great Artists','Pretoria Museum'),
('Modern Masters','Johannesburg Art Museum'),
('International Art Showcase','Cape Town Gallery');
GO


INSERT INTO Entry(ArtWorkId,ExhibitionId)
Values
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,7),
(9,1),
(1,2),
(1,3),
(2,4),
(2,5),
(14,6),
(15,6),
(17,1),
(18,2),
(19,3),
(19,4),
(20,5);

