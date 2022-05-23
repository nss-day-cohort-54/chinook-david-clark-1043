-- Provide a query that shows all the Tracks, but displays no IDs. The resultant table should include:
-- Album name
-- Media type
-- Genre

SELECT
    t.name AS TrackName,
    t.albumId,
    t.mediatypeid,
    t.genreid,
    t.composer,
    t.milliseconds,
    t.bytes,
    t.unitprice,
    a.title AS AlbumTitle,
    mt.name,
    g.name AS Genre
FROM Track t
JOIN Album a
    ON a.albumid = t.albumid
JOIN MediaType mt
    ON mt.mediatypeid = t.mediatypeid
JOIN Genre g
    ON g.genreid = t.genreid