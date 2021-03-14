CREATE TABLE "demographics" (
    "player_id" VARCHAR   NOT NULL,
    "name" VARCHAR   NOT NULL,
    "height" NUMERIC   NOT NULL,
    "weight" INT   NOT NULL,
    "birth_year" INT   NOT NULL,
    "birth_city" VARCHAR   NOT NULL,
    "birth_state" VARCHAR   NOT NULL,
    CONSTRAINT "pk_demographics" PRIMARY KEY (
        "player_id"
     )
);

CREATE TABLE "salary" (
    "player_id" VARCHAR   NOT NULL,
    "salary" INT   NOT NULL,
    "season" INT   NOT NULL,
    "team" VARCHAR   NOT NULL,
    CONSTRAINT "pk_salary" PRIMARY KEY (
        "player_id"
     )
);

CREATE TABLE "position" (
    "player_id" VARCHAR   NOT NULL,
    "position" VARCHAR   NOT NULL,
    "shoots" VARCHAR   NOT NULL,
    CONSTRAINT "pk_position" PRIMARY KEY (
        "player_id"
     )
);

CREATE TABLE "draft" (
    "player_id" VARCHAR   NOT NULL,
    "draft_pick" VARCHAR   NOT NULL,
    "draft_round" VARCHAR   NOT NULL,
    "draft_team" VARCHAR   NOT NULL,
    "draft_year" INT   NOT NULL,
    CONSTRAINT "pk_draft" PRIMARY KEY (
        "player_id"
     )
);

CREATE TABLE "schools" (
    "player_id" VARCHAR   NOT NULL,
    "high_school" VARCHAR   NOT NULL,
    "hs_city" VARCHAR   NOT NULL,
    "hs_state" VARCHAR   NOT NULL,
    "college" VARCHAR   NOT NULL,
    "college_2" VARCHAR   NOT NULL,
    CONSTRAINT "pk_schools" PRIMARY KEY (
        "player_id"
     )
);