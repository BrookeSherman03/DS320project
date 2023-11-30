CREATE TABLE passingRating AS
SELECT Player, Tm, Pos, P.Age, CmpPercent, YperG, QBR, R.Rating
FROM passingdata AS P, roster AS R
WHERE P.Player = R.ï»¿Player
AND P.Pos = R.Position
ORDER BY R.Rating DESC;

CREATE TABLE receivingRating AS
SELECT Player, Tm, Pos, E.Age, CtchPercent, YperG, RperG, R.Rating
FROM receivingdata AS E, roster AS R
WHERE E.Player = R.ï»¿Player
AND E.Pos = R.Position
ORDER BY R.Rating DESC;

CREATE TABLE rushingRating AS
SELECT Player, Tm, Pos, U.Age, SuccPercent, YperG, YperA, R.Rating
FROM rushingdata AS U, roster AS R
WHERE U.Player = R.ï»¿Player
AND U.Pos = R.Position
ORDER BY R.Rating DESC;