DROP TABLE JG_APP_PRINCIPAL;
CREATE TABLE JG_APP_PRINCIPAL ( ID BIGINT NOT NULL, NAME VARCHAR(255) NOT NULL, PRIMARY KEY (ID), UNIQUE (NAME) );
insert into JG_APP_PRINCIPAL (ID, NAME) values (1, 'admin');
insert into JG_APP_PRINCIPAL (ID, NAME) values (2, 'guest');
insert into JG_APP_PRINCIPAL (ID, NAME) values (3, 'systemadmin');
insert into JG_APP_PRINCIPAL (ID, NAME) values (4, '管理员');
insert into JG_APP_PRINCIPAL (ID, NAME) values (5, '内控监督员');
insert into JG_APP_PRINCIPAL (ID, NAME) values (6, '普通用户');
insert into JG_APP_PRINCIPAL (ID, NAME) values (7, '其他');
DROP TABLE JG_CREDENTIAL;
CREATE TABLE JG_CREDENTIAL ( ID BIGINT NOT NULL, USER_ID BIGINT NOT NULL, PUBLIC_VISIBILITY INTEGER NOT NULL, CRED_NAME VARCHAR(255) NOT NULL, CRED_VALUE VARCHAR(255) NOT NULL, PRIMARY KEY (ID) );
insert into JG_CREDENTIAL (ID, USER_ID, PUBLIC_VISIBILITY, CRED_NAME, CRED_VALUE) values (3, 1, 0, 'password', '96e79218965eb72c92a549dd5a330112');
insert into JG_CREDENTIAL (ID, USER_ID, PUBLIC_VISIBILITY, CRED_NAME, CRED_VALUE) values (4, 1, 1, 'organization', 'A1000111000031');
insert into JG_CREDENTIAL (ID, USER_ID, PUBLIC_VISIBILITY, CRED_NAME, CRED_VALUE) values (6, 1, 1, 'ispcbuser', 'YES');
insert into JG_CREDENTIAL (ID, USER_ID, PUBLIC_VISIBILITY, CRED_NAME, CRED_VALUE) values (7, 2, 0, 'login', 'guest');
insert into JG_CREDENTIAL (ID, USER_ID, PUBLIC_VISIBILITY, CRED_NAME, CRED_VALUE) values (8, 2, 0, 'password', 'guest');
insert into JG_CREDENTIAL (ID, USER_ID, PUBLIC_VISIBILITY, CRED_NAME, CRED_VALUE) values (9, 3, 1, 'nickname', 'systemAdmin1');
insert into JG_CREDENTIAL (ID, USER_ID, PUBLIC_VISIBILITY, CRED_NAME, CRED_VALUE) values (10, 3, 0, 'login', 'systemadmin');
insert into JG_CREDENTIAL (ID, USER_ID, PUBLIC_VISIBILITY, CRED_NAME, CRED_VALUE) values (11, 3, 0, 'password', '96e79218965eb72c92a549dd5a330112');
insert into JG_CREDENTIAL (ID, USER_ID, PUBLIC_VISIBILITY, CRED_NAME, CRED_VALUE) values (1, 1, 1, 'nickname', 'admin');
insert into JG_CREDENTIAL (ID, USER_ID, PUBLIC_VISIBILITY, CRED_NAME, CRED_VALUE) values (2, 1, 0, 'login', '51082419851031575X');
insert into JG_CREDENTIAL (ID, USER_ID, PUBLIC_VISIBILITY, CRED_NAME, CRED_VALUE) values (12, 4, 1, 'organization', 'A1000151000410');
insert into JG_CREDENTIAL (ID, USER_ID, PUBLIC_VISIBILITY, CRED_NAME, CRED_VALUE) values (13, 4, 1, 'nickname', '邱洋');
insert into JG_CREDENTIAL (ID, USER_ID, PUBLIC_VISIBILITY, CRED_NAME, CRED_VALUE) values (14, 4, 0, 'login', '51082419851031575Y');
insert into JG_CREDENTIAL (ID, USER_ID, PUBLIC_VISIBILITY, CRED_NAME, CRED_VALUE) values (15, 4, 0, 'password', '96e79218965eb72c92a549dd5a330112');
insert into JG_CREDENTIAL (ID, USER_ID, PUBLIC_VISIBILITY, CRED_NAME, CRED_VALUE) values (16, 5, 1, 'nickname', '刘洋');
insert into JG_CREDENTIAL (ID, USER_ID, PUBLIC_VISIBILITY, CRED_NAME, CRED_VALUE) values (17, 5, 1, 'organization', 'C1078851000017');
insert into JG_CREDENTIAL (ID, USER_ID, PUBLIC_VISIBILITY, CRED_NAME, CRED_VALUE) values (18, 5, 0, 'login', 'C1078851000017-1');
insert into JG_CREDENTIAL (ID, USER_ID, PUBLIC_VISIBILITY, CRED_NAME, CRED_VALUE) values (19, 5, 0, 'password', '96e79218965eb72c92a549dd5a330112');
insert into JG_CREDENTIAL (ID, USER_ID, PUBLIC_VISIBILITY, CRED_NAME, CRED_VALUE) values (20, 6, 1, 'nickname', '王洋');
insert into JG_CREDENTIAL (ID, USER_ID, PUBLIC_VISIBILITY, CRED_NAME, CRED_VALUE) values (21, 6, 1, 'organization', 'C1078851000017');
insert into JG_CREDENTIAL (ID, USER_ID, PUBLIC_VISIBILITY, CRED_NAME, CRED_VALUE) values (22, 6, 0, 'password', '96e79218965eb72c92a549dd5a330112');
insert into JG_CREDENTIAL (ID, USER_ID, PUBLIC_VISIBILITY, CRED_NAME, CRED_VALUE) values (23, 6, 0, 'login', '51082419851031575A');
DROP TABLE JG_DOMAIN;
CREATE TABLE JG_DOMAIN ( ID BIGINT NOT NULL, NAME VARCHAR(255) NOT NULL, PRIMARY KEY (ID), UNIQUE (NAME) );
insert into JG_DOMAIN (ID, NAME) values (1, 'public');
insert into JG_DOMAIN (ID, NAME) values (2, 'vip');
insert into JG_DOMAIN (ID, NAME) values (3, '用户管理');
DROP TABLE JG_PERMISSION;
CREATE TABLE JG_PERMISSION ( ID BIGINT NOT NULL, CLASS VARCHAR(255), NAME VARCHAR(255) NOT NULL, ACTIONS VARCHAR(255), DOMAIN_ID BIGINT, PRIMARY KEY (ID), UNIQUE (NAME) );
insert into JG_PERMISSION (ID, CLASS, NAME, ACTIONS, DOMAIN_ID) values (1, 'net.sf.jguard.core.authorization.permissions.URLPermission', 'captcha', '/Captcha.do,ANY', 1);
insert into JG_PERMISSION (ID, CLASS, NAME, ACTIONS, DOMAIN_ID) values (2, 'net.sf.jguard.core.authorization.permissions.URLPermission', 'accessDenied', '/AccessDenied.do,ANY', 1);
insert into JG_PERMISSION (ID, CLASS, NAME, ACTIONS, DOMAIN_ID) values (3, 'net.sf.jguard.core.authorization.permissions.URLPermission', 'registration', '/Registration.do,ANY', 1);
insert into JG_PERMISSION (ID, CLASS, NAME, ACTIONS, DOMAIN_ID) values (4, 'net.sf.jguard.core.authorization.permissions.URLPermission', 'welcome', '/Welcome.do,ANY', 1);
insert into JG_PERMISSION (ID, CLASS, NAME, ACTIONS, DOMAIN_ID) values (5, 'net.sf.jguard.core.authorization.permissions.URLPermission', 'TopPage', '/top.do,ANY', 1);
insert into JG_PERMISSION (ID, CLASS, NAME, ACTIONS, DOMAIN_ID) values (6, 'net.sf.jguard.core.authorization.permissions.URLPermission', 'LeftPage', '/left.do,ANY', 1);
insert into JG_PERMISSION (ID, CLASS, NAME, ACTIONS, DOMAIN_ID) values (7, 'net.sf.jguard.core.authorization.permissions.URLPermission', 'allAccess', '/*,ANY', 2);
insert into JG_PERMISSION (ID, CLASS, NAME, ACTIONS, DOMAIN_ID) values (8, 'net.sf.jguard.core.authorization.permissions.URLPermission', 'logList', '/Log.do?method=listLog4j&*,ANY,ANY', 1);
insert into JG_PERMISSION (ID, CLASS, NAME, ACTIONS, DOMAIN_ID) values (9, 'net.sf.jguard.core.authorization.permissions.URLPermission', 'logDetail', '/Log.do?method=ViewLog&*,ANY,ANY', 1);
insert into JG_PERMISSION (ID, CLASS, NAME, ACTIONS, DOMAIN_ID) values (23, 'net.sf.jguard.core.authorization.permissions.URLPermission', '跳转用户管理列表页面', '/User.do?method=userList&*,ANY,ANY', 3);
insert into JG_PERMISSION (ID, CLASS, NAME, ACTIONS, DOMAIN_ID) values (11, 'net.sf.jguard.core.authorization.permissions.URLPermission', '跳转创建用户页面按钮', '/User.do?method=createUserPage&*,ANY,ANY', 3);
insert into JG_PERMISSION (ID, CLASS, NAME, ACTIONS, DOMAIN_ID) values (12, 'net.sf.jguard.core.authorization.permissions.URLPermission', '跳转用户详细信息按钮', '/User.do?method=readUser&*,ANY,ANY', 3);
insert into JG_PERMISSION (ID, CLASS, NAME, ACTIONS, DOMAIN_ID) values (13, 'net.sf.jguard.core.authorization.permissions.URLPermission', '跳转添加用户兼任页面按钮', '/User.do?method=addUserPage&*,ANY,ANY', 3);
insert into JG_PERMISSION (ID, CLASS, NAME, ACTIONS, DOMAIN_ID) values (14, 'net.sf.jguard.core.authorization.permissions.URLPermission', '用户管理用户申请列表页面', '/User.do?method=applyUserList&*,ANY,ANY', 3);
insert into JG_PERMISSION (ID, CLASS, NAME, ACTIONS, DOMAIN_ID) values (15, 'net.sf.jguard.core.authorization.permissions.URLPermission', '用户申请审核列表页面', '/User.do?method=auditUserList&*,ANY,ANY', 3);
insert into JG_PERMISSION (ID, CLASS, NAME, ACTIONS, DOMAIN_ID) values (16, 'net.sf.jguard.core.authorization.permissions.URLPermission', '跳转用户申请审核页面按钮', '/User.do?method=auditUserPage&*,ANY,ANY', 3);
insert into JG_PERMISSION (ID, CLASS, NAME, ACTIONS, DOMAIN_ID) values (17, 'net.sf.jguard.core.authorization.permissions.URLPermission', '跳转用户申请办理页面按钮', '/User.do?method=applyUserPage&*,ANY,ANY', 3);
insert into JG_PERMISSION (ID, CLASS, NAME, ACTIONS, DOMAIN_ID) values (18, 'net.sf.jguard.core.authorization.permissions.URLPermission', '提交用户申请办理结果按钮', '/User.do?method=applyUser&*,ANY,ANY', 3);
insert into JG_PERMISSION (ID, CLASS, NAME, ACTIONS, DOMAIN_ID) values (19, 'net.sf.jguard.core.authorization.permissions.URLPermission', '提交用户申请审核结果按钮', '/User.do?method=auditUser&*,ANY,ANY', 3);
insert into JG_PERMISSION (ID, CLASS, NAME, ACTIONS, DOMAIN_ID) values (20, 'net.sf.jguard.core.authorization.permissions.URLPermission', '提交用户创建按钮', '/User.do?method=createUserStart&*,ANY,ANY', 3);
insert into JG_PERMISSION (ID, CLASS, NAME, ACTIONS, DOMAIN_ID) values (21, 'net.sf.jguard.core.authorization.permissions.URLPermission', '用户管理禁用用户按钮', '/User.do?method=disableUser&*,ANY,ANY', 3);
insert into JG_PERMISSION (ID, CLASS, NAME, ACTIONS, DOMAIN_ID) values (22, 'net.sf.jguard.core.authorization.permissions.URLPermission', '用户管理启用用户按钮', '/User.do?method=enableUser&*,ANY,ANY', 3);
insert into JG_PERMISSION (ID, CLASS, NAME, ACTIONS, DOMAIN_ID) values (24, 'net.sf.jguard.core.authorization.permissions.URLPermission', '用户兼任管理列表页面', '/User.do?method=pluralUserList&*,ANY,ANY', 3);
insert into JG_PERMISSION (ID, CLASS, NAME, ACTIONS, DOMAIN_ID) values (10, 'net.sf.jguard.core.authorization.permissions.URLPermission', 'orgTree', '/SystemBaseInfoManagerAction.do?method=orgTree&*,ANY,ANY', 1);



DROP TABLE JG_PRINCIPAL;
CREATE TABLE JG_PRINCIPAL ( ID BIGINT NOT NULL, NAME VARCHAR(255) NOT NULL, APPLICATION_NAME VARCHAR(255) NOT NULL, CLASS_NAME VARCHAR(255) NOT NULL, PRIMARY KEY (ID) );
insert into JG_PRINCIPAL (ID, NAME, APPLICATION_NAME, CLASS_NAME) values (1, 'admin', 'csims', 'net.sf.jguard.core.principals.RolePrincipal');
insert into JG_PRINCIPAL (ID, NAME, APPLICATION_NAME, CLASS_NAME) values (2, 'guest', 'csims', 'net.sf.jguard.core.principals.RolePrincipal');
insert into JG_PRINCIPAL (ID, NAME, APPLICATION_NAME, CLASS_NAME) values (3, 'systemadmin', 'csims', 'net.sf.jguard.core.principals.RolePrincipal');
insert into JG_PRINCIPAL (ID, NAME, APPLICATION_NAME, CLASS_NAME) values (4, '管理员', 'csims', 'net.sf.jguard.core.principals.RolePrincipal');
insert into JG_PRINCIPAL (ID, NAME, APPLICATION_NAME, CLASS_NAME) values (5, '内控监督员', 'csims', 'net.sf.jguard.core.principals.RolePrincipal');
insert into JG_PRINCIPAL (ID, NAME, APPLICATION_NAME, CLASS_NAME) values (6, '普通用户', 'csims', 'net.sf.jguard.core.principals.RolePrincipal');
insert into JG_PRINCIPAL (ID, NAME, APPLICATION_NAME, CLASS_NAME) values (7, '其他', 'csims', 'net.sf.jguard.core.principals.RolePrincipal');
DROP TABLE JG_PRINCIPAL_DOMAIN;
CREATE TABLE JG_PRINCIPAL_DOMAIN ( DOMAIN_ID BIGINT NOT NULL, PRINCIPAL_ID BIGINT NOT NULL, PRIMARY KEY (PRINCIPAL_ID, DOMAIN_ID) );
insert into JG_PRINCIPAL_DOMAIN (DOMAIN_ID, PRINCIPAL_ID) values (1, 1);
insert into JG_PRINCIPAL_DOMAIN (DOMAIN_ID, PRINCIPAL_ID) values (2, 1);
insert into JG_PRINCIPAL_DOMAIN (DOMAIN_ID, PRINCIPAL_ID) values (3, 1);
insert into JG_PRINCIPAL_DOMAIN (DOMAIN_ID, PRINCIPAL_ID) values (1, 2);
insert into JG_PRINCIPAL_DOMAIN (DOMAIN_ID, PRINCIPAL_ID) values (3, 2);
insert into JG_PRINCIPAL_DOMAIN (DOMAIN_ID, PRINCIPAL_ID) values (1, 4);
insert into JG_PRINCIPAL_DOMAIN (DOMAIN_ID, PRINCIPAL_ID) values (1, 5);
DROP TABLE JG_PRINCIPAL_HIERARCHY;
CREATE TABLE JG_PRINCIPAL_HIERARCHY ( PRINCIPAL_ASC_ID BIGINT NOT NULL, PRINCIPAL_DESC_ID BIGINT NOT NULL, PRIMARY KEY (PRINCIPAL_ASC_ID, PRINCIPAL_DESC_ID) );
DROP TABLE JG_PRINCIPAL_PERMISSION;
CREATE TABLE JG_PRINCIPAL_PERMISSION ( PERMISSION_ID BIGINT NOT NULL, PRINCIPAL_ID BIGINT NOT NULL, PRIMARY KEY (PRINCIPAL_ID, PERMISSION_ID) );
insert into JG_PRINCIPAL_PERMISSION (PERMISSION_ID, PRINCIPAL_ID) values (11, 4);
insert into JG_PRINCIPAL_PERMISSION (PERMISSION_ID, PRINCIPAL_ID) values (12, 4);
insert into JG_PRINCIPAL_PERMISSION (PERMISSION_ID, PRINCIPAL_ID) values (13, 4);
insert into JG_PRINCIPAL_PERMISSION (PERMISSION_ID, PRINCIPAL_ID) values (15, 4);
insert into JG_PRINCIPAL_PERMISSION (PERMISSION_ID, PRINCIPAL_ID) values (16, 4);
insert into JG_PRINCIPAL_PERMISSION (PERMISSION_ID, PRINCIPAL_ID) values (19, 4);
insert into JG_PRINCIPAL_PERMISSION (PERMISSION_ID, PRINCIPAL_ID) values (20, 4);
insert into JG_PRINCIPAL_PERMISSION (PERMISSION_ID, PRINCIPAL_ID) values (21, 4);
insert into JG_PRINCIPAL_PERMISSION (PERMISSION_ID, PRINCIPAL_ID) values (22, 4);
insert into JG_PRINCIPAL_PERMISSION (PERMISSION_ID, PRINCIPAL_ID) values (23, 4);
insert into JG_PRINCIPAL_PERMISSION (PERMISSION_ID, PRINCIPAL_ID) values (24, 4);
insert into JG_PRINCIPAL_PERMISSION (PERMISSION_ID, PRINCIPAL_ID) values (11, 5);
insert into JG_PRINCIPAL_PERMISSION (PERMISSION_ID, PRINCIPAL_ID) values (12, 5);
insert into JG_PRINCIPAL_PERMISSION (PERMISSION_ID, PRINCIPAL_ID) values (14, 5);
insert into JG_PRINCIPAL_PERMISSION (PERMISSION_ID, PRINCIPAL_ID) values (17, 5);
insert into JG_PRINCIPAL_PERMISSION (PERMISSION_ID, PRINCIPAL_ID) values (18, 5);
insert into JG_PRINCIPAL_PERMISSION (PERMISSION_ID, PRINCIPAL_ID) values (20, 5);
insert into JG_PRINCIPAL_PERMISSION (PERMISSION_ID, PRINCIPAL_ID) values (21, 5);
insert into JG_PRINCIPAL_PERMISSION (PERMISSION_ID, PRINCIPAL_ID) values (22, 5);
insert into JG_PRINCIPAL_PERMISSION (PERMISSION_ID, PRINCIPAL_ID) values (23, 5);
DROP TABLE JG_ST_CREDENTIAL;
CREATE TABLE JG_ST_CREDENTIAL ( ID BIGINT NOT NULL, CRED_NAME VARCHAR(255) NOT NULL, PUBLIC_VISIBILITY INTEGER NOT NULL, REQUIRED INTEGER NOT NULL, IDENTITY INTEGER NOT NULL, ST_USER_ID BIGINT, PRIMARY KEY (ID) );
insert into JG_ST_CREDENTIAL (ID, CRED_NAME, PUBLIC_VISIBILITY, REQUIRED, IDENTITY, ST_USER_ID) values (1, 'login', 0, 1, 1, 1);
insert into JG_ST_CREDENTIAL (ID, CRED_NAME, PUBLIC_VISIBILITY, REQUIRED, IDENTITY, ST_USER_ID) values (2, 'password', 0, 1, 0, 1);
insert into JG_ST_CREDENTIAL (ID, CRED_NAME, PUBLIC_VISIBILITY, REQUIRED, IDENTITY, ST_USER_ID) values (3, 'nickname', 1, 1, 0, 1);
insert into JG_ST_CREDENTIAL (ID, CRED_NAME, PUBLIC_VISIBILITY, REQUIRED, IDENTITY, ST_USER_ID) values (4, 'organization', 1, 1, 0, 1);
insert into JG_ST_CREDENTIAL (ID, CRED_NAME, PUBLIC_VISIBILITY, REQUIRED, IDENTITY, ST_USER_ID) values (6, 'email', 1, 1, 0, 1);
insert into JG_ST_CREDENTIAL (ID, CRED_NAME, PUBLIC_VISIBILITY, REQUIRED, IDENTITY, ST_USER_ID) values (7, 'ispcbuser', 1, 1, 0, 1);
DROP TABLE JG_ST_PRINCIPAL;
CREATE TABLE JG_ST_PRINCIPAL ( ID BIGINT NOT NULL, NAME VARCHAR(255) NOT NULL, APPLICATION_NAME VARCHAR(255) NOT NULL, CLASS_NAME VARCHAR(255) NOT NULL, ST_USER_ID BIGINT NOT NULL, PRIMARY KEY (ID) );
insert into JG_ST_PRINCIPAL (ID, NAME, APPLICATION_NAME, CLASS_NAME, ST_USER_ID) values (1, 'admin', 'csims', 'net.sf.jguard.core.principals.RolePrincipal', 1);
DROP TABLE JG_ST_USER;
CREATE TABLE JG_ST_USER ( ID BIGINT NOT NULL, NAME VARCHAR(255) NOT NULL, PRIMARY KEY (ID), UNIQUE (NAME) );
insert into JG_ST_USER (ID, NAME) values (1, 'default');
DROP TABLE JG_USER;
CREATE TABLE JG_USER ( ID BIGINT NOT NULL, PRIMARY KEY (ID) );
insert into JG_USER (ID) values (1);
insert into JG_USER (ID) values (2);
insert into JG_USER (ID) values (3);
insert into JG_USER (ID) values (4);
insert into JG_USER (ID) values (5);
insert into JG_USER (ID) values (6);
DROP TABLE JG_USER_PRINCIPAL;
CREATE TABLE JG_USER_PRINCIPAL ( USER_ID BIGINT NOT NULL, PRINCIPAL_ID BIGINT NOT NULL, DEFINITION VARCHAR(255), ACTIVE INTEGER NOT NULL, PRIMARY KEY (PRINCIPAL_ID, USER_ID) );
insert into JG_USER_PRINCIPAL (USER_ID, PRINCIPAL_ID, DEFINITION, ACTIVE) values (1, 1, 'true', 1);
insert into JG_USER_PRINCIPAL (USER_ID, PRINCIPAL_ID, DEFINITION, ACTIVE) values (2, 2, 'true', 1);
insert into JG_USER_PRINCIPAL (USER_ID, PRINCIPAL_ID, DEFINITION, ACTIVE) values (3, 3, 'true', 1);
insert into JG_USER_PRINCIPAL (USER_ID, PRINCIPAL_ID, DEFINITION, ACTIVE) values (4, 4, 'true', 1);
insert into JG_USER_PRINCIPAL (USER_ID, PRINCIPAL_ID, DEFINITION, ACTIVE) values (5, 5, 'true', 1);
insert into JG_USER_PRINCIPAL (USER_ID, PRINCIPAL_ID, DEFINITION, ACTIVE) values (6, 4, 'true', 1);
ALTER TABLE JG_CREDENTIAL ADD CONSTRAINT FK_CREDENTIAL_USER_ID FOREIGN KEY (USER_ID) REFERENCES JG_USER (ID);
ALTER TABLE JG_PERMISSION ADD CONSTRAINT FK_PERMISSION_DOMAIN FOREIGN KEY (DOMAIN_ID) REFERENCES JG_DOMAIN (ID);
ALTER TABLE JG_PRINCIPAL_DOMAIN ADD CONSTRAINT FK_DOMAIN_PRINCIPAL FOREIGN KEY (PRINCIPAL_ID) REFERENCES JG_APP_PRINCIPAL (ID);
ALTER TABLE JG_PRINCIPAL_DOMAIN ADD CONSTRAINT FK_PRINCIPAL_DOMAIN FOREIGN KEY (DOMAIN_ID) REFERENCES JG_DOMAIN (ID);
ALTER TABLE JG_PRINCIPAL_HIERARCHY ADD CONSTRAINT FK_PRINCIPAL_PRINCIPAL_HIERARCHY FOREIGN KEY (PRINCIPAL_ASC_ID) REFERENCES JG_APP_PRINCIPAL (ID);
ALTER TABLE JG_PRINCIPAL_HIERARCHY ADD CONSTRAINT FK_PRINCIPAL_PRINCIPAL_HIERARCHY2 FOREIGN KEY (PRINCIPAL_DESC_ID) REFERENCES JG_APP_PRINCIPAL (ID);
ALTER TABLE JG_PRINCIPAL_PERMISSION ADD CONSTRAINT FK_PERMISSION_PRINCIPAL FOREIGN KEY (PRINCIPAL_ID) REFERENCES JG_APP_PRINCIPAL (ID);
ALTER TABLE JG_PRINCIPAL_PERMISSION ADD CONSTRAINT FK_PRINCIPAL_PERMISSION FOREIGN KEY (PERMISSION_ID) REFERENCES JG_PERMISSION (ID);
ALTER TABLE JG_ST_CREDENTIAL ADD CONSTRAINT FK_ST_USER_CREDENTIAL FOREIGN KEY (ST_USER_ID) REFERENCES JG_ST_USER (ID);
ALTER TABLE JG_ST_PRINCIPAL ADD CONSTRAINT FK_ST_USER_PRINCIPAL FOREIGN KEY (ST_USER_ID) REFERENCES JG_ST_USER (ID);
ALTER TABLE JG_USER_PRINCIPAL ADD CONSTRAINT FK_PRINCIPAL_USER_PRINCIPAL FOREIGN KEY (USER_ID) REFERENCES JG_USER (ID);
ALTER TABLE JG_USER_PRINCIPAL ADD CONSTRAINT FK_USER_USER_PRINCIPAL FOREIGN KEY (PRINCIPAL_ID) REFERENCES JG_PRINCIPAL (ID);

create sequence jg_user_seq;
create sequence jg_credential_seq;
create sequence jg_app_principal_seq;
create sequence jg_permission_seq;
create sequence jg_domain_seq;
create sequence jg_principal_seq;

values nextval for jg_user_seq;

