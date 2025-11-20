BEGIN;

--
-- ACTION DROP TABLE
--
DROP TABLE "categories" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "categories" (
    "id" bigserial PRIMARY KEY,
    "category" text NOT NULL,
    "detailId" bigint NOT NULL,
    "combien" bigint NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "detail" (
    "id" bigserial PRIMARY KEY,
    "genre" text NOT NULL,
    "mot" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "japanese" (
    "id" bigserial PRIMARY KEY,
    "principalId" bigint NOT NULL,
    "japaneseName" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "launch_sites" (
    "id" bigserial PRIMARY KEY,
    "location" text NOT NULL,
    "precise" text NOT NULL,
    "site" text NOT NULL,
    "lat" double precision NOT NULL,
    "lon" double precision NOT NULL
);

--
-- ACTION DROP TABLE
--
DROP TABLE "pays" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "pays" (
    "id" bigserial PRIMARY KEY,
    "pays" text NOT NULL,
    "combien" bigint NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "principal_detail" (
    "id" bigserial PRIMARY KEY,
    "principalId" bigint NOT NULL,
    "detailId" bigint NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "principal_sites" (
    "id" bigserial PRIMARY KEY,
    "principalId" bigint NOT NULL,
    "siteId" bigint NOT NULL
);

--
-- ACTION DROP TABLE
--
DROP TABLE "seas" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "seas" (
    "id" bigserial PRIMARY KEY,
    "sea" text NOT NULL,
    "area" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "space" (
    "id" bigserial PRIMARY KEY,
    "principalId" bigint NOT NULL,
    "annee" text NOT NULL,
    "month" bigint NOT NULL,
    "day" bigint NOT NULL,
    "point" bigint NOT NULL,
    "affair" text NOT NULL,
    "location" text NOT NULL,
    "precise" text NOT NULL,
    "hecX" double precision NOT NULL,
    "hecY" double precision NOT NULL,
    "hecZ" double precision NOT NULL,
    "julianD" bigint NOT NULL,
    "gLat" double precision NOT NULL,
    "gLon" double precision NOT NULL,
    "lightYear" double precision NOT NULL
);

--
-- ACTION DROP TABLE
--
DROP TABLE "stars" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "stars" (
    "id" bigserial PRIMARY KEY,
    "star" text NOT NULL,
    "area" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "target" (
    "id" bigserial PRIMARY KEY,
    "specialite" text NOT NULL,
    "detailId" bigint NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "with_qgis" (
    "id" bigserial PRIMARY KEY,
    "principalId" bigint NOT NULL,
    "name" text NOT NULL,
    "geo" text NOT NULL,
    "year" text NOT NULL
);

--
-- ACTION ALTER TABLE
--
ALTER TABLE "serverpod_user_info" ALTER COLUMN "userName" DROP NOT NULL;

--
-- MIGRATION VERSION FOR acorn
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('acorn', '20251118225444486', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20251118225444486', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth', '20240520102713718', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240520102713718', "timestamp" = now();


COMMIT;
