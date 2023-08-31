--
-- Class AttsInvolved as table atts_involved
--

CREATE TABLE "atts_involved" (
  "id" serial,
  "principal_id" integer NOT NULL,
  "att_id" integer NOT NULL
);

ALTER TABLE ONLY "atts_involved"
  ADD CONSTRAINT atts_involved_pkey PRIMARY KEY (id);


--
-- Class Categories as table categories
--

CREATE TABLE "categories" (
  "id" serial,
  "category" text NOT NULL
);

ALTER TABLE ONLY "categories"
  ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Class CountryInvolved as table country_involved
--

CREATE TABLE "country_involved" (
  "id" serial,
  "principal_id" integer NOT NULL,
  "pays_id" integer NOT NULL
);

ALTER TABLE ONLY "country_involved"
  ADD CONSTRAINT country_involved_pkey PRIMARY KEY (id);


--
-- Class Countryatts as table countryatts
--

CREATE TABLE "countryatts" (
  "id" serial,
  "countryatt" text NOT NULL
);

ALTER TABLE ONLY "countryatts"
  ADD CONSTRAINT countryatts_pkey PRIMARY KEY (id);


--
-- Class Days as table days
--

CREATE TABLE "days" (
  "id" serial,
  "principal_id" integer NOT NULL,
  "day" text NOT NULL
);

ALTER TABLE ONLY "days"
  ADD CONSTRAINT days_pkey PRIMARY KEY (id);


--
-- Class Lieux as table lieux
--

CREATE TABLE "lieux" (
  "id" serial,
  "principal_id" integer NOT NULL,
  "latitude" double precision NOT NULL,
  "longitude" double precision NOT NULL,
  "three_d_x" double precision NOT NULL,
  "three_d_y" double precision NOT NULL,
  "three_d_z" double precision NOT NULL
);

ALTER TABLE ONLY "lieux"
  ADD CONSTRAINT lieux_pkey PRIMARY KEY (id);


--
-- Class LocalDates as table localdates
--

CREATE TABLE "localdates" (
  "id" serial,
  "principal_id" integer NOT NULL,
  "localdate" text NOT NULL
);

ALTER TABLE ONLY "localdates"
  ADD CONSTRAINT localdates_pkey PRIMARY KEY (id);


--
-- Class Months as table months
--

CREATE TABLE "months" (
  "id" serial,
  "principal_id" integer NOT NULL,
  "month" text NOT NULL
);

ALTER TABLE ONLY "months"
  ADD CONSTRAINT months_pkey PRIMARY KEY (id);


--
-- Class Organisations as table organisations
--

CREATE TABLE "organisations" (
  "id" serial,
  "organisation" text NOT NULL
);

ALTER TABLE ONLY "organisations"
  ADD CONSTRAINT organisations_pkey PRIMARY KEY (id);


--
-- Class Pays as table pays
--

CREATE TABLE "pays" (
  "id" serial,
  "pays" text NOT NULL
);

ALTER TABLE ONLY "pays"
  ADD CONSTRAINT pays_pkey PRIMARY KEY (id);


--
-- Class People as table people
--

CREATE TABLE "people" (
  "id" serial,
  "person" text NOT NULL
);

ALTER TABLE ONLY "people"
  ADD CONSTRAINT people_pkey PRIMARY KEY (id);


--
-- Class Placeatts as table placeatts
--

CREATE TABLE "placeatts" (
  "id" serial,
  "placeatt" text NOT NULL
);

ALTER TABLE ONLY "placeatts"
  ADD CONSTRAINT placeatts_pkey PRIMARY KEY (id);


--
-- Class Places as table places
--

CREATE TABLE "places" (
  "id" serial,
  "place" text NOT NULL
);

ALTER TABLE ONLY "places"
  ADD CONSTRAINT places_pkey PRIMARY KEY (id);


--
-- Class Principal as table principal
--

CREATE TABLE "principal" (
  "id" serial,
  "annee" integer NOT NULL,
  "affair" text NOT NULL,
  "pays" text NOT NULL,
  "placeId" integer,
  "cattId" integer,
  "pattId" integer
);

ALTER TABLE ONLY "principal"
  ADD CONSTRAINT principal_pkey PRIMARY KEY (id);

ALTER TABLE ONLY "principal"
  ADD CONSTRAINT principal_fk_0
    FOREIGN KEY("placeId")
      REFERENCES places(id)
        ON DELETE CASCADE;
ALTER TABLE ONLY "principal"
  ADD CONSTRAINT principal_fk_1
    FOREIGN KEY("cattId")
      REFERENCES countryatts(id)
        ON DELETE CASCADE;
ALTER TABLE ONLY "principal"
  ADD CONSTRAINT principal_fk_2
    FOREIGN KEY("pattId")
      REFERENCES placeatts(id)
        ON DELETE CASCADE;

--
-- Class PrincipalCategories as table principal_categories
--

CREATE TABLE "principal_categories" (
  "id" serial,
  "principal_id" integer NOT NULL,
  "category_id" integer NOT NULL
);

ALTER TABLE ONLY "principal_categories"
  ADD CONSTRAINT principal_categories_pkey PRIMARY KEY (id);


--
-- Class PrincipalCatt as table principal_catt
--

CREATE TABLE "principal_catt" (
  "id" serial,
  "principal_id" integer NOT NULL,
  "catt_id" integer NOT NULL
);

ALTER TABLE ONLY "principal_catt"
  ADD CONSTRAINT principal_catt_pkey PRIMARY KEY (id);


--
-- Class PrincipalOrgs as table principal_orgs
--

CREATE TABLE "principal_orgs" (
  "id" serial,
  "principal_id" integer NOT NULL,
  "org_id" integer NOT NULL
);

ALTER TABLE ONLY "principal_orgs"
  ADD CONSTRAINT principal_orgs_pkey PRIMARY KEY (id);


--
-- Class PrincipalPatt as table principal_patt
--

CREATE TABLE "principal_patt" (
  "id" serial,
  "principal_id" integer NOT NULL,
  "patt_id" integer NOT NULL
);

ALTER TABLE ONLY "principal_patt"
  ADD CONSTRAINT principal_patt_pkey PRIMARY KEY (id);


--
-- Class PrincipalPeople as table principal_people
--

CREATE TABLE "principal_people" (
  "id" serial,
  "principal_id" integer NOT NULL,
  "person_id" integer NOT NULL
);

ALTER TABLE ONLY "principal_people"
  ADD CONSTRAINT principal_people_pkey PRIMARY KEY (id);


--
-- Class PrincipalPlace as table principal_place
--

CREATE TABLE "principal_place" (
  "id" serial,
  "principal_id" integer NOT NULL,
  "place_id" integer NOT NULL
);

ALTER TABLE ONLY "principal_place"
  ADD CONSTRAINT principal_place_pkey PRIMARY KEY (id);


--
-- Class PrincipalSeas as table principal_seas
--

CREATE TABLE "principal_seas" (
  "id" serial,
  "principal_id" integer NOT NULL,
  "seas_id" integer NOT NULL
);

ALTER TABLE ONLY "principal_seas"
  ADD CONSTRAINT principal_seas_pkey PRIMARY KEY (id);


--
-- Class PrincipalTerms as table principal_terms
--

CREATE TABLE "principal_terms" (
  "id" serial,
  "principal_id" integer NOT NULL,
  "term_id" integer NOT NULL
);

ALTER TABLE ONLY "principal_terms"
  ADD CONSTRAINT principal_terms_pkey PRIMARY KEY (id);


--
-- Class Seas as table seas
--

CREATE TABLE "seas" (
  "id" serial,
  "sea" text NOT NULL
);

ALTER TABLE ONLY "seas"
  ADD CONSTRAINT seas_pkey PRIMARY KEY (id);


--
-- Class Terms as table terms
--

CREATE TABLE "terms" (
  "id" serial,
  "term" text NOT NULL
);

ALTER TABLE ONLY "terms"
  ADD CONSTRAINT terms_pkey PRIMARY KEY (id);


