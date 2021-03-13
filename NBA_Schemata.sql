-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "player" (
    "player_id" VARCHAR   NOT NULL,
    "name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_player" PRIMARY KEY (
        "player_id"
     )
);

CREATE TABLE "demographics" (
    "player_id" VARCHAR   NOT NULL,
    "height" NUMERIC,
    "weight" INT,
    "birth_year" INT,
    "birth_city" VARCHAR,
    "birth_state" VARCHAR
);

CREATE TABLE "stats" (
    "name" VARCHAR   NOT NULL,
    "g" INT,
    "mp" INT,
    "fg" INT,
    "fga" INT,
    "3p" INT,
    "3pa" INT,
    "ft" INT,
    "fta" INT,
    "orb" INT,
    "trb" INT,
    "ast" INT,
    "stl" INT,
    "blk" INT,
    "tov" INT,
    "pf" INT,
    "pts" INT,
    "fg_pct" NUMERIC,
    "3p_pct" NUMERIC,
    "ft_pct" NUMERIC,
    "mp_avg" NUMERIC,
    "pts_avg" NUMERIC,
    "trb_avg" NUMERIC,
    "ast_avg" NUMERIC
);

CREATE TABLE "years_played" (
    "name" VARCHAR   NOT NULL,
    "years" int,
    CONSTRAINT "pk_years_played" PRIMARY KEY (
        "name"
     )
);

CREATE TABLE "salary" (
    "player_id" VARCHAR   NOT NULL,
    "salary" INT,
    "season" INT,
    "team" VARCHAR
);

CREATE TABLE "position" (
    "player_id" VARCHAR   NOT NULL,
    "position" VARCHAR,
    "shoots" VARCHAR
);

CREATE TABLE "draft" (
    "player_id" VARCHAR NOT NULL,
    "draft_pick" VARCHAR,
    "draft_round" VARCHAR,
    "draft_team" VARCHAR,
    "draft_year" INT
);

CREATE TABLE "schools" (
    "player_id" VARCHAR,
    "high_school" VARCHAR,
    "hs_city" VARCHAR,
    "hs_state" VARCHAR,
    "college" VARCHAR,
    "college_2" VARCHAR
);

ALTER TABLE "player" ADD CONSTRAINT "fk_player_name" FOREIGN KEY("name")
REFERENCES "years_played" ("name");

ALTER TABLE "demographics" ADD CONSTRAINT "fk_demographics_player_id" FOREIGN KEY("player_id")
REFERENCES "player" ("player_id");

ALTER TABLE "stats" ADD CONSTRAINT "fk_stats_name" FOREIGN KEY("name")
REFERENCES "years_played" ("name");

ALTER TABLE "salary" ADD CONSTRAINT "fk_salary_player_id" FOREIGN KEY("player_id")
REFERENCES "player" ("player_id");

ALTER TABLE "position" ADD CONSTRAINT "fk_position_player_id" FOREIGN KEY("player_id")
REFERENCES "player" ("player_id");

ALTER TABLE "draft" ADD CONSTRAINT "fk_draft_player_id" FOREIGN KEY("player_id")
REFERENCES "player" ("player_id");

ALTER TABLE "schools" ADD CONSTRAINT "fk_schools_player_id" FOREIGN KEY("player_id")
REFERENCES "player" ("player_id");

