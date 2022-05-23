-- Provide a query that shows the total number of tracks in each playlist. The resultant table should include:
-- Playlist name
-- Total number of tracks on each playlist

SELECT 
    p.name AS PlaylistName,
    COUNT(t.trackId) as TrackCount
FROM Track t
JOIN PlaylistTrack as pt
    ON pt.trackid = t.trackid
JOIN Playlist as p
    ON p.playlistid = pt.playlistid
GROUP BY p.playlistid