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
    "height" NUMERIC   NOT NULL,
    "weight" INT   NOT NULL,
    "birth_year" INT   NOT NULL,
    "birth_city" VARCHAR   NOT NULL,
    "birth_state" VARCHAR   NOT NULL
);

CREATE TABLE "stats" (
    "name" VARCHAR   NOT NULL,
    "g" INT   NOT NULL,
    "mp" INT   NOT NULL,
    "fg" INT   NOT NULL,
    "fga" INT   NOT NULL,
    "3p" INT   NOT NULL,
    "3pa" INT   NOT NULL,
    "ft" INT   NOT NULL,
    "fta" INT   NOT NULL,
    "orb" INT   NOT NULL,
    "trb" INT   NOT NULL,
    "ast" INT   NOT NULL,
    "stl" INT   NOT NULL,
    "blk" INT   NOT NULL,
    "tov" INT   NOT NULL,
    "pf" INT   NOT NULL,
    "pts" INT   NOT NULL,
    "fg%" NUMERIC   NOT NULL,
    "3p%" NUMERIC   NOT NULL,
    "ft%" NUMERIC   NOT NULL,
    "mp_avg" NUMERIC   NOT NULL,
    "pts_avg" NUMERIC   NOT NULL,
    "trb_avg" NUMERIC   NOT NULL,
    "ast_avg" NUMERIC   NOT NULL
);

CREATE TABLE "years_played" (
    "name" VARCHAR   NOT NULL,
    "years" int   NOT NULL,
    CONSTRAINT "pk_years_played" PRIMARY KEY (
        "name"
     )
);

CREATE TABLE "salary" (
    "player_id" VARCHAR   NOT NULL,
    "salary" INT   NOT NULL,
    "season" INT   NOT NULL,
    "team" VARCHAR   NOT NULL
);

CREATE TABLE "position" (
    "player_id" VARCHAR   NOT NULL,
    "position" VARCHAR   NOT NULL,
    "shoots" VARCHAR   NOT NULL
);

CREATE TABLE "draft" (
    "player_id" VARCHAR   NOT NULL,
    "draft_pick" VARCHAR   NOT NULL,
    "draft_round" VARCHAR   NOT NULL,
    "draft_team" VARCHAR   NOT NULL,
    "draft_year" INT   NOT NULL
);

CREATE TABLE "schools" (
    "player_id" VARCHAR   NOT NULL,
    "high_school" VARCHAR   NOT NULL,
    "hs_city" VARCHAR   NOT NULL,
    "hs_state" VARCHAR   NOT NULL,
    "college" VARCHAR   NOT NULL,
    "college_2" VARCHAR   NOT NULL
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

