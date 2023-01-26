SELECT min(b.userid) minimum, max(b.userid) maximum, fname
FROM User_ u, Insurance i, Buy b
GROUP BY b.userid