DROP TABLE IF EXISTS `verifier_queries`;

CREATE TABLE verifier_queries(
    id INT NOT NULL AUTO_INCREMENT,
    suite VARCHAR(256) NOT NULL,
    name VARCHAR(256),
    test_catalog VARCHAR(256) NOT NULL,
    test_schema VARCHAR(256) NOT NULL,
    test_prequeries TEXT,
    test_query TEXT NOT NULL,
    test_postqueries TEXT,
    test_username VARCHAR(256) NOT NULL default 'verifier-test',
    test_password VARCHAR(256),
    control_catalog VARCHAR(256) NOT NULL,
    control_schema VARCHAR(256) NOT NULL,
    control_prequeries TEXT,
    control_query TEXT NOT NULL,
    control_postqueries TEXT,
    control_username VARCHAR(256) NOT NULL default 'verifier-test',
    control_password VARCHAR(256),
    session_properties_json TEXT,
    PRIMARY KEY (id)
);