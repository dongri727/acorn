BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "categories" (
    "id" serial PRIMARY KEY,
    "category" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "catts_involved" (
    "id" serial PRIMARY KEY,
    "principalId" integer NOT NULL,
    "cattId" integer NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "country_involved" (
    "id" serial PRIMARY KEY,
    "principalId" integer NOT NULL,
    "paysId" integer NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "countryatts" (
    "id" serial PRIMARY KEY,
    "countryatt" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "oceans" (
    "id" serial PRIMARY KEY,
    "ocean" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "organisations" (
    "id" serial PRIMARY KEY,
    "organisation" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "patts_involved" (
    "id" serial PRIMARY KEY,
    "principalId" integer NOT NULL,
    "pattId" integer NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "pays" (
    "id" serial PRIMARY KEY,
    "pays" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "people" (
    "id" serial PRIMARY KEY,
    "person" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "placeatts" (
    "id" serial PRIMARY KEY,
    "placeatt" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "places" (
    "id" serial PRIMARY KEY,
    "place" text NOT NULL,
    "country" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "principal" (
    "id" serial PRIMARY KEY,
    "period" text NOT NULL,
    "annee" text NOT NULL,
    "month" integer NOT NULL,
    "day" integer NOT NULL,
    "point" integer NOT NULL,
    "affair" text NOT NULL,
    "location" text NOT NULL,
    "precise" text NOT NULL
);

-- Indexes
CREATE INDEX "location_idx" ON "principal" USING btree ("location");
CREATE INDEX "precise_idx" ON "principal" USING btree ("precise");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "principal_categories" (
    "id" serial PRIMARY KEY,
    "principalId" integer NOT NULL,
    "categoryId" integer NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "principal_catt" (
    "id" serial PRIMARY KEY,
    "principalId" integer NOT NULL,
    "cattId" integer NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "principal_orgs" (
    "id" serial PRIMARY KEY,
    "principalId" integer NOT NULL,
    "orgId" integer NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "principal_patt" (
    "id" serial PRIMARY KEY,
    "principalId" integer NOT NULL,
    "pattId" integer NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "principal_people" (
    "id" serial PRIMARY KEY,
    "principalId" integer NOT NULL,
    "personId" integer NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "principal_terms" (
    "id" serial PRIMARY KEY,
    "principalId" integer NOT NULL,
    "termId" integer NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "principal_user" (
    "id" serial PRIMARY KEY,
    "principalId" integer NOT NULL,
    "userId" integer NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "seas" (
    "id" serial PRIMARY KEY,
    "sea" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "stars" (
    "id" serial PRIMARY KEY,
    "star" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "stars_involved" (
    "id" serial PRIMARY KEY,
    "principalId" integer NOT NULL,
    "starId" integer NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "terms" (
    "id" serial PRIMARY KEY,
    "term" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "universe" (
    "id" serial PRIMARY KEY,
    "universe" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "with_globe" (
    "id" serial PRIMARY KEY,
    "principalId" integer NOT NULL,
    "annee" text NOT NULL,
    "affair" text NOT NULL,
    "location" text NOT NULL,
    "precise" text NOT NULL,
    "xCoordinate" double precision NOT NULL,
    "yCoordinate" double precision NOT NULL,
    "zCoordinate" double precision NOT NULL,
    "coefficient" double precision NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "with_map" (
    "id" serial PRIMARY KEY,
    "principalId" integer NOT NULL,
    "annee" text NOT NULL,
    "affair" text NOT NULL,
    "location" text NOT NULL,
    "precise" text NOT NULL,
    "latitude" double precision NOT NULL,
    "longitude" double precision NOT NULL,
    "logarithm" double precision NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_auth_key" (
    "id" serial PRIMARY KEY,
    "userId" integer NOT NULL,
    "hash" text NOT NULL,
    "scopeNames" json NOT NULL,
    "method" text NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_auth_key_userId_idx" ON "serverpod_auth_key" USING btree ("userId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_cloud_storage" (
    "id" serial PRIMARY KEY,
    "storageId" text NOT NULL,
    "path" text NOT NULL,
    "addedTime" timestamp without time zone NOT NULL,
    "expiration" timestamp without time zone,
    "byteData" bytea NOT NULL,
    "verified" boolean NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_cloud_storage_path_idx" ON "serverpod_cloud_storage" USING btree ("storageId", "path");
CREATE INDEX "serverpod_cloud_storage_expiration" ON "serverpod_cloud_storage" USING btree ("expiration");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_cloud_storage_direct_upload" (
    "id" serial PRIMARY KEY,
    "storageId" text NOT NULL,
    "path" text NOT NULL,
    "expiration" timestamp without time zone NOT NULL,
    "authKey" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_cloud_storage_direct_upload_storage_path" ON "serverpod_cloud_storage_direct_upload" USING btree ("storageId", "path");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_future_call" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "serializedObject" text,
    "serverId" text NOT NULL,
    "identifier" text
);

-- Indexes
CREATE INDEX "serverpod_future_call_time_idx" ON "serverpod_future_call" USING btree ("time");
CREATE INDEX "serverpod_future_call_serverId_idx" ON "serverpod_future_call" USING btree ("serverId");
CREATE INDEX "serverpod_future_call_identifier_idx" ON "serverpod_future_call" USING btree ("identifier");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_health_connection_info" (
    "id" serial PRIMARY KEY,
    "serverId" text NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    "active" integer NOT NULL,
    "closing" integer NOT NULL,
    "idle" integer NOT NULL,
    "granularity" integer NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_health_connection_info_timestamp_idx" ON "serverpod_health_connection_info" USING btree ("timestamp", "serverId", "granularity");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_health_metric" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "serverId" text NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    "isHealthy" boolean NOT NULL,
    "value" double precision NOT NULL,
    "granularity" integer NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_health_metric_timestamp_idx" ON "serverpod_health_metric" USING btree ("timestamp", "serverId", "name", "granularity");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_log" (
    "id" serial PRIMARY KEY,
    "sessionLogId" integer NOT NULL,
    "messageId" integer,
    "reference" text,
    "serverId" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "logLevel" integer NOT NULL,
    "message" text NOT NULL,
    "error" text,
    "stackTrace" text,
    "order" integer NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_log_sessionLogId_idx" ON "serverpod_log" USING btree ("sessionLogId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_message_log" (
    "id" serial PRIMARY KEY,
    "sessionLogId" integer NOT NULL,
    "serverId" text NOT NULL,
    "messageId" integer NOT NULL,
    "endpoint" text NOT NULL,
    "messageName" text NOT NULL,
    "duration" double precision NOT NULL,
    "error" text,
    "stackTrace" text,
    "slow" boolean NOT NULL,
    "order" integer NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_method" (
    "id" serial PRIMARY KEY,
    "endpoint" text NOT NULL,
    "method" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_method_endpoint_method_idx" ON "serverpod_method" USING btree ("endpoint", "method");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_migrations" (
    "id" serial PRIMARY KEY,
    "module" text NOT NULL,
    "version" text NOT NULL,
    "timestamp" timestamp without time zone
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_migrations_ids" ON "serverpod_migrations" USING btree ("module");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_query_log" (
    "id" serial PRIMARY KEY,
    "serverId" text NOT NULL,
    "sessionLogId" integer NOT NULL,
    "messageId" integer,
    "query" text NOT NULL,
    "duration" double precision NOT NULL,
    "numRows" integer,
    "error" text,
    "stackTrace" text,
    "slow" boolean NOT NULL,
    "order" integer NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_query_log_sessionLogId_idx" ON "serverpod_query_log" USING btree ("sessionLogId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_readwrite_test" (
    "id" serial PRIMARY KEY,
    "number" integer NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_runtime_settings" (
    "id" serial PRIMARY KEY,
    "logSettings" json NOT NULL,
    "logSettingsOverrides" json NOT NULL,
    "logServiceCalls" boolean NOT NULL,
    "logMalformedCalls" boolean NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_session_log" (
    "id" serial PRIMARY KEY,
    "serverId" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "module" text,
    "endpoint" text,
    "method" text,
    "duration" double precision,
    "numQueries" integer,
    "slow" boolean,
    "error" text,
    "stackTrace" text,
    "authenticatedUserId" integer,
    "isOpen" boolean,
    "touched" timestamp without time zone NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_session_log_serverid_idx" ON "serverpod_session_log" USING btree ("serverId");
CREATE INDEX "serverpod_session_log_touched_idx" ON "serverpod_session_log" USING btree ("touched");
CREATE INDEX "serverpod_session_log_isopen_idx" ON "serverpod_session_log" USING btree ("isOpen");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_email_auth" (
    "id" serial PRIMARY KEY,
    "userId" integer NOT NULL,
    "email" text NOT NULL,
    "hash" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_email_auth_email" ON "serverpod_email_auth" USING btree ("email");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_email_create_request" (
    "id" serial PRIMARY KEY,
    "userName" text NOT NULL,
    "email" text NOT NULL,
    "hash" text NOT NULL,
    "verificationCode" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_email_auth_create_account_request_idx" ON "serverpod_email_create_request" USING btree ("email");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_email_failed_sign_in" (
    "id" serial PRIMARY KEY,
    "email" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "ipAddress" text NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_email_failed_sign_in_email_idx" ON "serverpod_email_failed_sign_in" USING btree ("email");
CREATE INDEX "serverpod_email_failed_sign_in_time_idx" ON "serverpod_email_failed_sign_in" USING btree ("time");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_email_reset" (
    "id" serial PRIMARY KEY,
    "userId" integer NOT NULL,
    "verificationCode" text NOT NULL,
    "expiration" timestamp without time zone NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_email_reset_verification_idx" ON "serverpod_email_reset" USING btree ("verificationCode");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_google_refresh_token" (
    "id" serial PRIMARY KEY,
    "userId" integer NOT NULL,
    "refreshToken" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_google_refresh_token_userId_idx" ON "serverpod_google_refresh_token" USING btree ("userId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_user_image" (
    "id" serial PRIMARY KEY,
    "userId" integer NOT NULL,
    "version" integer NOT NULL,
    "url" text NOT NULL
);


-- Indexes
CREATE INDEX "serverpod_user_image_user_id" ON "serverpod_user_image" USING btree ("userId", "version");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_user_info" (
    "id" serial PRIMARY KEY,
    "userIdentifier" text NOT NULL,
    "userName" text NOT NULL,
    "fullName" text,
    "email" text,
    "created" timestamp without time zone NOT NULL,
    "imageUrl" text,
    "scopeNames" json NOT NULL,
    "blocked" boolean NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_user_info_user_identifier" ON "serverpod_user_info" USING btree ("userIdentifier");
CREATE INDEX "serverpod_user_info_email" ON "serverpod_user_info" USING btree ("email");

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "serverpod_log"
    ADD CONSTRAINT "serverpod_log_fk_0"
    FOREIGN KEY("sessionLogId")
    REFERENCES "serverpod_session_log"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "serverpod_message_log"
    ADD CONSTRAINT "serverpod_message_log_fk_0"
    FOREIGN KEY("sessionLogId")
    REFERENCES "serverpod_session_log"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "serverpod_query_log"
    ADD CONSTRAINT "serverpod_query_log_fk_0"
    FOREIGN KEY("sessionLogId")
    REFERENCES "serverpod_session_log"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR acorn
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('acorn', '20240124225205697', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240124225205697', "timestamp" = now();

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
