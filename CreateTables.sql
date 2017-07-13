------------------------------------------------------------------------
-- Xiyan Liu & Jun Hu
-- http://www.cs.columbia.edu/~biliris/4111/17s/projects/proj1-2.html
-- Table creation scripts for Project1, Part2.
------------------------------------------------------------------------

-------------------------
-- Create Agents table
-------------------------
CREATE TABLE Agents
(
	agnt_id		varchar(20)										,
	agnt_tel	varchar(50)										,
	agnt_email	varchar(99) CHECK(agnt_email LIKE '%_@__%.__%')	,
	agnt_fname	varchar(50)										,
	agnt_lname	varchar(50)										,
	PRIMARY KEY (agnt_id)
);

-------------------------
-- Create Blocks table
-------------------------
CREATE TABLE Blocks
(
	blk_id		varchar(20)	,
	blk_water	boolean		,
	blk_bus		text		,
	blk_subway	text		,
	PRIMARY KEY (blk_id)					
);

------------------------------------------------------------
-- Create Properties table (contain Lies_in relationship)
------------------------------------------------------------
CREATE TABLE Properties
(
	prpt_id			varchar(20)			,
	prpt_zip		varchar(50)			,
	prpt_address	text				,
	prpt_bed		int					,
	prpt_bath		int					,
	prpt_square		real				,
	prpt_bdate		char(4)				,
	blk_id			varchar(20)	NOT NULL,
	PRIMARY KEY	(prpt_id)				,
	FOREIGN KEY (blk_id) REFERENCES Blocks		
);

-------------------------
-- Create Lists table
-------------------------
CREATE TABLE Lists
(
	agnt_id		varchar(20)						,
	prpt_id		varchar(20)						,
	PRIMARY KEY (agnt_id, prpt_id)				,
	FOREIGN KEY (agnt_id) REFERENCES Agents		,
	FOREIGN KEY (prpt_id) REFERENCES Properties
);

-------------------------
-- Create Owners table
-------------------------
CREATE TABLE Owners
(
	onr_ssn		varchar(20)			,
	onr_fname	varchar(50)	NOT NULL,
	onr_lname	varchar(50)	NOT NULL,
	PRIMARY KEY (onr_ssn)					
);

--------------------------
-- Create Belongs table
--------------------------
CREATE TABLE Blongs
(
	onr_ssn		varchar(20)					,
	prpt_id		varchar(20)					,
	PRIMARY KEY (onr_ssn, prpt_id)			,
	FOREIGN KEY (onr_ssn) REFERENCES Owners	,
	FOREIGN KEY (prpt_id) REFERENCES Properties
);

----------------------------------------------------------
-- Create Schools table (contain Contains relationship)
----------------------------------------------------------
CREATE TABLE Schools
(
	sch_id		varchar(20)				,
	sch_pri		text					,
	sch_mid		text					,
	sch_hi		text					,
	blk_id		varchar(20)	NOT NULL	,
	PRIMARY KEY (sch_id)				,
	FOREIGN KEY (blk_id) REFERENCES Blocks
);

---------------------------------------
-- Create States table (weak entity)
---------------------------------------
CREATE TABLE States
(
	st_start	date							,
	st_end		date							,
	st_sale		boolean	NOT NULL default true	,
	prpt_id		varchar(20)	NOT NULL			,
	PRIMARY KEY (st_start, prpt_id)				,
	FOREIGN KEY (prpt_id) REFERENCES Properties ON DELETE CASCADE
);

---------------------------------------
-- Create Prices table (weak entity)
---------------------------------------
CREATE TABLE Prices
(
	pr_list		int		CHECK (pr_sold > 0)		,
	pr_sold		int 	CHECK (pr_sold > 0)		,
	pr_eval 	int 	CHECK (pr_eval > 0)		,
	pr_taxde	boolean default false			,
	pr_maint	int 	CHECK (pr_maint >= 0)	,
	prpt_id		varchar(20)	NOT NULL			,
	PRIMARY KEY (pr_list, prpt_id)				,
	FOREIGN KEY (prpt_id) REFERENCES Properties ON DELETE CASCADE
);


