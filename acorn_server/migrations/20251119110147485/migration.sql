BEGIN;

--
-- ACTION DROP TABLE
--
DROP TABLE "principal" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "principal" (
    "id" bigserial PRIMARY KEY,
    "period" text NOT NULL,
    "annee" text NOT NULL,
    "month" bigint NOT NULL,
    "day" bigint NOT NULL,
    "point" bigint NOT NULL,
    "affair" text NOT NULL,
    "location" text NOT NULL,
    "precise" text NOT NULL
);

-- Indexes
CREATE INDEX "location_idx" ON "principal" USING btree ("location");
CREATE INDEX "precise_idx" ON "principal" USING btree ("precise");


--
-- MIGRATION VERSION FOR acorn
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('acorn', '20251119110147485', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20251119110147485', "timestamp" = now();

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
