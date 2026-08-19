use ArtGallery;

--Statement to show artists--
SELECT*FROM Artist;

--Statement to show their artwork--
SELECT*FROM ArtWork;

--Statement to show Exhibition--
SELECT*FROM Exhibition;

--statement to show Genre--
SELECT*FROM Genre;

--statement to show Entry--
SELECT*FROM Entry;

--Update statement--
Update Entry
set ExhibitionId = 4
WHERE EntryId=7;

--Delete statement--
DELETE FROM Entry
WHERE ArtworkID = 20;

--Report of Artist their artwork title and genre--
SELECT
    A.ArtworkTitle,
    AR.Name + ' ' + AR.Surname AS Artist,
    G.Description AS Genre
FROM Artwork A
INNER JOIN Artist AR
    ON A.ArtistID = AR.ArtistID
INNER JOIN Genre G
    ON A.GenreID = G.GenreID
ORDER BY
    G.Description ASC,
    A.ArtworkTitle ASC;

    --Report of artists and their number of works using Group By--
    SELECT
    AR.Name + ' ' + AR.Surname AS Artist,
    COUNT(A.ArtworkID) AS NumberOfArtworks
FROM Artist AR
INNER JOIN Artwork A
    ON AR.ArtistID = A.ArtistID
GROUP BY
    AR.Name,
    AR.Surname
ORDER BY
    NumberOfArtworks DESC;

-- display artist who have created more than 3 artworks using Have statement--


    --Using joins to show Artworks and their exhibition--
    SELECT
    A.ArtworkID,
    A.ArtworkTitle,
    AR.Name + ' ' + AR.Surname AS Artist,
    G.Description AS Genre,
    E.Description,
    E.Location
FROM Artwork A
INNER JOIN Artist AR
    ON A.ArtistID = AR.ArtistID
INNER JOIN Genre G
    ON A.GenreID = G.GenreID
INNER JOIN Entry AE
    ON A.ArtworkID = AE.ArtworkID
INNER JOIN Exhibition E
    ON AE.ExhibitionID = E.ExhibitionID
ORDER BY
    A.ArtworkTitle ASC;
