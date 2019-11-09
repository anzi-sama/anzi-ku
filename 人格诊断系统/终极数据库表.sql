prompt PL/SQL Developer import file
prompt Created on 2019��10��14�� by ����.�ڶ���
set feedback off
set define off
prompt Dropping LOL_CULTURE...
drop table LOL_CULTURE cascade constraints;
prompt Dropping LOL_TESTTYPE...
drop table LOL_TESTTYPE cascade constraints;
prompt Dropping TAB_PROVINCE...
drop table TAB_PROVINCE cascade constraints;
prompt Dropping LOL_RELIGION...
drop table LOL_RELIGION cascade constraints;
prompt Dropping LOL_RULE...
drop table LOL_RULE cascade constraints;
prompt Dropping LOL_USER...
drop table LOL_USER cascade constraints;
prompt Dropping LOL_WARM...
drop table LOL_WARM cascade constraints;
prompt Dropping LOL_DATAMANAGER...
drop table LOL_DATAMANAGER cascade constraints;
prompt Dropping LOL_FRIENDCONNECT...
drop table LOL_FRIENDCONNECT cascade constraints;
prompt Dropping LOL_MEDICAL...
drop table LOL_MEDICAL cascade constraints;
prompt Dropping LOL_WEBINFOMANAGE...
drop table LOL_WEBINFOMANAGE cascade constraints;
prompt Creating LOL_CULTURE...
create table LOL_CULTURE
(
  id      NUMBER(11) not null,
  content VARCHAR2(40)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table LOL_CULTURE
  add constraint LOL_CULTURE_ID_PK primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating LOL_TESTTYPE...
create table LOL_TESTTYPE
(
  id      NUMBER(11) not null,
  content VARCHAR2(40)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table LOL_TESTTYPE
  add constraint LOL_TESTTYPE_ID_PK primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating TAB_PROVINCE...
create table TAB_PROVINCE
(
  id         NUMBER(11) not null,
  provinceid VARCHAR2(6),
  province   VARCHAR2(40)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column TAB_PROVINCE.id
  is 'ID';
comment on column TAB_PROVINCE.provinceid
  is 'ʡ�ݱ�ʶ';
comment on column TAB_PROVINCE.province
  is 'ʡ������';
alter table TAB_PROVINCE
  add constraint TAB_PROVINCE_PK primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating LOL_RELIGION...
create table LOL_RELIGION
(
  id      NUMBER(11) not null,
  content VARCHAR2(40)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table LOL_RELIGION
  add constraint LOL_RELIGION_ID_PK primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating LOL_RULE...
create table LOL_RULE
(
  id      NUMBER(11) not null,
  content VARCHAR2(40)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table LOL_RULE
  add constraint LOL_RULE_ID_PK primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating LOL_USER...
create table LOL_USER
(
  id           NUMBER(11) not null,
  username     VARCHAR2(30) not null,
  password     VARCHAR2(50) not null,
  rule         NUMBER(11) not null,
  realname     VARCHAR2(50) not null,
  sex          CHAR(1) not null,
  registertime DATE not null,
  status       CHAR(1) not null,
  pid          NUMBER(11) not null,
  age          NUMBER(11) not null,
  cultureid    NUMBER(11) not null,
  religionid   NUMBER(11) not null,
  address      VARCHAR2(100) not null,
  phone        VARCHAR2(50) not null,
  email        VARCHAR2(50),
  content      VARCHAR2(50),
  imagepath    VARCHAR2(200)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table LOL_USER
  add constraint LOL_USER_ID_PK primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table LOL_USER
  add constraint LOL_USER_USERNAME_UK unique (USERNAME)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table LOL_USER
  add constraint LOL_USER_CULTUREID_FK foreign key (CULTUREID)
  references LOL_CULTURE (ID);
alter table LOL_USER
  add constraint LOL_USER_PROVINCEID_FK foreign key (PID)
  references TAB_PROVINCE (ID);
alter table LOL_USER
  add constraint LOL_USER_RELIGIONID_FK foreign key (RELIGIONID)
  references LOL_RELIGION (ID);
alter table LOL_USER
  add constraint LOL_USER_RULE_FK foreign key (RULE)
  references LOL_RULE (ID);
alter table LOL_USER
  add constraint LOL_USER_SEX_CK
  check (sex in('1','2'));
alter table LOL_USER
  add constraint LOL_USER_STATUS_CK
  check (status in('0','1'));

prompt Creating LOL_WARM...
create table LOL_WARM
(
  id      NUMBER(11) not null,
  content VARCHAR2(40)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table LOL_WARM
  add constraint LOL_WARM_ID_PK primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating LOL_DATAMANAGER...
create table LOL_DATAMANAGER
(
  id       NUMBER(11) not null,
  username VARCHAR2(30),
  testtype NUMBER(11),
  testdate DATE,
  warmtype NUMBER(11)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table LOL_DATAMANAGER
  add constraint LOL_DATAMANAGER_ID_PK primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table LOL_DATAMANAGER
  add constraint LOL_DATAMANAGER_USERNAME_UK unique (USERNAME)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table LOL_DATAMANAGER
  add constraint LOL_DATAMANAGER_TESTTYPE_FK foreign key (TESTTYPE)
  references LOL_TESTTYPE (ID);
alter table LOL_DATAMANAGER
  add constraint LOL_DATAMANAGER_USERNAME_FK foreign key (USERNAME)
  references LOL_USER (USERNAME);
alter table LOL_DATAMANAGER
  add constraint LOL_DATAMANAGER_WARMTYPE_FK foreign key (WARMTYPE)
  references LOL_WARM (ID);

prompt Creating LOL_FRIENDCONNECT...
create table LOL_FRIENDCONNECT
(
  id      NUMBER(11) not null,
  urlname VARCHAR2(20),
  url     VARCHAR2(300),
  sort    VARCHAR2(10)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255;
alter table LOL_FRIENDCONNECT
  add constraint LOL_FRIENDCONNECT_ID_PK primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table LOL_FRIENDCONNECT
  add constraint LOL_FRIENDCONNECT_URLNAME_FK foreign key (URLNAME)
  references LOL_USER (USERNAME);

prompt Creating LOL_MEDICAL...
create table LOL_MEDICAL
(
  id                         NUMBER(11) not null,
  username                   VARCHAR2(30) not null,
  hypersensitivity           VARCHAR2(20) not null,
  hypersensitivitystatus     CHAR(1) not null,
  hallucination              VARCHAR2(20) not null,
  hallucinationstatus        CHAR(1) not null,
  running_thought            VARCHAR2(20) not null,
  running_thoughtstatus      CHAR(1) not null,
  delayed_thinking           VARCHAR2(20) not null,
  delayed_thinkingstatus     CHAR(1) not null,
  high_spirits               VARCHAR2(20) not null,
  high_spiritsstatus         CHAR(1) not null,
  irritable                  VARCHAR2(20) not null,
  irritablestatus            CHAR(1) not null,
  enhanced_will              VARCHAR2(20) not null,
  enhanced_willstatus        CHAR(1) not null,
  self_injury                VARCHAR2(20) not null,
  self_injurystatus          CHAR(1) not null,
  mental_retardation         VARCHAR2(20) not null,
  mental_retardationstatus   CHAR(1) not null,
  diet                       VARCHAR2(20) not null,
  dietstatus                 CHAR(1) not null,
  sleep                      VARCHAR2(20) not null,
  sleepstatus                CHAR(1) not null,
  impotence                  VARCHAR2(20) not null,
  impotencestatus            CHAR(1) not null,
  sexual_orientation         VARCHAR2(20) not null,
  sexual_orientationstatus   CHAR(1) not null,
  personality_disorder       VARCHAR2(20) not null,
  personality_disorderstatus CHAR(1) not null,
  hyposexuality              VARCHAR2(20) not null,
  hyposexualitystatus        CHAR(1) not null,
  medical_info               VARCHAR2(20),
  warmtype                   NUMBER(11),
  testtime                   DATE not null,
  testtype                   NUMBER(11) not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column LOL_MEDICAL.hypersensitivity
  is '�о�����';
comment on column LOL_MEDICAL.hypersensitivitystatus
  is '1��ѡ�� 0��δѡ��';
comment on column LOL_MEDICAL.hallucination
  is '�þ�';
comment on column LOL_MEDICAL.running_thought
  is '˼ά����';
comment on column LOL_MEDICAL.delayed_thinking
  is '˼ά�ٻ�';
comment on column LOL_MEDICAL.high_spirits
  is '��������';
comment on column LOL_MEDICAL.irritable
  is '�׼�ŭ';
comment on column LOL_MEDICAL.enhanced_will
  is '��־��ǿ';
comment on column LOL_MEDICAL.self_injury
  is '����';
comment on column LOL_MEDICAL.mental_retardation
  is '�������ٻ�';
comment on column LOL_MEDICAL.diet
  is '��ʳ';
comment on column LOL_MEDICAL.sleep
  is '˯��';
comment on column LOL_MEDICAL.impotence
  is '����';
comment on column LOL_MEDICAL.sexual_orientation
  is '��ָ��';
comment on column LOL_MEDICAL.personality_disorder
  is '�˸��ϰ�';
comment on column LOL_MEDICAL.hyposexuality
  is '��������';
alter table LOL_MEDICAL
  add constraint LOL_MEDICAL_ID_PK primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table LOL_MEDICAL
  add constraint LOL_MEDICAL_USERNAME_UK unique (USERNAME)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table LOL_MEDICAL
  add constraint LOL_MEDICAL_TESTTYPE_PK foreign key (TESTTYPE)
  references LOL_TESTTYPE (ID);
alter table LOL_MEDICAL
  add constraint LOL_MEDICAL_WARMTYPE_PK foreign key (WARMTYPE)
  references LOL_WARM (ID);
alter table LOL_MEDICAL
  add constraint LOL_MEDICAL_DELAYEDSTATUS_CK
  check (delayed_thinkingstatus in('0','1'));
alter table LOL_MEDICAL
  add constraint LOL_MEDICAL_DELAYED_CK
  check (delayed_thinking in('˼ά�ٻ�'));
alter table LOL_MEDICAL
  add constraint LOL_MEDICAL_DIETSTATUS_CK
  check (dietstatus in('0','1'));
alter table LOL_MEDICAL
  add constraint LOL_MEDICAL_DIET_CK
  check (diet in('��ʳ'));
alter table LOL_MEDICAL
  add constraint LOL_MEDICAL_ENHANCEDSTATUS_CK
  check (enhanced_willstatus in('0','1'));
alter table LOL_MEDICAL
  add constraint LOL_MEDICAL_ENHANCED_CK
  check (enhanced_will in('��־��ǿ'));
alter table LOL_MEDICAL
  add constraint LOL_MEDICAL_HALLSTATUS_CK
  check (hallucinationstatus in('0','1'));
alter table LOL_MEDICAL
  add constraint LOL_MEDICAL_HALL_CK
  check (hallucination in('�þ�'));
alter table LOL_MEDICAL
  add constraint LOL_MEDICAL_HIGHSTATUS_CK
  check (high_spiritsstatus in('0','1'));
alter table LOL_MEDICAL
  add constraint LOL_MEDICAL_HIGH_CK
  check (high_spirits in('��������'));
alter table LOL_MEDICAL
  add constraint LOL_MEDICAL_HYPERSTATUS_CK
  check (hypersensitivitystatus in('0','1'));
alter table LOL_MEDICAL
  add constraint LOL_MEDICAL_HYPE_CK
  check (hypersensitivity in('�о�����'));
alter table LOL_MEDICAL
  add constraint LOL_MEDICAL_HYPOSESTATUS_CK
  check (hyposexualitystatus in('0','1'));
alter table LOL_MEDICAL
  add constraint LOL_MEDICAL_HYPOSEXUALITY_CK
  check (hyposexuality in('��������'));
alter table LOL_MEDICAL
  add constraint LOL_MEDICAL_IMPOTENCESTATUS_CK
  check (impotencestatus in('0','1'));
alter table LOL_MEDICAL
  add constraint LOL_MEDICAL_IMPOTENCE_CK
  check (impotence in('����'));
alter table LOL_MEDICAL
  add constraint LOL_MEDICAL_IRRITABLESTATUS_CK
  check (irritablestatus in('0','1'));
alter table LOL_MEDICAL
  add constraint LOL_MEDICAL_IRRITABLE_CK
  check (irritable in('�׼�ŭ'));
alter table LOL_MEDICAL
  add constraint LOL_MEDICAL_MENTALSTATUS_CK
  check (mental_retardationstatus in('0','1'));
alter table LOL_MEDICAL
  add constraint LOL_MEDICAL_MENTAL_CK
  check (mental_retardation in('�������ٻ�'));
alter table LOL_MEDICAL
  add constraint LOL_MEDICAL_PERSONSTATUS_CK
  check (personality_disorderstatus in('0','1'));
alter table LOL_MEDICAL
  add constraint LOL_MEDICAL_PERSON_CK
  check (personality_disorder in('�˸��ϰ�'));
alter table LOL_MEDICAL
  add constraint LOL_MEDICAL_RUNNINGSTATUS_CK
  check (running_thoughtstatus in('0','1'));
alter table LOL_MEDICAL
  add constraint LOL_MEDICAL_RUNNING_CK
  check (running_thought in('˼ά����'));
alter table LOL_MEDICAL
  add constraint LOL_MEDICAL_SELFSTATUS_CK
  check (self_injurystatus in('0','1'));
alter table LOL_MEDICAL
  add constraint LOL_MEDICAL_SELF_CK
  check (self_injury in('����'));
alter table LOL_MEDICAL
  add constraint LOL_MEDICAL_SEXUALSTATUS_CK
  check (sexual_orientationstatus in('0','1'));
alter table LOL_MEDICAL
  add constraint LOL_MEDICAL_SEXUAL_CK
  check (sexual_orientation in('��ָ��'));
alter table LOL_MEDICAL
  add constraint LOL_MEDICAL_SLEEPSTATUS_CK
  check (sleepstatus in('0','1'));
alter table LOL_MEDICAL
  add constraint LOL_MEDICAL_SLEEP_CK
  check (sleep in('˯��'));

prompt Creating LOL_WEBINFOMANAGE...
create table LOL_WEBINFOMANAGE
(
  id         NUMBER(11) not null,
  module     VARCHAR2(20),
  title      VARCHAR2(20),
  imagepath  VARCHAR2(200),
  uploadtime DATE,
  content    VARCHAR2(3000)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table LOL_WEBINFOMANAGE
  add constraint LOL_WEBINFOMANAGE_ID_PK primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Disabling triggers for LOL_CULTURE...
alter table LOL_CULTURE disable all triggers;
prompt Disabling triggers for LOL_TESTTYPE...
alter table LOL_TESTTYPE disable all triggers;
prompt Disabling triggers for TAB_PROVINCE...
alter table TAB_PROVINCE disable all triggers;
prompt Disabling triggers for LOL_RELIGION...
alter table LOL_RELIGION disable all triggers;
prompt Disabling triggers for LOL_RULE...
alter table LOL_RULE disable all triggers;
prompt Disabling triggers for LOL_USER...
alter table LOL_USER disable all triggers;
prompt Disabling triggers for LOL_WARM...
alter table LOL_WARM disable all triggers;
prompt Disabling triggers for LOL_DATAMANAGER...
alter table LOL_DATAMANAGER disable all triggers;
prompt Disabling triggers for LOL_FRIENDCONNECT...
alter table LOL_FRIENDCONNECT disable all triggers;
prompt Disabling triggers for LOL_MEDICAL...
alter table LOL_MEDICAL disable all triggers;
prompt Disabling triggers for LOL_WEBINFOMANAGE...
alter table LOL_WEBINFOMANAGE disable all triggers;
prompt Disabling foreign key constraints for LOL_USER...
alter table LOL_USER disable constraint LOL_USER_CULTUREID_FK;
alter table LOL_USER disable constraint LOL_USER_PROVINCEID_FK;
alter table LOL_USER disable constraint LOL_USER_RELIGIONID_FK;
alter table LOL_USER disable constraint LOL_USER_RULE_FK;
prompt Disabling foreign key constraints for LOL_DATAMANAGER...
alter table LOL_DATAMANAGER disable constraint LOL_DATAMANAGER_TESTTYPE_FK;
alter table LOL_DATAMANAGER disable constraint LOL_DATAMANAGER_USERNAME_FK;
alter table LOL_DATAMANAGER disable constraint LOL_DATAMANAGER_WARMTYPE_FK;
prompt Disabling foreign key constraints for LOL_FRIENDCONNECT...
alter table LOL_FRIENDCONNECT disable constraint LOL_FRIENDCONNECT_URLNAME_FK;
prompt Disabling foreign key constraints for LOL_MEDICAL...
alter table LOL_MEDICAL disable constraint LOL_MEDICAL_TESTTYPE_PK;
alter table LOL_MEDICAL disable constraint LOL_MEDICAL_WARMTYPE_PK;
prompt Loading LOL_CULTURE...
insert into LOL_CULTURE (id, content)
values (1, 'Сѧ');
insert into LOL_CULTURE (id, content)
values (2, '����');
insert into LOL_CULTURE (id, content)
values (3, '����');
insert into LOL_CULTURE (id, content)
values (4, '��ר' || chr(9) || '');
insert into LOL_CULTURE (id, content)
values (5, '��ѧ');
commit;
prompt 5 records loaded
prompt Loading LOL_TESTTYPE...
insert into LOL_TESTTYPE (id, content)
values (1, '������');
insert into LOL_TESTTYPE (id, content)
values (2, '�ۺϲ���');
insert into LOL_TESTTYPE (id, content)
values (3, '�ϴ�����');
commit;
prompt 3 records loaded
prompt Loading TAB_PROVINCE...
insert into TAB_PROVINCE (id, provinceid, province)
values (1, '110000', '����');
insert into TAB_PROVINCE (id, provinceid, province)
values (2, '120000', '���');
insert into TAB_PROVINCE (id, provinceid, province)
values (3, '130000', '�ӱ�ʡ');
insert into TAB_PROVINCE (id, provinceid, province)
values (4, '140000', 'ɽ��ʡ');
insert into TAB_PROVINCE (id, provinceid, province)
values (5, '150000', '���ɹ�������');
insert into TAB_PROVINCE (id, provinceid, province)
values (6, '210000', '����ʡ');
insert into TAB_PROVINCE (id, provinceid, province)
values (7, '220000', '����ʡ');
insert into TAB_PROVINCE (id, provinceid, province)
values (8, '230000', '������ʡ');
insert into TAB_PROVINCE (id, provinceid, province)
values (9, '310000', '�Ϻ�');
insert into TAB_PROVINCE (id, provinceid, province)
values (10, '320000', '����ʡ');
insert into TAB_PROVINCE (id, provinceid, province)
values (11, '330000', '�㽭ʡ');
insert into TAB_PROVINCE (id, provinceid, province)
values (12, '340000', '����ʡ');
insert into TAB_PROVINCE (id, provinceid, province)
values (13, '350000', '����ʡ');
insert into TAB_PROVINCE (id, provinceid, province)
values (14, '360000', '����ʡ');
insert into TAB_PROVINCE (id, provinceid, province)
values (15, '370000', 'ɽ��ʡ');
insert into TAB_PROVINCE (id, provinceid, province)
values (16, '410000', '����ʡ');
insert into TAB_PROVINCE (id, provinceid, province)
values (17, '420000', '����ʡ');
insert into TAB_PROVINCE (id, provinceid, province)
values (18, '430000', '����ʡ');
insert into TAB_PROVINCE (id, provinceid, province)
values (19, '440000', '�㶫ʡ');
insert into TAB_PROVINCE (id, provinceid, province)
values (20, '450000', '����׳��������');
insert into TAB_PROVINCE (id, provinceid, province)
values (21, '460000', '����ʡ');
insert into TAB_PROVINCE (id, provinceid, province)
values (22, '500000', '����');
insert into TAB_PROVINCE (id, provinceid, province)
values (23, '510000', '�Ĵ�ʡ');
insert into TAB_PROVINCE (id, provinceid, province)
values (24, '520000', '����ʡ');
insert into TAB_PROVINCE (id, provinceid, province)
values (25, '530000', '����ʡ');
insert into TAB_PROVINCE (id, provinceid, province)
values (26, '540000', '����������');
insert into TAB_PROVINCE (id, provinceid, province)
values (27, '610000', '����ʡ');
insert into TAB_PROVINCE (id, provinceid, province)
values (28, '620000', '����ʡ');
insert into TAB_PROVINCE (id, provinceid, province)
values (29, '630000', '�ຣʡ');
insert into TAB_PROVINCE (id, provinceid, province)
values (30, '640000', '���Ļ���������');
insert into TAB_PROVINCE (id, provinceid, province)
values (31, '650000', '�½�ά���������');
insert into TAB_PROVINCE (id, provinceid, province)
values (32, '710000', '̨��ʡ');
insert into TAB_PROVINCE (id, provinceid, province)
values (33, '810000', '����ر�������');
insert into TAB_PROVINCE (id, provinceid, province)
values (34, '820000', '�����ر�������');
commit;
prompt 34 records loaded
prompt Loading LOL_RELIGION...
insert into LOL_RELIGION (id, content)
values (1, '���');
insert into LOL_RELIGION (id, content)
values (2, '��˹����');
insert into LOL_RELIGION (id, content)
values (3, '������');
insert into LOL_RELIGION (id, content)
values (4, '����');
commit;
prompt 4 records loaded
prompt Loading LOL_RULE...
insert into LOL_RULE (id, content)
values (1, '��������Ա');
insert into LOL_RULE (id, content)
values (2, '����Ա');
insert into LOL_RULE (id, content)
values (3, '��ͨ�û�');
commit;
prompt 3 records loaded
prompt Loading LOL_USER...
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (15, '�뾸', '123456', 3, 'Ǯ��', '1', to_date('10-10-2019 19:50:41', 'dd-mm-yyyy hh24:mi:ss'), '1', 34, 36, 2, 3, '��ƽ������������������', '25484408483', '33110634122', '��չ����Ĭ��������С��', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (23, '��ݡ', '123456', 2, '���', '2', to_date('10-10-2019 19:51:09', 'dd-mm-yyyy hh24:mi:ss'), '1', 34, 77, 4, 2, '������ݡ��ʫ����������', '39527157071', '65501521112', 'ƽ������˸�����ĺ����', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (31, '����', '123456', 3, '�⺭', '2', to_date('10-10-2019 19:52:11', 'dd-mm-yyyy hh24:mi:ss'), '0', 26, 61, 4, 3, '��ʫ����ʫ�����Ź۾���', '65435511796', '64962363065', '��������ʫ�����ĺ��˺�', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (41, 'Ǯ��', '123456', 3, '����', '2', to_date('11-10-2019 00:59:28', 'dd-mm-yyyy hh24:mi:ss'), '0', 26, 18, 4, 2, '����������˸�������۾�', '47790643335', '52216214836', '����괺��ʫ���������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (174, '����', '123456', 3, '����С', '2', to_date('11-10-2019 01:05:41', 'dd-mm-yyyy hh24:mi:ss'), '1', 30, 81, 5, 3, '��������ʫ˸�����Ǿ�ƽ', '55802893623', '04264883850', '����չ���÷ɺ�ʫ������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (179, '����', '123456', 1, '����', '2', to_date('11-10-2019 01:05:41', 'dd-mm-yyyy hh24:mi:ss'), '0', 24, 28, 1, 2, '������������������ƽ��', '14641043323', '60450403933', '���ӽ𳽹������۷ɳ�', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (184, '�ؽ�', '123456', 2, 'κ��չ', '1', to_date('11-10-2019 01:05:41', 'dd-mm-yyyy hh24:mi:ss'), '0', 23, 46, 4, 2, '�����������Ľ�����ʫ��', '35314411097', '07772151456', 'ʫ溽�����˸��ʫչ����', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (189, '����', '123456', 1, '�ｨ����', '2', to_date('11-10-2019 01:05:41', 'dd-mm-yyyy hh24:mi:ss'), '1', 13, 65, 2, 4, '������溺������������', '13293797315', '60222885532', '���ĸ�����������������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (206, '�ﺭ', '123456', 1, '������ݡ', '1', to_date('11-10-2019 01:05:41', 'dd-mm-yyyy hh24:mi:ss'), '1', 26, 16, 3, 4, 'ʫ�θ��������Ź�����չ', '78630521494', '38907490176', '�ӽ�������Ƽ����ʫƽ��', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (211, '����', '123456', 1, '�ܹ�', '2', to_date('11-10-2019 01:05:42', 'dd-mm-yyyy hh24:mi:ss'), '0', 28, 92, 5, 4, '�����������������ݡ��', '03340776825', '30847413235', '��������ƽ�ź���������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (216, '����', '123456', 3, '������', '1', to_date('11-10-2019 01:05:42', 'dd-mm-yyyy hh24:mi:ss'), '0', 2, 9, 1, 4, '��������չ�۳���ƽ����', '17033633560', '04556008539', 'ʫ����轨������������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (224, '�', '123456', 1, '��ƽչ��', '2', to_date('11-10-2019 01:05:42', 'dd-mm-yyyy hh24:mi:ss'), '1', 10, 40, 3, 4, 'չ��������������������', '50650520269', '89292377940', '���Ǻ������ʫ��������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (234, '����', '123456', 2, 'ʩ��', '1', to_date('11-10-2019 01:05:42', 'dd-mm-yyyy hh24:mi:ss'), '1', 2, 27, 1, 4, '����������Сʫ�����ú�', '79689143858', '69583454247', '�������������ķɺ�����', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (239, 'ʩ��', '123456', 3, '����ʫ', '1', to_date('11-10-2019 01:05:42', 'dd-mm-yyyy hh24:mi:ss'), '1', 13, 17, 1, 2, '��չ��������ܺ����˸', '88953381369', '74330156737', '����ʫ������������ĺ�', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (256, 'ʩ��', '123456', 2, '����', '2', to_date('11-10-2019 01:05:42', 'dd-mm-yyyy hh24:mi:ss'), '0', 33, 42, 1, 2, '���Ӻ���˸����չ������', '82087862579', '19822903277', '�۲����������ܾ�Ĭ���', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (261, '�ؼ�', '123456', 1, '��������', '1', to_date('11-10-2019 01:05:43', 'dd-mm-yyyy hh24:mi:ss'), '1', 25, 84, 3, 4, '���ľ�������������溺�', '25356361785', '64159599374', 'չ�����������ʫ����Ƽ', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (266, '����', '123456', 2, '�����', '2', to_date('11-10-2019 01:05:43', 'dd-mm-yyyy hh24:mi:ss'), '1', 16, 11, 3, 4, '����ʫ����ݡ���������', '37744402569', '46680958053', '��Ĭ����С�γ���������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (271, '��', '123456', 2, '��Ĭ��', '1', to_date('11-10-2019 01:05:43', 'dd-mm-yyyy hh24:mi:ss'), '1', 24, 45, 5, 3, '��չ������������Ĭ����', '85499508910', '96966744326', '��Сݡ���۴�����������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (281, '���', '123456', 3, '��������', '1', to_date('11-10-2019 01:05:43', 'dd-mm-yyyy hh24:mi:ss'), '1', 32, 24, 1, 4, '�������ӻ۲����Ų���ƽ', '93575486079', '48659897779', 'ʫ�����ò������沩���', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (291, 'ˮ��', '123456', 2, '�����', '2', to_date('11-10-2019 01:05:43', 'dd-mm-yyyy hh24:mi:ss'), '0', 32, 12, 1, 3, 'ʫ��չ���ݡ˸��������', '40560160488', '41435496971', '��溽ܴ��ﲩ�����Ƴ�ʫ', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (296, '����', '123456', 1, '����', '1', to_date('11-10-2019 01:05:43', 'dd-mm-yyyy hh24:mi:ss'), '1', 24, 94, 3, 4, 'ݡ������С���Ĳ��ĺ���', '28192051223', '68217329377', '�ô��������溭������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (301, '����', '123456', 2, '�溸�', '2', to_date('11-10-2019 01:05:43', 'dd-mm-yyyy hh24:mi:ss'), '0', 23, 64, 3, 4, '�����Ż�С��ʫչ����ʫ', '97131073648', '34146695160', 'Ĭ�������Ĺ�����������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (8, '����', '123456', 2, '������', '2', to_date('10-10-2019 19:50:00', 'dd-mm-yyyy hh24:mi:ss'), '0', 6, 84, 2, 2, '����ݡ���ɸ�����ʫ����', '32127368617', '89438905515', '����չ����������������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (32, 'κĬ', '123456', 3, '������', '1', to_date('10-10-2019 19:52:11', 'dd-mm-yyyy hh24:mi:ss'), '0', 14, 88, 5, 2, '�����������۳����ǽ�չ', '59114283944', '84748082885', '�������˸�����ĺ�ĬƼ', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (36, '�¾�', '123456', 1, '��չ', '1', to_date('11-10-2019 00:59:28', 'dd-mm-yyyy hh24:mi:ss'), '1', 21, 27, 2, 4, '���������������������', '55291197831', '25843952014', '������溾��������洺��', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (165, '����', '123456', 3, '֣���', '2', to_date('11-10-2019 01:04:00', 'dd-mm-yyyy hh24:mi:ss'), '0', 19, 92, 5, 4, '�����������ʫʫ������', '23965589808', '24207819029', '��������溴�����������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (175, '����', '123456', 3, 'Ǯ��', '1', to_date('11-10-2019 01:05:41', 'dd-mm-yyyy hh24:mi:ss'), '0', 22, 11, 4, 2, 'ʫ�������Ӿ���ʫʫ���', '55517285695', '52884550458', '��������ʫĬ�����ʫ�', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (180, '��ƽ', '123456', 3, '������', '2', to_date('11-10-2019 01:05:41', 'dd-mm-yyyy hh24:mi:ss'), '1', 29, 39, 2, 2, '����������չʫ��������', '92717559368', '06810170762', '��ʫ�����ĸ��������ﳽ', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (185, 'Ǯ��', '123456', 2, 'Ǯ����', '1', to_date('11-10-2019 01:05:41', 'dd-mm-yyyy hh24:mi:ss'), '1', 30, 58, 4, 2, '�ĺ��ķ�������������', '12492823078', '60397268357', '�������ﺣ�����������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (197, '����', '123456', 2, '������ʫ', '1', to_date('11-10-2019 01:05:41', 'dd-mm-yyyy hh24:mi:ss'), '0', 10, 87, 3, 2, '���������С����Сʫ��', '70620624805', '79049542729', '�����������溲��ĳ���', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (202, '����', '123456', 1, 'Ǯ���', '2', to_date('11-10-2019 01:05:41', 'dd-mm-yyyy hh24:mi:ss'), '0', 22, 43, 1, 2, '��չ�������贺�ɺ�ʫ��', '52742936647', '33396300105', '�ƺ��麣ʫ������ʫ��չ', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (207, 'κ��', '123456', 3, '֣����', '2', to_date('11-10-2019 01:05:41', 'dd-mm-yyyy hh24:mi:ss'), '0', 19, 63, 2, 2, '���鳽�ν�������������', '24951420699', '02424298735', '��������������ô�����', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (230, '����', '123456', 3, 'ʩ��', '1', to_date('11-10-2019 01:05:42', 'dd-mm-yyyy hh24:mi:ss'), '0', 9, 62, 5, 4, '��������溽���������ʫ', '79058115886', '25390347498', '��չ溺���������������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (277, '���', '123456', 1, '��������', '1', to_date('11-10-2019 01:05:43', 'dd-mm-yyyy hh24:mi:ss'), '0', 14, 83, 3, 4, '�ƽ���ʫ��ʫ���������', '76609727292', '04881976297', '������˸���鴺������ʫ', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (282, 'ʩƽ', '123456', 2, '������չ', '1', to_date('11-10-2019 01:05:43', 'dd-mm-yyyy hh24:mi:ss'), '0', 18, 64, 4, 2, 'Сʫ��溭��չ��չ����', '76186332043', '58570024855', '����Ƽ�����չ���Ƽʫ', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (297, '����', '123456', 1, '�⺬����', '2', to_date('11-10-2019 01:05:43', 'dd-mm-yyyy hh24:mi:ss'), '1', 18, 47, 1, 4, '�������ʫ������������', '75774199676', '17892286428', '������������˸����ʫ��', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (1, 'kailong', '123456', 1, '������', '2', to_date('08-10-2019', 'dd-mm-yyyy'), '1', 6, 26, 3, 2, '��������', '7777', null, null, null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (3, '����', '21421', 3, '����', '1', to_date('25-10-2019', 'dd-mm-yyyy'), '1', 6, 56, 2, 3, '��ʵ��ʵ', '2132132', null, null, null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (4, '����', '123456', 1, 'ˮ��', '2', to_date('10-10-2019 19:49:59', 'dd-mm-yyyy hh24:mi:ss'), '1', 32, 74, 5, 4, '���������ݡ�ܽ�������', '71311814809', '51863378224', '���񺭲������������ۺ�', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (9, '�ﺣ', '123456', 1, 'ˮ����', '1', to_date('10-10-2019 19:50:00', 'dd-mm-yyyy hh24:mi:ss'), '1', 13, 56, 2, 1, 'ݡ�����꺭�������ܺ���', '87319980344', '91106953560', '��С����������������ʫ', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (13, '���', '123456', 3, '����Ƽ', '1', to_date('10-10-2019 19:50:41', 'dd-mm-yyyy hh24:mi:ss'), '1', 28, 37, 3, 4, '���������������ܹ�', '05131653034', '18041160917', 'ݡ��������������˸����', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (17, '����', '123456', 1, '��������', '2', to_date('10-10-2019 19:50:41', 'dd-mm-yyyy hh24:mi:ss'), '1', 13, 82, 4, 2, '�ӳ���������˸��ƽƽʫ', '33989718368', '99721541588', '���������������չ��', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (29, 'ʩʫ', '123456', 2, '�Ժ�����', '2', to_date('10-10-2019 19:52:10', 'dd-mm-yyyy hh24:mi:ss'), '0', 14, 43, 3, 2, '����Ĭ�����������ʫ', '39042646357', '35054776738', '��������������ݡ������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (33, '֣��', '123456', 2, '��ʫ', '1', to_date('10-10-2019 19:52:11', 'dd-mm-yyyy hh24:mi:ss'), '0', 12, 36, 4, 1, '�����ľ�����溻�������', '83770623980', '14005925123', 'ƽ����ʫ�վ�С��������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (37, '����', '123456', 2, '����ݡ��', '1', to_date('11-10-2019 00:59:28', 'dd-mm-yyyy hh24:mi:ss'), '1', 18, 61, 3, 1, '��˸�����粩��������', '72705720205', '88046038498', '������Ĭ�����������˽�', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (43, '����', '123456', 3, '��������', '1', to_date('11-10-2019 00:59:29', 'dd-mm-yyyy hh24:mi:ss'), '1', 33, 29, 1, 3, '���Ӳ�����Ƽ����������', '41321404282', '33309032329', '�ɴ�����չʫ�������ʫ', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (166, '������', '123456', 2, '֣���֣����', '2', to_date('11-10-2019 01:04:00', 'dd-mm-yyyy hh24:mi:ss'), '1', 25, 31, 4, 2, '�����������ʫʫ��������ƺ麭���Ӻ�������', '2396558980869815188600', '2420781902934808523495', '��������溴������������ĺ�����ʫ���Ŵ�������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (176, 'Ǯ��', '123456', 3, '�˸�', '1', to_date('11-10-2019 01:05:41', 'dd-mm-yyyy hh24:mi:ss'), '1', 19, 34, 3, 4, '��������곽���˸����', '99022961149', '37802854993', '�꺬������������������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (181, '��ʫ', '123456', 3, '����ƽ', '1', to_date('11-10-2019 01:05:41', 'dd-mm-yyyy hh24:mi:ss'), '0', 20, 17, 5, 3, '������Ĭƽ��ƽ��Ĭչ˸', '15387044025', '31284736302', '˸������Ƽ��ʫ�����', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (186, '��չ', '123456', 1, '��ʫ��ʫ', '1', to_date('11-10-2019 01:05:41', 'dd-mm-yyyy hh24:mi:ss'), '1', 12, 53, 3, 4, '����������������������', '61231477534', '20145446180', '����������ʫ����ʫ��', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (191, '����', '123456', 1, '����', '2', to_date('11-10-2019 01:05:41', 'dd-mm-yyyy hh24:mi:ss'), '0', 20, 96, 4, 2, '����Ĭ���������������', '27486355509', '37251985717', '������������������ӹ�', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (196, '����', '123456', 2, '�������', '2', to_date('11-10-2019 01:05:41', 'dd-mm-yyyy hh24:mi:ss'), '0', 26, 32, 5, 2, '����������۾���ʫչ��', '95740483364', '16416401764', '���������ӹ���������ʫ', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (203, '�Һ�', '123456', 3, '�����Ž�', '1', to_date('11-10-2019 01:05:41', 'dd-mm-yyyy hh24:mi:ss'), '0', 10, 3, 3, 2, '�ɺ�չʫʫʫ溼�������', '15129661371', '92766747873', 'ʫ��Ĭ���꽨���������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (208, '����', '123456', 1, '����չ', '2', to_date('11-10-2019 01:05:42', 'dd-mm-yyyy hh24:mi:ss'), '1', 10, 43, 5, 4, '����ʫ���۾�����������', '12653965356', '58025920141', '�����������������۸ռ�', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (213, '��˸', '123456', 2, 'ˮչ��', '2', to_date('11-10-2019 01:05:42', 'dd-mm-yyyy hh24:mi:ss'), '1', 33, 62, 2, 4, 'չ����ʫ��������������', '06119491192', '51671796190', '������ʫչĬ����������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (218, '����', '123456', 2, '������', '1', to_date('11-10-2019 01:05:42', 'dd-mm-yyyy hh24:mi:ss'), '0', 21, 50, 5, 4, '��������ӳ���ݡ������', '27960885268', '77013722668', '��ʫ����ƼƼ����˺���', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (226, '��', '123456', 2, '������', '1', to_date('11-10-2019 01:05:42', 'dd-mm-yyyy hh24:mi:ss'), '1', 32, 41, 5, 4, '������Ƽ������������ݡ', '88576118579', '23391325430', 'չݡ������������Ǻ�Ƽ', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (231, '����', '123456', 3, '�����', '2', to_date('11-10-2019 01:05:42', 'dd-mm-yyyy hh24:mi:ss'), '1', 31, 73, 2, 3, '����������ݡ������С��', '84773670261', '34043490062', 'ʫ���ô��������������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (241, 'Ǯʫ', '123456', 2, 'ˮ������', '2', to_date('11-10-2019 01:05:42', 'dd-mm-yyyy hh24:mi:ss'), '0', 28, 9, 2, 3, '�꾸������ʫ��Ƽ������', '52411454025', '42304624027', '�꺭�񲩾��賽˸������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (253, '�Һ�', '123456', 3, '��Ƽƽ', '2', to_date('11-10-2019 01:05:42', 'dd-mm-yyyy hh24:mi:ss'), '0', 14, 85, 4, 4, '��ۺ�ƽ����������ɺ�', '78383842765', '12383374651', 'ʫ��ݡ�ﴫ�ۺ���������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (263, '��ʫ', '123456', 3, '��ɽ�', '2', to_date('11-10-2019 01:05:43', 'dd-mm-yyyy hh24:mi:ss'), '1', 21, 84, 2, 3, 'չ���������������ﺭʫ', '80879229474', '95691321857', '�����������Ź�С����С', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (278, '��ƽ', '123456', 3, '����', '2', to_date('11-10-2019 01:05:43', 'dd-mm-yyyy hh24:mi:ss'), '1', 13, 23, 1, 4, '��˸����������������ʫ', '00618863629', '28841550582', '�ź鴺�賽�躭ƼʫС��', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (283, '�', '123456', 1, '�·�', '2', to_date('11-10-2019 01:05:43', 'dd-mm-yyyy hh24:mi:ss'), '1', 14, 56, 1, 3, '�˼ξ����������˹����', '86166335966', '05642347761', '��溳��������������չ', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (298, '�', '123456', 3, '�𺭴���', '2', to_date('11-10-2019 01:05:43', 'dd-mm-yyyy hh24:mi:ss'), '1', 21, 54, 4, 2, '�����ľ������ʫ�����', '90371905447', '47711443662', 'ʫ����Ƽ�����ĺ�ʫ����', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (303, '��Ĭ', '123456', 3, '�ղ�չ', '1', to_date('11-10-2019 01:05:43', 'dd-mm-yyyy hh24:mi:ss'), '0', 31, 96, 1, 2, '��ݡ˸���ƺ�����������', '24656953030', '77238404755', '��������������ƽ������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (5, '����', '123456', 3, 'ˮչ��', '1', to_date('10-10-2019 19:50:00', 'dd-mm-yyyy hh24:mi:ss'), '0', 3, 5, 4, 3, '�ʫ��ɽ�ʫ������չ��', '09647123506', '34177071695', '���������С������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (10, '��ʫ', '123456', 3, 'ˮ����', '2', to_date('10-10-2019 19:50:00', 'dd-mm-yyyy hh24:mi:ss'), '0', 28, 34, 3, 3, 'С����������ʫ��������', '84667277413', '09481463633', '������ʫ��������������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (18, '����', '123456', 1, '��չ��', '1', to_date('10-10-2019 19:50:41', 'dd-mm-yyyy hh24:mi:ss'), '1', 12, 39, 3, 2, '��������Ƽʫ�격Ĭ����', '05241965082', '43968864843', '������������С��������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (20, '��ʫ', '123456', 3, '��չ', '2', to_date('10-10-2019 19:51:09', 'dd-mm-yyyy hh24:mi:ss'), '1', 32, 53, 1, 3, '�ɴ��Ƴ�����ʫ���żκ�', '65001188685', '49615677931', '�������격����������չ', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (26, 'κ��', '123456', 2, '���', '1', to_date('10-10-2019 19:51:09', 'dd-mm-yyyy hh24:mi:ss'), '0', 33, 97, 2, 3, 'ݡ�����������˾���ƽ��', '35720031139', '93624662884', '����溾���������ɲ���', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (28, '��չ', '123456', 2, '����', '2', to_date('10-10-2019 19:52:10', 'dd-mm-yyyy hh24:mi:ss'), '0', 21, 76, 4, 1, '����Ĭ���������Ӻ�����', '18643252516', '64734467966', '������չ������ƽ����', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (34, '��ʫ', '123456', 1, '�뺣��', '2', to_date('10-10-2019 19:52:11', 'dd-mm-yyyy hh24:mi:ss'), '1', 7, 80, 4, 1, '��������溽����ǹ�����', '91424689590', '07590600274', '���������������贫����', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (38, '�⾸', '123456', 1, '����', '1', to_date('11-10-2019 00:59:28', 'dd-mm-yyyy hh24:mi:ss'), '1', 26, 45, 5, 3, 'ƽ������չ������������', '12086324998', '18306789480', '����������������ʫ�ƺ�', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (39, '����', '123456', 3, '����', '2', to_date('11-10-2019 00:59:28', 'dd-mm-yyyy hh24:mi:ss'), '1', 7, 60, 4, 4, '��չ�ƺ�������������', '38761484006', '87595929984', '��������Ĭ�ɾ������Ӻ�', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (168, '��', '123456', 2, '�����', '1', to_date('11-10-2019 01:05:33', 'dd-mm-yyyy hh24:mi:ss'), '0', 16, 29, 5, 3, '�ĳ���溹۸���ʫ������', '05293455163', '47110837378', '��������չ����ʫ��ƽ��', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (169, '��ʫ', '123456', 1, '����ݡ', '1', to_date('11-10-2019 01:05:33', 'dd-mm-yyyy hh24:mi:ss'), '0', 24, 24, 4, 4, '�����������ź�����С��', '04542640939', '06415503694', '������������С�ӹۻ���', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (171, '����', '123456', 3, '������ƽ', '1', to_date('11-10-2019 01:05:41', 'dd-mm-yyyy hh24:mi:ss'), '0', 13, 82, 2, 4, '����������չ������չ��', '18708978484', '77246895949', '����չ����������������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (172, '����', '123456', 3, '��չ', '1', to_date('11-10-2019 01:05:41', 'dd-mm-yyyy hh24:mi:ss'), '0', 8, 72, 1, 2, '��������С�ճ���������', '57987366589', '83531998713', 'ʫ���꺭�ﾸ�ĺ麭����', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (182, '�Խ�', '123456', 2, '��', '1', to_date('11-10-2019 01:05:41', 'dd-mm-yyyy hh24:mi:ss'), '1', 9, 36, 2, 2, '�Ǻ���������������', '46925250320', '71333926520', 'չ�����˸С�Ĵ�Ĭ����', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (187, '֣��', '123456', 2, 'ˮ��ʫ��', '2', to_date('11-10-2019 01:05:41', 'dd-mm-yyyy hh24:mi:ss'), '1', 25, 19, 1, 2, '���鴺��ʫ�Ӻ���������', '62502387037', '69207337995', '������۸շ���Ĭ�����', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (192, '֣ʫ', '123456', 2, '��չ˸��', '1', to_date('11-10-2019 01:05:41', 'dd-mm-yyyy hh24:mi:ss'), '0', 18, 75, 4, 4, '��������溽�չ��չƽ��', '86531393698', '04311686593', '���Ʒ���Ƽʫ������չ��', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (198, '��չ', '123456', 2, '�������', '1', to_date('11-10-2019 01:05:41', 'dd-mm-yyyy hh24:mi:ss'), '1', 1, 13, 1, 3, '�괺��������С��ƼƼ��', '09453733861', '52953105691', '�۷ɺ��ĺ�������Ĭ����', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (199, 'Ǯ��', '123456', 2, '����ʫ', '2', to_date('11-10-2019 01:05:41', 'dd-mm-yyyy hh24:mi:ss'), '1', 16, 58, 3, 2, '��չ溾�����Ƽ��������', '65965752610', '62826536512', '�վ��������������ĬС', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (204, '�²�', '123456', 3, '������', '2', to_date('11-10-2019 01:05:41', 'dd-mm-yyyy hh24:mi:ss'), '0', 33, 83, 4, 4, '�������������ʫ������', '41441272294', '80731974439', 'ʫ����������Ƽʫ������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (209, '����', '123456', 1, 'κ��', '1', to_date('11-10-2019 01:05:42', 'dd-mm-yyyy hh24:mi:ss'), '0', 34, 17, 4, 2, '���������泽��չ��ݡ��', '25240103029', '97517183874', '���ó����κ����ɼ����', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (214, '����', '123456', 2, '����', '2', to_date('11-10-2019 01:05:42', 'dd-mm-yyyy hh24:mi:ss'), '1', 28, 7, 2, 2, '����ʫ����������Ĭ', '91255433946', '02758474664', '��۳��洺������������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (219, '����', '123456', 3, '��С', '2', to_date('11-10-2019 01:05:42', 'dd-mm-yyyy hh24:mi:ss'), '0', 18, 75, 1, 2, '��������ʫ�ĺ��������', '23799615257', '09710765476', '����ƽ����ƽ��������Ĭ', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (222, 'Ǯ��', '123456', 3, '�Է�', '2', to_date('11-10-2019 01:05:42', 'dd-mm-yyyy hh24:mi:ss'), '0', 19, 35, 4, 3, '�����ܺ����Ĵ��������', '75438798381', '11999577485', '���������Сչ��������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (227, '����', '123456', 2, 'ʩ��', '1', to_date('11-10-2019 01:05:42', 'dd-mm-yyyy hh24:mi:ss'), '0', 23, 62, 1, 2, '�����������溺����麣', '31114369329', '37518029012', '�������ĺ����������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (232, '��', '123456', 2, '������', '2', to_date('11-10-2019 01:05:42', 'dd-mm-yyyy hh24:mi:ss'), '1', 25, 2, 3, 3, '������������ʫ�Ĵ�����', '36575786239', '46940100467', '��ʫ�����������������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (237, '����', '123456', 2, '����', '2', to_date('11-10-2019 01:05:42', 'dd-mm-yyyy hh24:mi:ss'), '1', 9, 63, 4, 1, '�곽������������������', '37471678385', '41730301678', '������������������δ�', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (242, '����', '123456', 3, '����', '1', to_date('11-10-2019 01:05:42', 'dd-mm-yyyy hh24:mi:ss'), '1', 10, 38, 5, 2, 'ʫĬ溲�����ܽ�������', '51680336813', '64198280307', '��Ƽ�������溴������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (243, '�ž�', '123456', 2, '��С��', '1', to_date('11-10-2019 01:05:42', 'dd-mm-yyyy hh24:mi:ss'), '1', 14, 95, 3, 4, '������Ĭ���������Ĳ���', '51264499163', '99669652676', '�������������������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (244, '���', '123456', 3, '�ž�', '2', to_date('11-10-2019 01:05:42', 'dd-mm-yyyy hh24:mi:ss'), '0', 27, 38, 5, 1, '�������������Ž�������', '40102476809', '55954025378', 'ʫ��ݡ�����˽���溼�', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (249, '����', '123456', 3, '����ݡ', '1', to_date('11-10-2019 01:05:42', 'dd-mm-yyyy hh24:mi:ss'), '0', 3, 51, 1, 2, 'Ƽ�����Ĵ���溺鴺����', '33447689345', '64452646050', '�ƺ�ƽ��ʫ����ʫ������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (254, 'κ��', '123456', 3, '������', '2', to_date('11-10-2019 01:05:42', 'dd-mm-yyyy hh24:mi:ss'), '1', 12, 33, 5, 2, '��չ�����������������', '35829443576', '51464419016', '���������������ó�ʫ��', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (259, '����', '123456', 2, '��������', '1', to_date('11-10-2019 01:05:42', 'dd-mm-yyyy hh24:mi:ss'), '0', 3, 49, 2, 3, '����������������������', '21822452546', '88073446776', '�������������������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (269, 'ˮƼ', '123456', 1, '�ż�', '2', to_date('11-10-2019 01:05:43', 'dd-mm-yyyy hh24:mi:ss'), '1', 10, 5, 5, 4, '�ƴ����Ӹպ��Żۺ�С��', '13679056924', '51037835276', '�����������������ʫ��', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (274, '����', '123456', 3, '��������', '2', to_date('11-10-2019 01:05:43', 'dd-mm-yyyy hh24:mi:ss'), '0', 7, 72, 5, 3, '�����ս�������ʫ������', '30679513251', '38056647005', '���������ʫĬ����ʫ��', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (279, 'ˮ��', '123456', 2, '������', '2', to_date('11-10-2019 01:05:43', 'dd-mm-yyyy hh24:mi:ss'), '0', 17, 39, 4, 3, '��������������������', '05140444648', '28676027007', '������Ĭ���������격��', null);
commit;
prompt 100 records committed...
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (284, '����', '123456', 3, '������ʫ', '2', to_date('11-10-2019 01:05:43', 'dd-mm-yyyy hh24:mi:ss'), '1', 16, 90, 1, 1, 'Ƽ���곽����ʫ��������', '71401874634', '88511333591', '�������ܴ���Ƽ��������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (288, '����', '123456', 1, '������', '1', to_date('11-10-2019 01:05:43', 'dd-mm-yyyy hh24:mi:ss'), '0', 20, 20, 5, 4, '������ʫ����������չ��', '02374228837', '63037726822', '溲���������ݡ������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (289, '��ʫ', '123456', 1, '����', '1', to_date('11-10-2019 01:05:43', 'dd-mm-yyyy hh24:mi:ss'), '1', 12, 25, 2, 3, '��꾸ʫ��������������', '82388891102', '85088564333', '���Ӻ�����������������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (299, 'κ��', '123456', 3, '�����', '2', to_date('11-10-2019 01:05:43', 'dd-mm-yyyy hh24:mi:ss'), '0', 3, 18, 5, 1, '��ƽ��չ����ɷ����', '62627502596', '14106709548', '��չ�����糽����������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (305, 'auto-create-Patient1', '123456', 3, '����������', '2', to_date('11-10-2019 22:41:31', 'dd-mm-yyyy hh24:mi:ss'), '1', 13, 12, 4, 3, '��Դ·51��', '18807719226', null, null, null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (6, '����', '123456', 3, '��ʫ���', '2', to_date('10-10-2019 19:50:00', 'dd-mm-yyyy hh24:mi:ss'), '0', 32, 47, 4, 3, '��������溴�ƽ�������', '66287952352', '92875729131', '��������������չ��ɷ�', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (14, '�Ҿ�', '123456', 3, '����', '1', to_date('10-10-2019 19:50:41', 'dd-mm-yyyy hh24:mi:ss'), '0', 30, 10, 2, 4, '�纭���Ľ���ʫ���ۺ�ݡ', '85699126030', '18107436813', '����������ƽ��ݡƼ�ƴ�', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (19, '���', '123456', 3, '���ɾ�', '2', to_date('10-10-2019 19:50:41', 'dd-mm-yyyy hh24:mi:ss'), '1', 34, 15, 4, 3, 'ʫ�������ĺ���չչʫ��', '58163829944', '68010445995', '�ź������ﲩչʫ����չ', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (22, '����', '123456', 1, 'κ����ʫ', '2', to_date('10-10-2019 19:51:09', 'dd-mm-yyyy hh24:mi:ss'), '0', 8, 89, 3, 2, '�������ν��Ӻ��ź�����', '95704180326', '02057024617', '������������Ĭ��������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (27, '����', '123456', 1, '��������', '2', to_date('10-10-2019 19:51:09', 'dd-mm-yyyy hh24:mi:ss'), '0', 11, 100, 5, 1, '��������ܺ�����������', '89814079394', '84593131729', '�����ʫ�������������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (30, '����', '123456', 1, '����ʫ', '2', to_date('10-10-2019 19:52:11', 'dd-mm-yyyy hh24:mi:ss'), '0', 9, 19, 3, 1, '�ĸպ�Ĭ����������ʫ��', '43423030493', '87574295399', 'Ƽ�۴�����������������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (35, '����', '123456', 2, '����˸�', '1', to_date('10-10-2019 19:52:11', 'dd-mm-yyyy hh24:mi:ss'), '1', 11, 94, 4, 4, '�����۾곽ƽ��չݡ�ų�', '14285889643', '29971607010', '���������չ�ɽ���չ��', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (40, 'ʩ��', '123456', 3, '��', '2', to_date('11-10-2019 00:59:28', 'dd-mm-yyyy hh24:mi:ss'), '1', 26, 58, 5, 3, '�������괫������ӻ���', '88754782980', '33079937135', '˸�����溾�����Ƽ�ĺ�', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (170, '����', '123456', 3, '�η�', '1', to_date('11-10-2019 01:05:33', 'dd-mm-yyyy hh24:mi:ss'), '0', 4, 67, 1, 2, '�������������Ӻ�������', '40107853772', '27508647281', '��ݡ����ʫ���������Ÿ�', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (173, '����', '123456', 2, '�����', '2', to_date('11-10-2019 01:05:41', 'dd-mm-yyyy hh24:mi:ss'), '1', 8, 20, 4, 2, '��������ʫ��Ƽ��չ����', '72730982402', '73521572345', '������۾���С���', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (178, '����', '123456', 3, '�κ�����', '1', to_date('11-10-2019 01:05:41', 'dd-mm-yyyy hh24:mi:ss'), '1', 24, 2, 1, 3, 'չ�����ĺ��۽�����ʫ', '41241536273', '86679228578', 'չ��������������ݡ����', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (183, '����', '123456', 3, '����', '2', to_date('11-10-2019 01:05:41', 'dd-mm-yyyy hh24:mi:ss'), '1', 29, 53, 1, 1, '���Ĺ��������Ż�����', '51489094293', '28918578457', '����������ʫ������ƽ��', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (188, '����', '123456', 1, '��κ���', '1', to_date('11-10-2019 01:05:41', 'dd-mm-yyyy hh24:mi:ss'), '1', 14, 97, 1, 1, '����������ʫ�����ĺ���', '36909309448', '27501640981', '��ƽ�������ų���Ĭʫ��', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (193, '��Ƽ', '123456', 2, 'ʩ��', '2', to_date('11-10-2019 01:05:41', 'dd-mm-yyyy hh24:mi:ss'), '1', 26, 67, 2, 3, 'ʫ�������Ŵ���μ�����', '99334678059', '68610579719', '����������������ݡ��', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (200, '�봫', '123456', 1, '������', '1', to_date('11-10-2019 01:05:41', 'dd-mm-yyyy hh24:mi:ss'), '1', 12, 78, 2, 2, '���Ŵ����ô���������', '47430007351', '41104394560', '���������ʫ�����ľ곽', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (205, '��С', '123456', 1, '��������', '1', to_date('11-10-2019 01:05:41', 'dd-mm-yyyy hh24:mi:ss'), '1', 34, 47, 5, 4, '���������������������', '73000593392', '41599131711', '���۾꾸ĬС�������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (210, '����', '123456', 2, '�', '2', to_date('11-10-2019 01:05:42', 'dd-mm-yyyy hh24:mi:ss'), '1', 11, 32, 5, 1, '���Ĳ���˸��˸�����ĺ�', '03320548618', '24462914684', '����������Сʫչ������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (215, 'ˮչ', '123456', 3, '�ҽ�����', '2', to_date('11-10-2019 01:05:42', 'dd-mm-yyyy hh24:mi:ss'), '0', 12, 42, 4, 2, '����������������ι�ƽ', '80802173025', '94352026786', '���ܷ���������������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (220, '����', '123456', 2, '񼺣', '2', to_date('11-10-2019 01:05:42', 'dd-mm-yyyy hh24:mi:ss'), '1', 29, 99, 4, 2, '��ʫ����������Ĭ���鴫', '75291978030', '19185434861', '���ĺ����Ŵ��ƾ�ݡ��Ƽ', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (223, 'ʩ��', '123456', 2, '��˸��ʫ', '1', to_date('11-10-2019 01:05:42', 'dd-mm-yyyy hh24:mi:ss'), '0', 4, 92, 5, 1, '��������ƽ����������չ', '44952036206', '12675041519', '�ɳ�����ʫƽ����������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (228, '񼺭', '123456', 1, '������', '1', to_date('11-10-2019 01:05:42', 'dd-mm-yyyy hh24:mi:ss'), '0', 5, 73, 2, 3, '����ʫĬ��������������', '39525855080', '11150627507', '��չʫ����Ƽ�ӷ�溲�չ', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (233, '�', '123456', 2, '֣����', '1', to_date('11-10-2019 01:05:42', 'dd-mm-yyyy hh24:mi:ss'), '1', 12, 87, 4, 3, '����Ƽʫ�����ĸ���ʫ��', '23053807562', '88502755559', '����չĬ��ʫС��������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (238, '����', '123456', 1, '��ʫ��', '2', to_date('11-10-2019 01:05:42', 'dd-mm-yyyy hh24:mi:ss'), '0', 15, 73, 1, 1, '����˸����������������', '56952771184', '56865276130', '���ݡ�۾���Ĭ��������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (245, '����', '123456', 3, '����', '1', to_date('11-10-2019 01:05:42', 'dd-mm-yyyy hh24:mi:ss'), '0', 6, 53, 3, 3, '��ݡ�Ĺ���������������', '81840804440', '27107323313', '�Ž������ƽ���Ӹ�����', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (250, '����', '123456', 1, '��ʫ', '1', to_date('11-10-2019 01:05:42', 'dd-mm-yyyy hh24:mi:ss'), '1', 3, 33, 5, 2, '���ĺ��������ƺ���ƽ��', '75319243969', '10818019409', '���격��������Ƽ������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (255, '���', '123456', 3, '����', '2', to_date('11-10-2019 01:05:42', 'dd-mm-yyyy hh24:mi:ss'), '1', 34, 89, 4, 2, 'ʫ�������Ӻ������Ǵ���', '87791949213', '01130195264', '�����ĳ�����չ����ɽ�', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (260, 'κ��', '123456', 2, 'ˮչ��', '1', to_date('11-10-2019 01:05:42', 'dd-mm-yyyy hh24:mi:ss'), '0', 26, 5, 4, 3, 'ʫ�����������������', '26073176171', '39523549800', '�γ�������������������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (265, 'ʩ��', '123456', 1, '���', '1', to_date('11-10-2019 01:05:43', 'dd-mm-yyyy hh24:mi:ss'), '0', 8, 87, 4, 2, '���ų����������������', '20662595570', '45033611912', '��ĬС���Ƽκ��Ӹ�����', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (270, '��ݡ', '123456', 1, '����ݡ', '1', to_date('11-10-2019 01:05:43', 'dd-mm-yyyy hh24:mi:ss'), '0', 31, 64, 4, 2, '����ʫʫ��С����������', '04546541210', '32048587581', '��ʫ�����˺��������ܳ�', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (275, '�³�', '123456', 1, '�ս�ʫչ', '2', to_date('11-10-2019 01:05:43', 'dd-mm-yyyy hh24:mi:ss'), '0', 22, 22, 4, 2, '��ʫ������ʫ����������', '81665109553', '79151662774', '������������������չƼ', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (280, '�ﴺ', '123456', 1, '�ｨʫ��', '1', to_date('11-10-2019 01:05:43', 'dd-mm-yyyy hh24:mi:ss'), '0', 3, 58, 1, 2, '������Ƽ����������ܲ�', '20728473756', '74663916197', '�ɳ�ʫ��չ����������ʫ', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (285, '����', '123456', 2, '����', '2', to_date('11-10-2019 01:05:43', 'dd-mm-yyyy hh24:mi:ss'), '1', 27, 13, 3, 2, '�������������θ�������', '20350880725', '82445655712', '�������꺣������������', null);
insert into LOL_USER (id, username, password, rule, realname, sex, registertime, status, pid, age, cultureid, religionid, address, phone, email, content, imagepath)
values (290, 'Ǯ��', '123456', 1, '�', '2', to_date('11-10-2019 01:05:43', 'dd-mm-yyyy hh24:mi:ss'), '0', 34, 76, 2, 4, '������ʫ��������������', '21505825321', '49622666505', '������������ʫ��������', null);
commit;
prompt 138 records loaded
prompt Loading LOL_WARM...
insert into LOL_WARM (id, content)
values (0, '�쳣');
insert into LOL_WARM (id, content)
values (1, '����');
commit;
prompt 2 records loaded
prompt Loading LOL_DATAMANAGER...
insert into LOL_DATAMANAGER (id, username, testtype, testdate, warmtype)
values (2, '����', 1, to_date('16-10-2019', 'dd-mm-yyyy'), 1);
commit;
prompt 1 records loaded
prompt Loading LOL_FRIENDCONNECT...
prompt Table is empty
prompt Loading LOL_MEDICAL...
insert into LOL_MEDICAL (id, username, hypersensitivity, hypersensitivitystatus, hallucination, hallucinationstatus, running_thought, running_thoughtstatus, delayed_thinking, delayed_thinkingstatus, high_spirits, high_spiritsstatus, irritable, irritablestatus, enhanced_will, enhanced_willstatus, self_injury, self_injurystatus, mental_retardation, mental_retardationstatus, diet, dietstatus, sleep, sleepstatus, impotence, impotencestatus, sexual_orientation, sexual_orientationstatus, personality_disorder, personality_disorderstatus, hyposexuality, hyposexualitystatus, medical_info, warmtype, testtime, testtype)
values (4, 'kailong', '�о�����', '0', '�þ�', '0', '˼ά����', '0', '˼ά�ٻ�', '0', '��������', '0', '�׼�ŭ', '0', '��־��ǿ', '0', '����', '0', '�������ٻ�', '0', '��ʳ', '0', '˯��', '0', '����', '0', '��ָ��', '0', '�˸��ϰ�', '0', '��������', '0', '��û�µ�', 0, to_date('13-10-2019 23:27:03', 'dd-mm-yyyy hh24:mi:ss'), 3);
commit;
prompt 1 records loaded
prompt Loading LOL_WEBINFOMANAGE...
insert into LOL_WEBINFOMANAGE (id, module, title, imagepath, uploadtime, content)
values (1, '������', '������', '��', to_date('09-10-2019', 'dd-mm-yyyy'), '����˹');
commit;
prompt 1 records loaded
prompt Enabling foreign key constraints for LOL_USER...
alter table LOL_USER enable constraint LOL_USER_CULTUREID_FK;
alter table LOL_USER enable constraint LOL_USER_PROVINCEID_FK;
alter table LOL_USER enable constraint LOL_USER_RELIGIONID_FK;
alter table LOL_USER enable constraint LOL_USER_RULE_FK;
prompt Enabling foreign key constraints for LOL_DATAMANAGER...
alter table LOL_DATAMANAGER enable constraint LOL_DATAMANAGER_TESTTYPE_FK;
alter table LOL_DATAMANAGER enable constraint LOL_DATAMANAGER_USERNAME_FK;
alter table LOL_DATAMANAGER enable constraint LOL_DATAMANAGER_WARMTYPE_FK;
prompt Enabling foreign key constraints for LOL_FRIENDCONNECT...
alter table LOL_FRIENDCONNECT enable constraint LOL_FRIENDCONNECT_URLNAME_FK;
prompt Enabling foreign key constraints for LOL_MEDICAL...
alter table LOL_MEDICAL enable constraint LOL_MEDICAL_TESTTYPE_PK;
alter table LOL_MEDICAL enable constraint LOL_MEDICAL_WARMTYPE_PK;
prompt Enabling triggers for LOL_CULTURE...
alter table LOL_CULTURE enable all triggers;
prompt Enabling triggers for LOL_TESTTYPE...
alter table LOL_TESTTYPE enable all triggers;
prompt Enabling triggers for TAB_PROVINCE...
alter table TAB_PROVINCE enable all triggers;
prompt Enabling triggers for LOL_RELIGION...
alter table LOL_RELIGION enable all triggers;
prompt Enabling triggers for LOL_RULE...
alter table LOL_RULE enable all triggers;
prompt Enabling triggers for LOL_USER...
alter table LOL_USER enable all triggers;
prompt Enabling triggers for LOL_WARM...
alter table LOL_WARM enable all triggers;
prompt Enabling triggers for LOL_DATAMANAGER...
alter table LOL_DATAMANAGER enable all triggers;
prompt Enabling triggers for LOL_FRIENDCONNECT...
alter table LOL_FRIENDCONNECT enable all triggers;
prompt Enabling triggers for LOL_MEDICAL...
alter table LOL_MEDICAL enable all triggers;
prompt Enabling triggers for LOL_WEBINFOMANAGE...
alter table LOL_WEBINFOMANAGE enable all triggers;
set feedback on
set define on
prompt Done.
