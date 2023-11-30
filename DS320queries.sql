CREATE TABLE passingRating AS
SELECT P.Player, Tm, Pos, P.Age, CmpPercent, YperG, QBR, R.Rating
FROM Passing AS P, Roster AS R
WHERE P.Player = R.Player
AND P.Pos = R.Position
ORDER BY R.Rating DESC;

CREATE TABLE receivingRating AS
SELECT E.Player, Tm, Pos, E.Age, CtchPercent, YperG, RperG, R.Rating
FROM Receivingdata AS E, Roster AS R
WHERE E.Player = R.Player
AND E.Pos = R.Position
ORDER BY R.Rating DESC;

CREATE TABLE rushingRating AS
SELECT U.Player, Tm, Pos, U.Age, SuccPercent, YperG, YperA, R.Rating
FROM Rushing AS U, Roster AS R
WHERE U.Player = R.Player
AND U.Pos = R.Position
ORDER BY R.Rating DESC;
