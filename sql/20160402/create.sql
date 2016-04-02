DROP TABLE BS_AEFeedback;
CREATE TABLE BS_AEFeedback
    (
        ID VARCHAR(50) NOT NULL,
        AENO VARCHAR(50) NOT NULL,
        AEORGNM VARCHAR(100) NOT NULL,
        AEORGNO VARCHAR(50) NOT NULL,
        AEEDORGNM VARCHAR(100) NOT NULL,
        AEEDORGNO VARCHAR(50) NOT NULL,
        
        TopLevelBankNm VARCHAR(100),
        TopLevelBankNo VARCHAR(50),
        DirectParentlBankNm VARCHAR(100),
        DirectParentlBankNo VARCHAR(50),
        FeedbackOpnion CLOB,
        FeedbackDate TIMESTAMP,
        
        CREATOR VARCHAR(50),
        CREATORORG VARCHAR(100),
        CREATORORGNO VARCHAR(50),
        CRTDATE TIMESTAMP,
        STAT VARCHAR(50),
        FLAG VARCHAR(50),
        CREATEDATE TIMESTAMP,
        UPDATEATE TIMESTAMP,
        CRTLOGIN VARCHAR(100),
        AEEDORGZZNO VARCHAR(50),
        AEEDORGXZHNO VARCHAR(50),
        AEEDORGZZNM VARCHAR(100),
        AEEDORGXZHNM VARCHAR(100),
        ISFINISHED INTEGER,
        ISFINISH CHARACTER(1),
        CANBEUPDATE CHARACTER(1),
        AEEDORGBANKTYPE VARCHAR(50),
        CONSTRAINT P_KEY_1 PRIMARY KEY (ID)
    );
    
    
DROP TABLE BS_AEPubnishFeedback;
CREATE TABLE BS_AEPubnishFeedback
    (
        ID VARCHAR(50) NOT NULL,
        AENO VARCHAR(50) NOT NULL,
        AEORGNM VARCHAR(100) NOT NULL,
        AEORGNO VARCHAR(50) NOT NULL,
        AEEDORGNM VARCHAR(100) NOT NULL,
        AEEDORGNO VARCHAR(50) NOT NULL,
        
        TopLevelBankNm VARCHAR(100),
        TopLevelBankNo VARCHAR(50),
        DirectParentlBankNm VARCHAR(100),
        DirectParentlBankNo VARCHAR(50),
        FeedbackOpnion CLOB,
        FeedbackDate TIMESTAMP,
        
        CREATOR VARCHAR(50),
        CREATORORG VARCHAR(100),
        CREATORORGNO VARCHAR(50),
        CRTDATE TIMESTAMP,
        STAT VARCHAR(50),
        FLAG VARCHAR(50),
        CREATEDATE TIMESTAMP,
        UPDATEATE TIMESTAMP,
        CRTLOGIN VARCHAR(100),
        AEEDORGZZNO VARCHAR(50),
        AEEDORGXZHNO VARCHAR(50),
        AEEDORGZZNM VARCHAR(100),
        AEEDORGXZHNM VARCHAR(100),
        ISFINISHED INTEGER,
        ISFINISH CHARACTER(1),
        CANBEUPDATE CHARACTER(1),
        AEEDORGBANKTYPE VARCHAR(50),
        CONSTRAINT P_KEY_1 PRIMARY KEY (ID)
    );

DROP TABLE BS_AEFEEDBACK_TMP;
CREATE TABLE BS_AEFEEDBACK_TMP
    (
        ID VARCHAR(50) NOT NULL,
        BANKNO VARCHAR(50),
        BANKNAME VARCHAR(200),
        BANKTYPENO VARCHAR(50),
        BANKTYPENAME VARCHAR(200),
        DURING VARCHAR(50),
        BANKTYPEINDEX INTEGER,
        BANKAREAINDEX INTEGER,
        BANKAREA VARCHAR(50),
       
        D6 DECIMAL(18,6),
        D5 DECIMAL(18,6),
        D4 DECIMAL(13,0),
        D3 DECIMAL(13,0),
        D2 DECIMAL(13,0),
        D1 DECIMAL(13,0)
    );
    
ALTER TABLE BS_AECONCLUSION ADD column TopLevelBankNm VARCHAR(100);
ALTER TABLE BS_AECONCLUSION ADD column  TopLevelBankNo VARCHAR(50);
ALTER TABLE BS_AECONCLUSION ADD column  DirectParentlBankNm VARCHAR(100);
ALTER TABLE BS_AECONCLUSION ADD column  DirectParentlBankNo VARCHAR(50);