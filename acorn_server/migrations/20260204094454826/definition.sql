BEGIN;

--
-- Class Categories as table categories
--
CREATE TABLE "categories" (
    "id" bigserial PRIMARY KEY,
    "category" text NOT NULL,
    "detailId" bigint NOT NULL,
    "combien" bigint NOT NULL
);

--
-- Class CattsInvolved as table catts_involved
--
CREATE TABLE "catts_involved" (
    "id" bigserial PRIMARY KEY,
    "principalId" bigint NOT NULL,
    "cattId" bigint NOT NULL
);

--
-- Class CountryInvolved as table country_involved
--
CREATE TABLE "country_involved" (
    "id" bigserial PRIMARY KEY,
    "principalId" bigint NOT NULL,
    "paysId" bigint NOT NULL
);

--
-- Class Countryatts as table countryatts
--
CREATE TABLE "countryatts" (
    "id" bigserial PRIMARY KEY,
    "countryatt" text NOT NULL
);

--
-- Class Detail as table detail
--
CREATE TABLE "detail" (
    "id" bigserial PRIMARY KEY,
    "genre" text NOT NULL,
    "mot" text NOT NULL
);

--
-- Class Japanese as table japanese
--
CREATE TABLE "japanese" (
    "id" bigserial PRIMARY KEY,
    "principalId" bigint NOT NULL,
    "japaneseName" text NOT NULL
);

--
-- Class LaunchSites as table launch_sites
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
-- Class Oceans as table oceans
--
CREATE TABLE "oceans" (
    "id" bigserial PRIMARY KEY,
    "ocean" text NOT NULL
);

--
-- Class Organisations as table organisations
--
CREATE TABLE "organisations" (
    "id" bigserial PRIMARY KEY,
    "organisation" text NOT NULL
);

--
-- Class PattsInvolved as table patts_involved
--
CREATE TABLE "patts_involved" (
    "id" bigserial PRIMARY KEY,
    "principalId" bigint NOT NULL,
    "pattId" bigint NOT NULL
);

--
-- Class Pays as table pays
--
CREATE TABLE "pays" (
    "id" bigserial PRIMARY KEY,
    "pays" text NOT NULL,
    "combien" bigint NOT NULL
);

--
-- Class People as table people
--
CREATE TABLE "people" (
    "id" bigserial PRIMARY KEY,
    "person" text NOT NULL
);

--
-- Class PlaceInvolved as table place_involved
--
CREATE TABLE "place_involved" (
    "id" bigserial PRIMARY KEY,
    "principalId" bigint NOT NULL,
    "placeId" bigint NOT NULL
);

--
-- Class Placeatts as table placeatts
--
CREATE TABLE "placeatts" (
    "id" bigserial PRIMARY KEY,
    "placeatt" text NOT NULL
);

--
-- Class Places as table places
--
CREATE TABLE "places" (
    "id" bigserial PRIMARY KEY,
    "place" text NOT NULL,
    "country" text NOT NULL
);

--
-- Class Principal as table principal
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
-- Class PrincipalCategories as table principal_categories
--
CREATE TABLE "principal_categories" (
    "id" bigserial PRIMARY KEY,
    "principalId" bigint NOT NULL,
    "categoryId" bigint NOT NULL
);

--
-- Class PrincipalCatt as table principal_catt
--
CREATE TABLE "principal_catt" (
    "id" bigserial PRIMARY KEY,
    "principalId" bigint NOT NULL,
    "cattId" bigint NOT NULL
);

--
-- Class PrincipalDetail as table principal_detail
--
CREATE TABLE "principal_detail" (
    "id" bigserial PRIMARY KEY,
    "principalId" bigint NOT NULL,
    "detailId" bigint NOT NULL
);

--
-- Class PrincipalOrgs as table principal_orgs
--
CREATE TABLE "principal_orgs" (
    "id" bigserial PRIMARY KEY,
    "principalId" bigint NOT NULL,
    "orgId" bigint NOT NULL
);

--
-- Class PrincipalPatt as table principal_patt
--
CREATE TABLE "principal_patt" (
    "id" bigserial PRIMARY KEY,
    "principalId" bigint NOT NULL,
    "pattId" bigint NOT NULL
);

--
-- Class PrincipalPeople as table principal_people
--
CREATE TABLE "principal_people" (
    "id" bigserial PRIMARY KEY,
    "principalId" bigint NOT NULL,
    "personId" bigint NOT NULL
);

--
-- Class PrincipalSites as table principal_sites
--
CREATE TABLE "principal_sites" (
    "id" bigserial PRIMARY KEY,
    "principalId" bigint NOT NULL,
    "siteId" bigint NOT NULL
);

--
-- Class PrincipalTerms as table principal_terms
--
CREATE TABLE "principal_terms" (
    "id" bigserial PRIMARY KEY,
    "principalId" bigint NOT NULL,
    "termId" bigint NOT NULL
);

--
-- Class PrincipalUser as table principal_user
--
CREATE TABLE "principal_user" (
    "id" bigserial PRIMARY KEY,
    "principalId" bigint NOT NULL,
    "userId" bigint NOT NULL
);

--
-- Class Seas as table seas
--
CREATE TABLE "seas" (
    "id" bigserial PRIMARY KEY,
    "sea" text NOT NULL,
    "area" text NOT NULL
);

--
-- Class Space as table space
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
-- Class Stars as table stars
--
CREATE TABLE "stars" (
    "id" bigserial PRIMARY KEY,
    "star" text NOT NULL,
    "area" text NOT NULL
);

--
-- Class StarsInvolved as table stars_involved
--
CREATE TABLE "stars_involved" (
    "id" bigserial PRIMARY KEY,
    "principalId" bigint NOT NULL,
    "starId" bigint NOT NULL
);

--
-- Class Target as table target
--
CREATE TABLE "target" (
    "id" bigserial PRIMARY KEY,
    "specialite" text NOT NULL,
    "detailId" bigint NOT NULL
);

--
-- Class Terms as table terms
--
CREATE TABLE "terms" (
    "id" bigserial PRIMARY KEY,
    "term" text NOT NULL
);

--
-- Class Universe as table universe
--
CREATE TABLE "universe" (
    "id" bigserial PRIMARY KEY,
    "universe" text NOT NULL
);

--
-- Class WithGlobe as table with_globe
--
CREATE TABLE "with_globe" (
    "id" bigserial PRIMARY KEY,
    "principalId" bigint NOT NULL,
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
-- Class WithMap as table with_map
--
CREATE TABLE "with_map" (
    "id" bigserial PRIMARY KEY,
    "principalId" bigint NOT NULL,
    "annee" text NOT NULL,
    "affair" text NOT NULL,
    "location" text NOT NULL,
    "precise" text NOT NULL,
    "latitude" double precision NOT NULL,
    "longitude" double precision NOT NULL,
    "logarithm" double precision NOT NULL,
    "updatedAt" timestamp without time zone,
    "deletedAt" timestamp without time zone
);

--
-- Class WithQgis as table with_qgis
--
CREATE TABLE "with_qgis" (
    "id" bigserial PRIMARY KEY,
    "principalId" bigint NOT NULL,
    "name" text NOT NULL,
    "geo" text NOT NULL,
    "year" text NOT NULL
);

--
-- Class CloudStorageEntry as table serverpod_cloud_storage
--
CREATE TABLE "serverpod_cloud_storage" (
    "id" bigserial PRIMARY KEY,
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
-- Class CloudStorageDirectUploadEntry as table serverpod_cloud_storage_direct_upload
--
CREATE TABLE "serverpod_cloud_storage_direct_upload" (
    "id" bigserial PRIMARY KEY,
    "storageId" text NOT NULL,
    "path" text NOT NULL,
    "expiration" timestamp without time zone NOT NULL,
    "authKey" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_cloud_storage_direct_upload_storage_path" ON "serverpod_cloud_storage_direct_upload" USING btree ("storageId", "path");

--
-- Class FutureCallEntry as table serverpod_future_call
--
CREATE TABLE "serverpod_future_call" (
    "id" bigserial PRIMARY KEY,
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
-- Class ServerHealthConnectionInfo as table serverpod_health_connection_info
--
CREATE TABLE "serverpod_health_connection_info" (
    "id" bigserial PRIMARY KEY,
    "serverId" text NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    "active" bigint NOT NULL,
    "closing" bigint NOT NULL,
    "idle" bigint NOT NULL,
    "granularity" bigint NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_health_connection_info_timestamp_idx" ON "serverpod_health_connection_info" USING btree ("timestamp", "serverId", "granularity");

--
-- Class ServerHealthMetric as table serverpod_health_metric
--
CREATE TABLE "serverpod_health_metric" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "serverId" text NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    "isHealthy" boolean NOT NULL,
    "value" double precision NOT NULL,
    "granularity" bigint NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_health_metric_timestamp_idx" ON "serverpod_health_metric" USING btree ("timestamp", "serverId", "name", "granularity");

--
-- Class LogEntry as table serverpod_log
--
CREATE TABLE "serverpod_log" (
    "id" bigserial PRIMARY KEY,
    "sessionLogId" bigint NOT NULL,
    "messageId" bigint,
    "reference" text,
    "serverId" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "logLevel" bigint NOT NULL,
    "message" text NOT NULL,
    "error" text,
    "stackTrace" text,
    "order" bigint NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_log_sessionLogId_idx" ON "serverpod_log" USING btree ("sessionLogId");

--
-- Class MessageLogEntry as table serverpod_message_log
--
CREATE TABLE "serverpod_message_log" (
    "id" bigserial PRIMARY KEY,
    "sessionLogId" bigint NOT NULL,
    "serverId" text NOT NULL,
    "messageId" bigint NOT NULL,
    "endpoint" text NOT NULL,
    "messageName" text NOT NULL,
    "duration" double precision NOT NULL,
    "error" text,
    "stackTrace" text,
    "slow" boolean NOT NULL,
    "order" bigint NOT NULL
);

--
-- Class MethodInfo as table serverpod_method
--
CREATE TABLE "serverpod_method" (
    "id" bigserial PRIMARY KEY,
    "endpoint" text NOT NULL,
    "method" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_method_endpoint_method_idx" ON "serverpod_method" USING btree ("endpoint", "method");

--
-- Class DatabaseMigrationVersion as table serverpod_migrations
--
CREATE TABLE "serverpod_migrations" (
    "id" bigserial PRIMARY KEY,
    "module" text NOT NULL,
    "version" text NOT NULL,
    "timestamp" timestamp without time zone
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_migrations_ids" ON "serverpod_migrations" USING btree ("module");

--
-- Class QueryLogEntry as table serverpod_query_log
--
CREATE TABLE "serverpod_query_log" (
    "id" bigserial PRIMARY KEY,
    "serverId" text NOT NULL,
    "sessionLogId" bigint NOT NULL,
    "messageId" bigint,
    "query" text NOT NULL,
    "duration" double precision NOT NULL,
    "numRows" bigint,
    "error" text,
    "stackTrace" text,
    "slow" boolean NOT NULL,
    "order" bigint NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_query_log_sessionLogId_idx" ON "serverpod_query_log" USING btree ("sessionLogId");

--
-- Class ReadWriteTestEntry as table serverpod_readwrite_test
--
CREATE TABLE "serverpod_readwrite_test" (
    "id" bigserial PRIMARY KEY,
    "number" bigint NOT NULL
);

--
-- Class RuntimeSettings as table serverpod_runtime_settings
--
CREATE TABLE "serverpod_runtime_settings" (
    "id" bigserial PRIMARY KEY,
    "logSettings" json NOT NULL,
    "logSettingsOverrides" json NOT NULL,
    "logServiceCalls" boolean NOT NULL,
    "logMalformedCalls" boolean NOT NULL
);

--
-- Class SessionLogEntry as table serverpod_session_log
--
CREATE TABLE "serverpod_session_log" (
    "id" bigserial PRIMARY KEY,
    "serverId" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "module" text,
    "endpoint" text,
    "method" text,
    "duration" double precision,
    "numQueries" bigint,
    "slow" boolean,
    "error" text,
    "stackTrace" text,
    "authenticatedUserId" bigint,
    "userId" text,
    "isOpen" boolean,
    "touched" timestamp without time zone NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_session_log_serverid_idx" ON "serverpod_session_log" USING btree ("serverId");
CREATE INDEX "serverpod_session_log_touched_idx" ON "serverpod_session_log" USING btree ("touched");
CREATE INDEX "serverpod_session_log_isopen_idx" ON "serverpod_session_log" USING btree ("isOpen");

--
-- Class AuthKey as table serverpod_auth_key
--
CREATE TABLE "serverpod_auth_key" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint NOT NULL,
    "hash" text NOT NULL,
    "scopeNames" json NOT NULL,
    "method" text NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_auth_key_userId_idx" ON "serverpod_auth_key" USING btree ("userId");

--
-- Class EmailAuth as table serverpod_email_auth
--
CREATE TABLE "serverpod_email_auth" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint NOT NULL,
    "email" text NOT NULL,
    "hash" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_email_auth_email" ON "serverpod_email_auth" USING btree ("email");

--
-- Class EmailCreateAccountRequest as table serverpod_email_create_request
--
CREATE TABLE "serverpod_email_create_request" (
    "id" bigserial PRIMARY KEY,
    "userName" text NOT NULL,
    "email" text NOT NULL,
    "hash" text NOT NULL,
    "verificationCode" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_email_auth_create_account_request_idx" ON "serverpod_email_create_request" USING btree ("email");

--
-- Class EmailFailedSignIn as table serverpod_email_failed_sign_in
--
CREATE TABLE "serverpod_email_failed_sign_in" (
    "id" bigserial PRIMARY KEY,
    "email" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "ipAddress" text NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_email_failed_sign_in_email_idx" ON "serverpod_email_failed_sign_in" USING btree ("email");
CREATE INDEX "serverpod_email_failed_sign_in_time_idx" ON "serverpod_email_failed_sign_in" USING btree ("time");

--
-- Class EmailReset as table serverpod_email_reset
--
CREATE TABLE "serverpod_email_reset" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint NOT NULL,
    "verificationCode" text NOT NULL,
    "expiration" timestamp without time zone NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_email_reset_verification_idx" ON "serverpod_email_reset" USING btree ("verificationCode");

--
-- Class GoogleRefreshToken as table serverpod_google_refresh_token
--
CREATE TABLE "serverpod_google_refresh_token" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint NOT NULL,
    "refreshToken" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_google_refresh_token_userId_idx" ON "serverpod_google_refresh_token" USING btree ("userId");

--
-- Class UserImage as table serverpod_user_image
--
CREATE TABLE "serverpod_user_image" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint NOT NULL,
    "version" bigint NOT NULL,
    "url" text NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_user_image_user_id" ON "serverpod_user_image" USING btree ("userId", "version");

--
-- Class UserInfo as table serverpod_user_info
--
CREATE TABLE "serverpod_user_info" (
    "id" bigserial PRIMARY KEY,
    "userIdentifier" text NOT NULL,
    "userName" text,
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
-- Foreign relations for "serverpod_log" table
--
ALTER TABLE ONLY "serverpod_log"
    ADD CONSTRAINT "serverpod_log_fk_0"
    FOREIGN KEY("sessionLogId")
    REFERENCES "serverpod_session_log"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- Foreign relations for "serverpod_message_log" table
--
ALTER TABLE ONLY "serverpod_message_log"
    ADD CONSTRAINT "serverpod_message_log_fk_0"
    FOREIGN KEY("sessionLogId")
    REFERENCES "serverpod_session_log"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- Foreign relations for "serverpod_query_log" table
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
