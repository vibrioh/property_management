-- Who is/are the agnets having the most on sale properties in the neighborhoods that have clean restaurants, convenience stores, gyms, and coffee shops within walking distance as reviewed

SELECT G1.full_name, G1.number
FROM (
	SELECT A.agnt_fname ||' '|| A.agnt_lname AS full_name, G.number
	FROM (SELECT L.agnt_id, COUNT(*) AS number
			FROM Lists L RIGHT JOIN 
				(SELECT PS.prpt_id, N.nei_name
				FROM Blocks B,
					(SELECT nei_name, nei_id
						FROM neighborhoods
						WHERE to_tsvector(review) @@ to_tsquery('convenience & stores & gyms & coffee & shops & clean & restaurants & walking & distance')
						) AS N,
					(SELECT P.prpt_id, P.blk_id
						FROM Properties P LEFT JOIN States S ON P.prpt_id = S.prpt_id
						WHERE S.st_sale = TRUE
						) AS PS
				WHERE B.nei_id = N.nei_id AND PS.blk_id = B.blk_id) BNPS ON L.prpt_id = BNPS.prpt_id
			GROUP BY L.agnt_id) AS G LEFT JOIN Agents A ON G.agnt_id = A.agnt_id
	) AS G1, (SELECT MAX(G2.number)
	FROM (SELECT L.agnt_id, COUNT(*) AS number
			FROM Lists L RIGHT JOIN 
				(SELECT PS.prpt_id, N.nei_name
				FROM Blocks B,
					(SELECT nei_name, nei_id
						FROM neighborhoods
						WHERE to_tsvector(review) @@ to_tsquery('convenience & stores & gyms & coffee & shops & clean & restaurants & walking & distance')
						) AS N,
					(SELECT P.prpt_id, P.blk_id
						FROM Properties P LEFT JOIN States S ON P.prpt_id = S.prpt_id
						WHERE S.st_sale = TRUE
						) AS PS
				WHERE B.nei_id = N.nei_id AND PS.blk_id = B.blk_id) BNPS ON L.prpt_id = BNPS.prpt_id
			GROUP BY L.agnt_id) AS G2) AS G3
WHERE G1.number = G3.max;
