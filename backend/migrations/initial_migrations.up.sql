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

CREATE TABLE transaction_category
(
    id         UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    label      TEXT UNIQUE NOT NULL,
    created_at TIMESTAMP        DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP        DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_transaction_category_label ON transaction_category (label);

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

    FOREIGN KEY (user_id) REFERENCES "user" (id) ON DELETE CASCADE,
    FOREIGN KEY (account_id) REFERENCES account (id) ON DELETE CASCADE,
    FOREIGN KEY (transaction_category_id) REFERENCES transaction_category (id) ON DELETE CASCADE
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

CREATE TRIGGER set_timestamp_institution
    BEFORE INSERT OR UPDATE
    ON institution
    FOR EACH ROW
EXECUTE FUNCTION set_timestamps();