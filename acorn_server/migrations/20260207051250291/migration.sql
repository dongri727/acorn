BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "announcement" (
    "id" bigserial PRIMARY KEY,
    "title" text NOT NULL,
    "body" text NOT NULL,
    "publishedAt" timestamp without time zone NOT NULL,
    "targetPlatforms" text NOT NULL,
    "minBuild" bigint,
    "isPublished" boolean,
    "createdAt" timestamp without time zone
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "app_config" (
    "id" bigserial PRIMARY KEY,
    "minBuildIos" bigint,
    "latestBuildIos" bigint,
    "minBuildAndroid" bigint,
    "latestBuildAndroid" bigint,
    "minBuildWeb" bigint,
    "latestBuildWeb" bigint,
    "messageJa" text,
    "messageEn" text,
    "storeUrlIos" text,
    "storeUrlAndroid" text,
    "webUrl" text,
    "maintenance" boolean,
    "updatedAt" timestamp without time zone
);


--
-- MIGRATION VERSION FOR acorn
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('acorn', '20260207051250291', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260207051250291', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20251208110333922-v3-0-0', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20251208110333922-v3-0-0', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth', '20250825102351908-v3-0-0', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20250825102351908-v3-0-0', "timestamp" = now();


COMMIT;
