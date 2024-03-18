BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "place_involved" (
    "id" serial PRIMARY KEY,
    "principalId" integer NOT NULL,
    "placeId" integer NOT NULL
);


--
-- MIGRATION VERSION FOR acorn
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('acorn', '20240315223727214', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240315223727214', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth', '20240115074239642', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074239642', "timestamp" = now();


COMMIT;
