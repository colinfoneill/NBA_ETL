CREATE TABLE "player" (
    "player_id" VARCHAR   NOT NULL,
    "name" VARCHAR,
    CONSTRAINT "pk_player" PRIMARY KEY (
        "player_id"
     )
);

CREATE TABLE "demographics" (
    "player_id" VARCHAR NOT NULL,
    "height" NUMERIC,
    "weight" INT,
    "birth_year" INT,
    "birth_city" VARCHAR,
    "birth_state" VARCHAR
);

CREATE TABLE "salary" (
    "player_id" VARCHAR NOT NULL,
    "salary" INT,
    "season" INT,
    "team" VARCHAR
);

CREATE TABLE "position" (
    "player_id" VARCHAR,
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
    "player_id" VARCHAR NOT NULL,
    "high_school" VARCHAR,
    "hs_city" VARCHAR,
    "hs_state" VARCHAR,
    "college" VARCHAR,
    "college_2" VARCHAR
);

ALTER TABLE "demographics" ADD CONSTRAINT "fk_demographics_player_id" FOREIGN KEY("player_id")
REFERENCES "player" ("player_id");

ALTER TABLE "salary" ADD CONSTRAINT "fk_salary_player_id" FOREIGN KEY("player_id")
REFERENCES "player" ("player_id");

ALTER TABLE "position" ADD CONSTRAINT "fk_position_player_id" FOREIGN KEY("player_id")
REFERENCES "player" ("player_id");

ALTER TABLE "draft" ADD CONSTRAINT "fk_draft_player_id" FOREIGN KEY("player_id")
REFERENCES "player" ("player_id");

ALTER TABLE "schools" ADD CONSTRAINT "fk_schools_player_id" FOREIGN KEY("player_id")
REFERENCES "player" ("player_id");

