DROP TABLE Neighborhoods CASCADE;

---------------------
-- Create crime type
---------------------
CREATE TYPE crime AS(
name	varchar(20)	,
rate	real
);

------------------------------
-- Create Neighborhoods table
------------------------------
CREATE TABLE Neighborhoods
(
	nei_id		varchar(20)	,
	nei_name	varchar(20) ,
	nei_crime	crime[]		,
	review		text		,
	PRIMARY KEY (nei_id)			
);

--------------------------------
-- Populate Neighborhoods table
--------------------------------
INSERT INTO Neighborhoods VALUES('nei1','Battery Park City','{"(Assault, 0.01)","(Murder, 0.02)","(Rape, 0)","(Robbery, 0.06)","(Burglary, 0.01)","(Theft, 0.02)"}','The parks, the activities, the views , the schools, the convenience, and now the stores and restaurants are all reasons to love BPC. Every neighborhood in NYC may have downsides - you give up something - parks for restaurants or schools for convenience - not in BPC. Love it here!');
INSERT INTO Neighborhoods VALUES('nei2','Chelsea','{"(Assault, 0.04)","(Murder, 0.01)","(Rape, 0.06)","(Robbery, 0)","(Burglary, 0.04)","(Theft, 0.01)"}','I have moved here, to Chelsea from Western Massachusetts to attend college and I absolutely love this neighborhood! It is kept very clean, is consistently overseen by police officers in the nearby station, and very family-friendly. There are lots of food variety options; everything from your guilty fast food pleasures to organic & vegan choices as well. The streets are very easy to navigate and if you are unsure, there are always residents who are willing to help & answer any questions! It is a bustling, fast-moving community and a great choice for anyone with the similar lifestyle!');
INSERT INTO Neighborhoods VALUES('nei3','Kips Bay','{"(Assault, 0.02)","(Murder, 0.06)","(Rape, 0.02)","(Robbery, 0.02)","(Burglary, 0.01)","(Theft, 0.01)"}','It is very nice and very comfortable.');
INSERT INTO Neighborhoods VALUES('nei4','Financial District','{"(Assault, 0)","(Murder, 0.04)","(Rape, 0.01)","(Robbery, 0.04)","(Burglary, 0.02)","(Theft, 0.02)"}','I love living in the Financial District. I always have access to any part of the city. Almost every subway line stops through Fulton Station. The area is super safe, and I have never felt threatened coming home. There are three grocery stores walking distance, and many give student discounts. It is a younger crowd living in this area because Pace University is right here.');
INSERT INTO Neighborhoods VALUES('nei5','Murray Hill','{"(Assault, 0.04)","(Murder, 0.04)","(Rape, 0)","(Robbery, 0.06)","(Burglary, 0.06)","(Theft, 0)"}','Murray Hill neighborhood is filled with people from different cultures, businesses, and living complexes. There is always something to do or somewhere to go such as the grocery store, pizza store, newspaper stand, restaurants, clothing boutique, pharmacy, movie theater, and libraries. Murray Hill feels safe because there is a sense of community, closure, and security. The mixture of locals, commuters, and tourists enhances the diversity in the neighborhood. The neighborhood is often quiet, but once it hits rush hour during the afternoon and at nighttime, that is when the streets become the busiest. From all 5 boroughs, I am glad I chose to live in such a welcoming place.');
INSERT INTO Neighborhoods VALUES('nei6','Gramercy','{"(Assault, 0.04)","(Murder, 0)","(Rape, 0.06)","(Robbery, 0)","(Burglary, 0.01)","(Theft, 0.02)"}','I lived in Stuyvesant Town and later in Peter Cooper Village and both are fantastic. I loved the area and both provide easy access to express buses uptown and cross town, L at 14th street, and 4,5,6 trains. PCV and Stuyuvesant Town are possibly the best value apartments in the whole city. The grounds around PCV and Stuy Town are wonderful and super dog and family friendly. It is amazing to be able to live in such a quiet, calm area tucked into such a chaotic city. ');
INSERT INTO Neighborhoods VALUES('nei7','Tribeca','{"(Assault, 0)","(Murder, 0.01)","(Rape, 0.01)","(Robbery, 0.02)","(Burglary, 0.02)","(Theft, 0.02)"}','Tribeca was once the neighborhood of trailblazers who settled into the community before it was "the place to be." One would awaken to the aroma of the Martinsons Coffee warehouse located at what now is Robert DiNeros hotel and restaurant at the southwest corner of Greenwich and North Moore Streets. On weekdays, one would encounter the hustle and bustle of egg and cheese purveyors at their warehouses, that are now condo lofts, scattered throughout the neighborhood; now offices workers dominate those streets. Evenings used to remind me of nights in the low desert of the Mojave Desert in Southern California, sans the cry of coyotes. Now, there are street lights along Greenwich Street where stop signs once were while teens used it as a football field. The peaceful nights, aromatic days, and easy commute attracted me to Tribeca. The shopping, restaurants, and enviable housing deal keep me here, though not necessarily in that order.');
INSERT INTO Neighborhoods VALUES('nei8','Hells Kitchen','{"(Assault, 0.02)","(Murder, 0.05)","(Rape, 0.04)","(Robbery, 0)","(Burglary, 0.04)","(Theft, 0.02)"}','I love living where I do. I live literally five minutes away from almost everything. There is a local library, supermarket, places to shop, movie theater, and many more, all within a few minutes from my home. I love how there is always construction because to me construction is a symbol of improvement and innovation. New York is modernizing everyday for the better. Also, since it is NY it is a tourist attraction. I love witnessing and observing people from all over the world. If I could i would chose to live here forever.');
INSERT INTO Neighborhoods VALUES('nei9','Morningside Heights','{"(Assault, 0.02)","(Murder, 0.02)","(Rape, 0)","(Robbery, 0.02)","(Burglary, 0.02)","(Theft, 0.03)"}','It is an already gentrified, family-friendly cubby of Manhattan, essentially an extension of the Upper West Side at this point. Columbia University is largely responsible for the safety and cleanliness that did not exist 20 years ago. If there is anything to change, it is more housing for non-Columbia students and professors. The university has a hold on the neighborhood.');
INSERT INTO Neighborhoods VALUES('nei10','Nolita','{"(Assault, 0)","(Murder, 0.01)","(Rape, 0.03)","(Robbery, 0.01)","(Burglary, 0)","(Theft, 0.02)"}','Since the lack crime, many tourist come to visit and experience the old world architecture with the new world trends collide. The only crime I have witness personally in Soho tends to be done by drunks from nearby bars.');
INSERT INTO Neighborhoods VALUES('nei11','Upper West Side','{"(Assault, 0)","(Murder, 0.01)","(Rape, 0.01)","(Robbery, 0.02)","(Burglary, 0.02)","(Theft, 0.03)"}','The Upper West Side of Manhattan is the best place to live. The community is diverse, safe, and bustling. Everyone from young families, older couples, to students live in the area. The neighborhood is one of the safest and cleanest in New York. Another plus: not too many tourists clogging up the street! You could eat in a different restaurant for every meal for the rest of your life and you wouldn not be able to get to all of the restaurants in the neighborhood. Everyone is friendly (despite what the rest of America thinks of New Yorkers!) and I plan on raising a family here when the time comes. UWS is a 5 star experience!');
INSERT INTO Neighborhoods VALUES('nei12','Upper East Side','{"(Assault, 0)","(Murder, 0)","(Rape, 0)","(Robbery, 0)","(Burglary, 0)","(Theft, 0)"}','Friendly, clean, and many great restaurants! There are subways and buses in this neighborhood that typically run on schedule. There are convenience stores, gyms, coffee shops, and schools all within walking distance.');
INSERT INTO Neighborhoods VALUES('nei13','Midtown','{"(Assault, 0.05)","(Murder, 0.05)","(Rape, 0.06)","(Robbery, 0.03)","(Burglary, 0.03)","(Theft, 0.03)"}','It is a beautiful, very accessible area, with access to 8 subway lines within a one block radius and over 5 different bus lines in the same vicinity. I love the area, I really do - there is shopping, good food available, and the park is right across the street. great for families with kids and pets, but also perfectly suitable for a lone wolf. I would say the only drawback is the increasing homeless problem...we have our "regular" homeless, but they have gotten rowdier in recent months. Also, the pedicab drivers and bike rental salespeople are the most annoying, invasive people on the planet - and they are EVERYWHERE. on every corner, begging you to come with them and take a pedicab ride or rent a bike. That leads to another big drawback - the tourists. They, too, are everywhere. I hate tourists,so it definitely gets to me. I try to hang around outside towards the evening, when most tourists and pop-up salesmen are gone, and it is emptier, quieter, and an overall much nicer area. At the end of the day though, these are very minor things in the scheme of it all. It is really a wonderful area, and I think I would still live here if I could do it all over again - it is just so accessible and so full of life and rich with culture - it is very, very New York, in the best way possible.');
INSERT INTO Neighborhoods VALUES('nei14','Greenwich Village','{"(Assault, 0)","(Murder, 0.05)","(Rape, 0.03)","(Robbery, 0.03)","(Burglary, 0.03)","(Theft, 0.03)"}','I was born into a family that has its roots buried deep into Greenwich Village. My grandfather, Mario Saulig, emigrated to Greenwich Village in 1955 from Italy and my family has lived here ever since. I went to public school in the Village and had a great time. The school was welcoming and friendly. I made friends with many of my neighbors at a young and continue to talk to them even as an 18 year old. I never feel that safety is an issue while in my neighborhood. I have come home well into the morning hours and had no more concern for my safety than if I were coming home at noon. My high school is located in Brooklyn, New York and every time I get off of the subway and see the brown historic district street signs I breath a sign of relief that I am home.');

------------------------------------------------
-- Add nei_id and FK constrains to Blocks
-- Populate nei_id
-- Add NOT Null because every block must locate
-- in one neigbhood. 
------------------------------------------------
ALTER TABLE Blocks ADD nei_id varchar(20);
ALTER TABLE Blocks ADD  FOREIGN KEY(nei_id) REFERENCES Neighborhoods(nei_id);

-------------------------------------
-- Populate Blocks table with nei_id
-------------------------------------
UPDATE Blocks set nei_id = 'nei1' WHERE blk_id ='blk1';
UPDATE Blocks set nei_id = 'nei2' WHERE blk_id ='blk2';
UPDATE Blocks set nei_id = 'nei3' WHERE blk_id ='blk3';
UPDATE Blocks set nei_id = 'nei4' WHERE blk_id ='blk4';
UPDATE Blocks set nei_id = 'nei5' WHERE blk_id ='blk5';
UPDATE Blocks set nei_id = 'nei6' WHERE blk_id ='blk6';
UPDATE Blocks set nei_id = 'nei7' WHERE blk_id ='blk7';
UPDATE Blocks set nei_id = 'nei8' WHERE blk_id ='blk8';
UPDATE Blocks set nei_id = 'nei9' WHERE blk_id ='blk9';
UPDATE Blocks set nei_id = 'nei10' WHERE blk_id ='blk10';
UPDATE Blocks set nei_id = 'nei11' WHERE blk_id ='blk11';
UPDATE Blocks set nei_id = 'nei12' WHERE blk_id ='blk12';
UPDATE Blocks set nei_id = 'nei13' WHERE blk_id ='blk13';
UPDATE Blocks set nei_id = 'nei14' WHERE blk_id ='blk14';
UPDATE Blocks set nei_id = 'nei1' WHERE blk_id ='blk15';
UPDATE Blocks set nei_id = 'nei2' WHERE blk_id ='blk16';
UPDATE Blocks set nei_id = 'nei3' WHERE blk_id ='blk17';
UPDATE Blocks set nei_id = 'nei4' WHERE blk_id ='blk18';
UPDATE Blocks set nei_id = 'nei5' WHERE blk_id ='blk19';
UPDATE Blocks set nei_id = 'nei6' WHERE blk_id ='blk20';
UPDATE Blocks set nei_id = 'nei7' WHERE blk_id ='blk21';
UPDATE Blocks set nei_id = 'nei8' WHERE blk_id ='blk22';
UPDATE Blocks set nei_id = 'nei9' WHERE blk_id ='blk23';
UPDATE Blocks set nei_id = 'nei10' WHERE blk_id ='blk24';
UPDATE Blocks set nei_id = 'nei11' WHERE blk_id ='blk25';
UPDATE Blocks set nei_id = 'nei12' WHERE blk_id ='blk26';
UPDATE Blocks set nei_id = 'nei13' WHERE blk_id ='blk27';
UPDATE Blocks set nei_id = 'nei14' WHERE blk_id ='blk28';
UPDATE Blocks set nei_id = 'nei1' WHERE blk_id ='blk29';
UPDATE Blocks set nei_id = 'nei2' WHERE blk_id ='blk30';
UPDATE Blocks set nei_id = 'nei3' WHERE blk_id ='blk31';
UPDATE Blocks set nei_id = 'nei4' WHERE blk_id ='blk32';
UPDATE Blocks set nei_id = 'nei5' WHERE blk_id ='blk33';
UPDATE Blocks set nei_id = 'nei6' WHERE blk_id ='blk34';
UPDATE Blocks set nei_id = 'nei7' WHERE blk_id ='blk35';
UPDATE Blocks set nei_id = 'nei8' WHERE blk_id ='blk36';
UPDATE Blocks set nei_id = 'nei9' WHERE blk_id ='blk37';
UPDATE Blocks set nei_id = 'nei10' WHERE blk_id ='blk38';
UPDATE Blocks set nei_id = 'nei11' WHERE blk_id ='blk39';
UPDATE Blocks set nei_id = 'nei12' WHERE blk_id ='blk40';
UPDATE Blocks set nei_id = 'nei13' WHERE blk_id ='blk41';

------------------------------------------
-- Alter Blocks table set nei_id NOT NULL
------------------------------------------
ALTER TABLE Blocks ALTER COLUMN nei_id SET NOT NULL;

