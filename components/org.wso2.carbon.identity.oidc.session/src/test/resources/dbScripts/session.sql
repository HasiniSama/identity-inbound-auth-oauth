CREATE TABLE IF NOT EXISTS IDN_AUTH_SESSION_STORE (
                                        SESSION_ID VARCHAR (100) NOT NULL,
                                        SESSION_TYPE VARCHAR(100) NOT NULL,
                                        OPERATION VARCHAR(10) NOT NULL,
                                        SESSION_OBJECT BLOB,
                                        TIME_CREATED BIGINT,
                                        TENANT_ID INTEGER DEFAULT -1,
                                        EXPIRY_TIME BIGINT,
                                        PRIMARY KEY (SESSION_ID, SESSION_TYPE, TIME_CREATED, OPERATION)
);


CREATE TABLE IF NOT EXISTS IDN_AUTH_TEMP_SESSION_STORE (
                                             SESSION_ID VARCHAR (100) NOT NULL,
                                             SESSION_TYPE VARCHAR(100) NOT NULL,
                                             OPERATION VARCHAR(10) NOT NULL,
                                             SESSION_OBJECT BLOB,
                                             TIME_CREATED BIGINT,
                                             TENANT_ID INTEGER DEFAULT -1,
                                             EXPIRY_TIME BIGINT,
                                             PRIMARY KEY (SESSION_ID, SESSION_TYPE, TIME_CREATED, OPERATION)
);
