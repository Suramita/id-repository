\c mosip_credential

REASSIGN OWNED BY sysadmin TO postgres;

REVOKE ALL PRIVILEGES ON ALL TABLES IN SCHEMA credential FROM credentialuser;

REVOKE ALL PRIVILEGES ON ALL TABLES IN SCHEMA credential FROM sysadmin;

GRANT SELECT, INSERT, TRUNCATE, REFERENCES, UPDATE, DELETE ON ALL TABLES IN SCHEMA credential TO credentialuser;

GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA credential TO postgres;