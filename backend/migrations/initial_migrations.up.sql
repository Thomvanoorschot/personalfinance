-- Table Definitions with created_at and updated_at columns

CREATE TABLE "user"
(
    id                   UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    email                TEXT UNIQUE,
    unverified_unique_id TEXT UNIQUE NOT NULL,
    created_at           TIMESTAMP        DEFAULT CURRENT_TIMESTAMP,
    updated_at           TIMESTAMP        DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE institution
(
    id                           TEXT PRIMARY KEY,
    name                         TEXT        NOT NULL,
    icon_url                     TEXT        NOT NULL,
    country_code                 TEXT        NOT NULL,
    max_transaction_history_days SMALLSERIAL NOT NULL,
    created_at                   TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at                   TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_institution_country_code ON institution (country_code);

CREATE TABLE account
(
    id             UUID PRIMARY KEY,
    user_id        UUID NOT NULL,
    iban           TEXT NOT NULL,
    owner_name     TEXT NOT NULL,
    institution_id TEXT NOT NULL,
    created_at     TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at     TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (user_id) REFERENCES "user" (id) ON DELETE CASCADE,
    FOREIGN KEY (institution_id) REFERENCES "institution" (id) ON DELETE CASCADE
);

CREATE TABLE transaction_category_group
(
    id         UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    slug       TEXT UNIQUE NOT NULL,
    label_en   TEXT UNIQUE NOT NULL,
    label_nl   TEXT UNIQUE NOT NULL,
    created_at TIMESTAMP        DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP        DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE transaction_category
(
    id                            UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    slug                          TEXT UNIQUE NOT NULL,
    label_en                      TEXT        NOT NULL,
    label_nl                      TEXT        NOT NULL,
    transaction_category_group_id UUID        NOT NULL,
    created_at                    TIMESTAMP        DEFAULT CURRENT_TIMESTAMP,
    updated_at                    TIMESTAMP        DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (transaction_category_group_id) REFERENCES "transaction_category_group" (id) ON DELETE CASCADE
);

CREATE TABLE transaction
(
    id                                UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    account_id                        UUID           NOT NULL,
    external_id                       TEXT UNIQUE    NOT NULL,
    user_id                           UUID           NOT NULL,
    booking_date                      DATE,
    value_date                        DATE           NOT NULL,
    value_date_time                   TIMESTAMP,
    transaction_amount                NUMERIC(20, 2) NOT NULL,
    currency                          TEXT           NOT NULL,
    creditor_name                     TEXT,
    creditor_iban                     TEXT,
    remittance_information            TEXT,
    proprietary_bank_transaction_code TEXT,
    balance_currency                  TEXT,
    balance_type                      TEXT,
    balance_after_transaction         NUMERIC(20, 2),
    internal_transaction_id           TEXT,
    debtor_name                       TEXT,
    debtor_iban                       TEXT,
    created_at                        TIMESTAMP        DEFAULT CURRENT_TIMESTAMP,
    updated_at                        TIMESTAMP        DEFAULT CURRENT_TIMESTAMP,
    transaction_category_id           UUID,
    associated_transaction_id         UUID,

    FOREIGN KEY (user_id) REFERENCES "user" (id) ON DELETE CASCADE,
    FOREIGN KEY (account_id) REFERENCES account (id) ON DELETE CASCADE,
    FOREIGN KEY (transaction_category_id) REFERENCES transaction_category (id) ON DELETE CASCADE,
    FOREIGN KEY (associated_transaction_id) REFERENCES transaction(id) ON DELETE CASCADE
);
CREATE INDEX idx_transaction_value_date_time ON transaction (value_date_time);
CREATE INDEX idx_transaction_creditor_name ON transaction (creditor_name);
CREATE INDEX idx_transaction_creditor_iban ON transaction (creditor_iban);
CREATE INDEX idx_transaction_debtor_name ON transaction (debtor_name);
CREATE INDEX idx_transaction_debtor_iban ON transaction (debtor_iban);
CREATE INDEX idx_transaction_transaction_amount ON transaction (transaction_amount);

CREATE TABLE requisition
(
    id                    UUID PRIMARY KEY,
    user_id               UUID NOT NULL,
    reference             UUID NOT NULL,
    status                TEXT NULL,
    end_user_agreement_id UUID NOT NULL,
    institution_id        TEXT NOT NULL,
    link                  TEXT NOT NULL,
    created_at            TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at            TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (user_id) REFERENCES "user" (id) ON DELETE CASCADE
);
CREATE INDEX idx_requisition_reference ON requisition (reference);

-- Functions to update the created_at and updated_at columns

CREATE OR REPLACE FUNCTION set_timestamps()
    RETURNS TRIGGER AS
$$
BEGIN
    IF TG_OP = 'INSERT' THEN
        NEW.created_at = CURRENT_TIMESTAMP;
    END IF;
    NEW.updated_at = CURRENT_TIMESTAMP;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Triggers for each table

CREATE TRIGGER set_timestamp_user
    BEFORE INSERT OR UPDATE
    ON "user"
    FOR EACH ROW
EXECUTE FUNCTION set_timestamps();

CREATE TRIGGER set_timestamp_account
    BEFORE INSERT OR UPDATE
    ON account
    FOR EACH ROW
EXECUTE FUNCTION set_timestamps();

CREATE TRIGGER set_timestamp_transaction
    BEFORE INSERT OR UPDATE
    ON transaction
    FOR EACH ROW
EXECUTE FUNCTION set_timestamps();

CREATE TRIGGER set_timestamp_requisition
    BEFORE INSERT OR UPDATE
    ON requisition
    FOR EACH ROW
EXECUTE FUNCTION set_timestamps();

CREATE TRIGGER set_timestamp_transaction_category
    BEFORE INSERT OR UPDATE
    ON transaction_category
    FOR EACH ROW
EXECUTE FUNCTION set_timestamps();

CREATE TRIGGER set_timestamp_transaction_category_group
    BEFORE INSERT OR UPDATE
    ON transaction_category_group
    FOR EACH ROW
EXECUTE FUNCTION set_timestamps();

CREATE TRIGGER set_timestamp_institution
    BEFORE INSERT OR UPDATE
    ON institution
    FOR EACH ROW
EXECUTE FUNCTION set_timestamps();


-- Seed for initial setup

INSERT INTO transaction_category_group ("id", "slug", "label_en", "label_nl")
VALUES ('edd41b15-33b1-410b-9c5a-dabf2fa2e10d', 'saving-and-investments', 'Savings & Investments', 'Sparen & Beleggen'),
       ('18475751-f923-402e-851e-d31e5a13813a', 'food', 'Food', 'Eten'),
       ('15c2073c-c9fb-48da-b0d1-c33c820dca30', 'health-wellness', 'Health & Wellness', 'Gezondheid & Welzijn'),
       ('e2eb8591-e7cf-408b-9233-e3e1f64c7b2d', 'entertainment-leisure', 'Entertainment & Leisure',
        'Uitgaan & Vrije Tijd'),
       ('f9a7b24d-b1ae-4f62-846c-7a8181266217', 'housing', 'Housing', 'Woning'),
       ('ddc14e90-0927-4d2a-8b61-78faf9511f58', 'income', 'Income', 'Inkomen'),
       ('62fba86f-f399-49a2-9b40-dae2697edbb8', 'debt-repayment', 'Debt Repayment', 'Schulden'),
       ('b463ffee-4dde-4094-92d3-af2e4da5dd2c', 'insurance', 'Insurance', 'Verzekeringen'),
       ('01d1e36c-44ca-4d86-a0e3-b2f2da3c223a', 'transportation', 'Transportation', 'Vervoer'),
       ('c0aa2699-4953-4bf9-9913-b0b6ace6d2d4', 'personal-care', 'Personal Care', 'Persoonlijke verzorging'),
       ('99ac960c-7cce-4938-8806-b532ff2455ba', 'education', 'Education', 'Onderwijs'),
       ('51634522-b1ba-4c2c-829f-5cbacae23cbd', 'childcare-education', 'Childcare & Education', 'Kinderopvoeding'),
       ('2f2b4ef6-4c0b-4f9c-a7b6-17bc7a8722a3', 'pet-care', 'Pet Care', 'Huisdieren');

-- saving-and-investments
INSERT INTO transaction_category ("transaction_category_group_id", "slug", "label_en", "label_nl")
VALUES ('edd41b15-33b1-410b-9c5a-dabf2fa2e10d', 'emergency-fund', 'Emergency Fund', 'Noodpotje'),
       ('edd41b15-33b1-410b-9c5a-dabf2fa2e10d', 'retirement', 'Retirement', 'Pensioen'),
       ('edd41b15-33b1-410b-9c5a-dabf2fa2e10d', 'investments', 'Investments', 'Investeringen'),
       ('edd41b15-33b1-410b-9c5a-dabf2fa2e10d', 'education-savings', 'Education', 'Onderwijs'),
       ('edd41b15-33b1-410b-9c5a-dabf2fa2e10d', 'other-savings', 'Other', 'Overig');

-- food
INSERT INTO transaction_category ("transaction_category_group_id", "slug", "label_en", "label_nl")
VALUES ('18475751-f923-402e-851e-d31e5a13813a', 'groceries', 'Groceries', 'Boodschappen'),
       ('18475751-f923-402e-851e-d31e5a13813a', 'dining-out', 'Dining Out', 'Uit Eten'),
       ('18475751-f923-402e-851e-d31e5a13813a', 'coffee-shop', 'Coffee Shops', 'Coffee Shops'),
       ('18475751-f923-402e-851e-d31e5a13813a', 'fast-food', 'Fast Food', 'Fast Food'),
       ('18475751-f923-402e-851e-d31e5a13813a', 'meal-delivery-services', 'Meal Delivery Services', 'Thuisbezorgd'),
       ('18475751-f923-402e-851e-d31e5a13813a', 'other-food', 'Other', 'Overig');

-- health-wellness
INSERT INTO transaction_category ("transaction_category_group_id", "slug", "label_en", "label_nl")
VALUES ('15c2073c-c9fb-48da-b0d1-c33c820dca30', 'medical-bills', 'Medical Bills', 'Medische Rekeningen'),
       ('15c2073c-c9fb-48da-b0d1-c33c820dca30', 'dental-care', 'Dental Care', 'Tandarts'),
       ('15c2073c-c9fb-48da-b0d1-c33c820dca30', 'vision-care', 'Vision Care', 'Oogarts'),
       ('15c2073c-c9fb-48da-b0d1-c33c820dca30', 'gym', 'Gym Memberships', 'Sport Abonnementen'),
       ('15c2073c-c9fb-48da-b0d1-c33c820dca30', 'medication', 'Medications', 'Medicatie'),
       ('15c2073c-c9fb-48da-b0d1-c33c820dca30', 'other-health-wellness', 'Other', 'Overig');

-- entertainment-leisure
INSERT INTO transaction_category ("transaction_category_group_id", "slug", "label_en", "label_nl")
VALUES ('e2eb8591-e7cf-408b-9233-e3e1f64c7b2d', 'movies-tv-streaming', 'Movies/TV Streaming', 'Films/TV Streaming'),
       ('e2eb8591-e7cf-408b-9233-e3e1f64c7b2d', 'digital-subscriptions', 'Digital subscriptions',
        'Digitale Abonnementen'),
       ('e2eb8591-e7cf-408b-9233-e3e1f64c7b2d', 'concerts-events', 'Concerts/Events', 'Concerten/Evenementen'),
       ('e2eb8591-e7cf-408b-9233-e3e1f64c7b2d', 'hobbies', 'Hobbies', 'Hobby’s'),
       ('e2eb8591-e7cf-408b-9233-e3e1f64c7b2d', 'books-magazines', 'Books/Magazines', 'Boeken/Tijdschriften'),
       ('e2eb8591-e7cf-408b-9233-e3e1f64c7b2d', 'travel-vacations', 'Travel', 'Vakantie'),
       ('e2eb8591-e7cf-408b-9233-e3e1f64c7b2d', 'other-entertainment-leisure', 'Other', 'Overig');

-- housing
INSERT INTO transaction_category ("transaction_category_group_id", "slug", "label_en", "label_nl")
VALUES ('f9a7b24d-b1ae-4f62-846c-7a8181266217', 'rent-mortgage', 'Rent/Mortgage', 'Huur/Hypotheek'),
       ('f9a7b24d-b1ae-4f62-846c-7a8181266217', 'property-taxes', 'Property Taxes', 'Belastingen'),
       ('f9a7b24d-b1ae-4f62-846c-7a8181266217', 'housing-maintenance-repairs', 'Maintenance/Repairs',
        'Onderhoud/Reparaties'),
       ('f9a7b24d-b1ae-4f62-846c-7a8181266217', 'utilities', 'Utilities', 'Elektriciteit, Water, Gas'),
       ('f9a7b24d-b1ae-4f62-846c-7a8181266217', 'internet-cable', 'Internet/Cable', 'Internet/TV'),
       ('f9a7b24d-b1ae-4f62-846c-7a8181266217', 'home-improvements', 'Home Improvements', 'Klussen'),
       ('f9a7b24d-b1ae-4f62-846c-7a8181266217', 'other-housing', 'Other', 'Overig');

-- income
INSERT INTO transaction_category ("transaction_category_group_id", "slug", "label_en", "label_nl")
VALUES ('ddc14e90-0927-4d2a-8b61-78faf9511f58', 'salary', 'Salary', 'Salaris'),
       ('ddc14e90-0927-4d2a-8b61-78faf9511f58', 'bonus-income', 'Bonuses', 'Bonussen'),
       ('ddc14e90-0927-4d2a-8b61-78faf9511f58', 'freelance-contract-work', 'Freelance/Contract Work', 'Freelancing'),
       ('ddc14e90-0927-4d2a-8b61-78faf9511f58', 'investment-income', 'Investment Income', 'Beleggingsinkomsten'),
       ('ddc14e90-0927-4d2a-8b61-78faf9511f58', 'gifts', 'Gifts', 'Cadeaus'),
       ('ddc14e90-0927-4d2a-8b61-78faf9511f58', 'rental-income', 'Rental Income', 'Huuropbrengsten'),
       ('ddc14e90-0927-4d2a-8b61-78faf9511f58', 'other-income', 'Other', 'Overig');

-- debt repayment
INSERT INTO transaction_category ("transaction_category_group_id", "slug", "label_en", "label_nl")
VALUES ('62fba86f-f399-49a2-9b40-dae2697edbb8', 'credit-card-payments', 'Credit Card Payments', 'Creditcardbetalingen'),
       ('62fba86f-f399-49a2-9b40-dae2697edbb8', 'student-loans', 'Student Loans', 'Studieleningen'),
       ('62fba86f-f399-49a2-9b40-dae2697edbb8', 'personal-loans', 'Personal Loans', 'Persoonlijke Leningen'),
       ('62fba86f-f399-49a2-9b40-dae2697edbb8', 'other-debt-repayment', 'Other', 'Overig');

-- insurance
INSERT INTO transaction_category ("transaction_category_group_id", "slug", "label_en", "label_nl")
VALUES ('b463ffee-4dde-4094-92d3-af2e4da5dd2c', 'health-insurance', 'Health Insurance', 'Ziektekostenverzekering'),
       ('b463ffee-4dde-4094-92d3-af2e4da5dd2c', 'life-insurance', 'Life Insurance', 'Levensverzekering'),
       ('b463ffee-4dde-4094-92d3-af2e4da5dd2c', 'auto-insurance', 'Auto Insurance', 'Autoverzekering'),
       ('b463ffee-4dde-4094-92d3-af2e4da5dd2c', 'pet-insurance', 'Pet Insurance', 'Huisdierenverzekering'),
       ('b463ffee-4dde-4094-92d3-af2e4da5dd2c', 'homeowners-renters-insurance', 'Homeowners/Renters Insurance',
        'Woonhuis/Huurdersverzekering'),
       ('b463ffee-4dde-4094-92d3-af2e4da5dd2c', 'travel-insurance', 'Travel Insurance', 'Reisverzekering'),
       ('b463ffee-4dde-4094-92d3-af2e4da5dd2c', 'other-insurance', 'Other', 'Overig');

-- transportation
INSERT INTO transaction_category ("transaction_category_group_id", "slug", "label_en", "label_nl")
VALUES ('01d1e36c-44ca-4d86-a0e3-b2f2da3c223a', 'public-transportation', 'Public Transportation', 'Openbaar Vervoer'),
       ('01d1e36c-44ca-4d86-a0e3-b2f2da3c223a', 'fuel-gas', 'Fuel/Gas', 'Brandstof'),
       ('01d1e36c-44ca-4d86-a0e3-b2f2da3c223a', 'car-payments', 'Car Payments', 'Lease/huurkosten'),
       ('01d1e36c-44ca-4d86-a0e3-b2f2da3c223a', 'transportation-maintenance-repairs', 'Maintenance/Repairs',
        'Onderhoud/Reparaties'),
       ('01d1e36c-44ca-4d86-a0e3-b2f2da3c223a', 'parking-fees', 'Parking Fees', 'Parkeerkosten'),
       ('01d1e36c-44ca-4d86-a0e3-b2f2da3c223a', 'ride-sharing-services', 'Ride-Sharing Services',
        'Taxi/Ride-Sharingdiensten'),
       ('01d1e36c-44ca-4d86-a0e3-b2f2da3c223a', 'other-transportation', 'Other', 'Overig');

-- personal-care
INSERT INTO transaction_category ("transaction_category_group_id", "slug", "label_en", "label_nl")
VALUES ('c0aa2699-4953-4bf9-9913-b0b6ace6d2d4', 'haircuts-salon-services', 'Haircuts/Salon Services', 'Kapper'),
       ('c0aa2699-4953-4bf9-9913-b0b6ace6d2d4', 'skincare-beauty-products', 'Skincare/Beauty Products',
        'Huidverzorging/Schoonheidsproducten'),
       ('c0aa2699-4953-4bf9-9913-b0b6ace6d2d4', 'clothing-apparel', 'Clothing/Apparel', 'Kleding'),
       ('c0aa2699-4953-4bf9-9913-b0b6ace6d2d4', 'shoes-accessories', 'Shoes/Accessories', 'Schoenen/Accessoires'),
       ('c0aa2699-4953-4bf9-9913-b0b6ace6d2d4', 'other-personal-care', 'Other', 'Overig');

-- education
INSERT INTO transaction_category ("transaction_category_group_id", "slug", "label_en", "label_nl")
VALUES ('99ac960c-7cce-4938-8806-b532ff2455ba', 'tuition-fees', 'Tuition Fees', 'Collegegeld'),
       ('99ac960c-7cce-4938-8806-b532ff2455ba', 'books-supplies', 'Books/Supplies', 'Boeken/Benodigdheden'),
       ('99ac960c-7cce-4938-8806-b532ff2455ba', 'online-courses', 'Online Courses', 'Online Cursussen'),
       ('99ac960c-7cce-4938-8806-b532ff2455ba', 'extracurricular-activities', 'Extracurricular Activities',
        'Buitenschoolse Activiteiten'),
       ('99ac960c-7cce-4938-8806-b532ff2455ba', 'other-education', 'Other', 'Overig');

-- childcare-education
INSERT INTO transaction_category ("transaction_category_group_id", "slug", "label_en", "label_nl")
VALUES ('51634522-b1ba-4c2c-829f-5cbacae23cbd', 'daycare-preschool', 'Daycare/Preschool',
        'Kinderopvang/Peuterspeelzaal'),
       ('51634522-b1ba-4c2c-829f-5cbacae23cbd', 'school-supplies', 'School Supplies', 'Schoolbenodigdheden'),
       ('51634522-b1ba-4c2c-829f-5cbacae23cbd', 'childcare-extracurricular-activities', 'Extracurricular Activities',
        'Buitenschoolse Activiteiten'),
       ('51634522-b1ba-4c2c-829f-5cbacae23cbd', 'babysitting', 'Babysitting', 'Oppas'),
       ('51634522-b1ba-4c2c-829f-5cbacae23cbd', 'other-childcare-education', 'Other', 'Overig');

-- pet-care
INSERT INTO transaction_category ("transaction_category_group_id", "slug", "label_en", "label_nl")
VALUES ('2f2b4ef6-4c0b-4f9c-a7b6-17bc7a8722a3', 'pet-food', 'Food', 'Dierenvoer'),
       ('2f2b4ef6-4c0b-4f9c-a7b6-17bc7a8722a3', 'veterinary-bills', 'Veterinary Bills', 'Dierenartskosten'),
       ('2f2b4ef6-4c0b-4f9c-a7b6-17bc7a8722a3', 'grooming', 'Grooming', 'Verzorging'),
       ('2f2b4ef6-4c0b-4f9c-a7b6-17bc7a8722a3', 'toys-accessories', 'Toys/Accessories', 'Speelgoed/Accessoires'),
       ('2f2b4ef6-4c0b-4f9c-a7b6-17bc7a8722a3', 'other-pet-care', 'Other', 'Overig');