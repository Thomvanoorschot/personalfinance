-- Table Definitions with created_at and updated_at columns

CREATE TABLE "user"
(
    id         UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    email      VARCHAR(100) UNIQUE NOT NULL,
    created_at TIMESTAMP        DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP        DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE account
(
    id         UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id    UUID        NOT NULL,
    iban       VARCHAR(34) NOT NULL,
    created_at TIMESTAMP        DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP        DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (user_id) REFERENCES "user" (id) ON DELETE CASCADE
);

CREATE TABLE transaction
(
    id                                UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    account_id                        UUID           NOT NULL,
    external_id                       VARCHAR(255)   NOT NULL,
    user_id                           UUID           NOT NULL,
    booking_date                      DATE,
    value_date                        DATE           NOT NULL,
    value_date_time                   TIMESTAMP,
    transaction_amount                NUMERIC(20, 2) NOT NULL,
    currency                          VARCHAR(10)    NOT NULL,
    creditor_name                     VARCHAR(255),
    creditor_iban                     VARCHAR(34),
    remittance_information            TEXT[],
    proprietary_bank_transaction_code VARCHAR(255),
    balance_currency                  VARCHAR(10),
    balance_type                      VARCHAR(50),
    internal_transaction_id           VARCHAR(255),
    debtor_name                       VARCHAR(255),
    debtor_iban                       VARCHAR(34),
    created_at                        TIMESTAMP        DEFAULT CURRENT_TIMESTAMP,
    updated_at                        TIMESTAMP        DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (user_id) REFERENCES "user" (id) ON DELETE CASCADE,
    FOREIGN KEY (account_id) REFERENCES account (id) ON DELETE CASCADE
);

CREATE TABLE requisition
(
    id         UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id    UUID NOT NULL,
    created_at TIMESTAMP        DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP        DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (user_id) REFERENCES "user" (id) ON DELETE CASCADE
);

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