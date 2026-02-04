BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "with_map" ADD COLUMN "updatedAt" timestamp without time zone;
ALTER TABLE "with_map" ADD COLUMN "deletedAt" timestamp without time zone;
--
-- ACTION ALTER TABLE
--
ALTER TABLE "serverpod_session_log" ADD COLUMN "userId" text;

--
-- MIGRATION VERSION FOR acorn
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('acorn', '20260204094454826', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260204094454826', "timestamp" = now();

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
