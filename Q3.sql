-------------------------------------------------------------------------------------------------------
-- Who is/are the agents having the most on sale properties in the neighborhoods that have clean 
-- restaurants, convenience stores, gyms, and coffee shops within walking distance as reviewed?
-------------------------------------------------------------------------------------------------------
SELECT G.full_name, G.nei_name, G.num
FROM (SELECT A.agnt_fname ||' '|| A.agnt_lname AS full_name, A.agnt_id, N.nei_name, N.nei_id, COUNT(*) AS num
FROM neighborhoods N, blocks B, properties P, states S, lists L, agents A
WHERE B.nei_id = N.nei_id AND P.blk_id = B.blk_id AND S.prpt_id = P.prpt_id AND S.st_sale = TRUE AND L.prpt_id = P.prpt_id AND A.agnt_id = L.agnt_id AND to_tsvector(N.review) @@ to_tsquery('convenience & stores & gyms & coffee & shops & clean & restaurants & walking & distance') 
GROUP BY A.agnt_id, N.nei_name, N.nei_id, A.agnt_fname, A.agnt_lname) AS G
WHERE G.num = (SELECT MAX(G.num) FROM (SELECT COUNT(*) AS num
FROM neighborhoods N, blocks B, properties P, states S, lists L, agents A
WHERE B.nei_id = N.nei_id AND P.blk_id = B.blk_id AND S.prpt_id = P.prpt_id AND S.st_sale = TRUE AND L.prpt_id = P.prpt_id AND A.agnt_id = L.agnt_id AND to_tsvector(N.review) @@ to_tsquery('convenience & stores & gyms & coffee & shops & clean & restaurants & walking & distance') 
GROUP BY A.agnt_id) AS G);





-- old HW

SELECT ES.dname, ES.cno
FROM (SELECT E.dname, E.cno, S.sectno, COUNT(*) AS en FROM enroll E, section S WHERE E.cno = S.cno GROUP BY E.dname, E.cno, S.sectno) AS ES LEFT JOIN (SELECT dname, COUNT(*) AS sn FROM major GROUP BY dname) AS M ON ES.dname = M.dname
WHERE ES.en < 0.08*(M.sn)