--创建user表序列
create sequence USER_SEQ;


--创建rule权限表
create table lol_rule(
       id number(11) constraint lol_rule_id_pk primary key,
       content varchar2(40)
);



--创建culture文化表
create table lol_culture(
       id number(11) constraint lol_culture_id_pk primary key,
       content varchar2(40)
);

--创建religion宗教表
create table lol_religion(
       id number(11) constraint lol_religion_id_pk primary key,
       content varchar2(40)
);

--创建user表

create table lol_user(
       id number(11) constraint lol_user_id_pk primary key,
       username varchar2(30) constraint lol_user_username_uk unique,
       password varchar2(50),
       rule number(11) constraint lol_user_rule_fk references lol_rule(id),
       realname varchar2(50),
       sex char(1) constraint lol_user_sex_ck check(sex in('1','2')),
       registertime date,
       status char(1) constraint lol_user_status_ck check(status in('0','1')),
       pid number(11) constraint lol_user_provinceid_fk references tab_province(id),
       age number(11),
       culture number(11) constraint lol_user_cultureid_fk references lol_culture(id),
       religion number(11) constraint lol_user_religionid_fk references lol_religion(id),
       address varchar2(50),
       phone varchar2(50),
       email varchar2(50),
       medical_info varchar2(50),
       imagepath varchar2(200),
       content varchar2(50)
);

--添加medical诊断表与user用户表关联
alter table lol_medical
add constraint lol_medical_username_fk foreign key(username) references lol_user(username);


--创建medical表序列
create sequence MEDICAL_SEQ;



--创建medical诊断表
create table lol_medical(
       id number(11) constraint lol_medical_id_pk primary key,
       username varchar2(30), constraint lol_medical_username_uk unique,
       hypersensitivity varchar2(20),
       hypersensitivitystatus char(1) constraint lol_medical_hyperstatus_ck check(hypersensitivitystatus in('0','1')),
       hallucination varchar2(20),
       hallucinationstatus char(1) constraint lol_medical_hallstatus_ck check(hallucinationstatus in('0','1')),
       running_thought varchar2(20),
       running_thoughtstatus char(1) constraint lol_medical_runningstatus_ck check(running_thoughtstatus in('0','1')),
       delayed_thinking varchar2(20),
       delayed_thinkingstatus char(1) constraint lol_medical_delayedstatus_ck check(delayed_thinkingstatus in('0','1')),
       high_spirits varchar2(20),
       high_spiritsstatus char(1) constraint lol_medical_highstatus_ck check(high_spiritsstatus in('0','1')),
       irritable varchar2(20),
       irritablestatus char(1) constraint lol_medical_irritablestatus_ck check(irritablestatus in('0','1')),
       enhanced_will varchar2(20),
       enhanced_willstatus char(1) constraint lol_medical_enhancedstatus_ck check(enhanced_willstatus in('0','1')),
       self_injury varchar2(20),
       self_injurystatus char(1) constraint lol_medical_selfstatus_ck check(self_injurystatus in('0','1')),
       mental_retardation varchar2(20),
       mental_retardationstatus char(1) constraint lol_medical_mentalstatus_ck check(mental_retardationstatus in('0','1')),
       diet varchar2(20),
       dietstatus char(1) constraint lol_medical_dietstatus_ck check(dietstatus in('0','1')),
       sleep varchar2(20),
       sleepstatus char(1) constraint lol_medical_sleepstatus_ck check(sleepstatus in('0','1')),
       impotence varchar2(20),
       impotencestatus char(1) constraint lol_medical_impotencestatus_ck check(impotencestatus in('0','1')),
       sexual_orientation varchar2(20),
       sexual_orientationstatus char(1) constraint lol_medical_sexualstatus_ck check(sexual_orientationstatus in('0','1')),
       personality_disorder varchar2(20),
       personality_disorderstatus char(1) constraint lol_medical_personstatus_ck check(personality_disorderstatus in('0','1'))
);


--创建datamanager表序列
create sequence DATAMANAGER_SEQ;



--创建datamanager数据管理表
create table lol_datamanager(
       id number(11) constraint lol_datamanager_id_pk primary key,
       username varchar2(30) constraint lol_datamanager_username_uk unique,
       testtype number(11) constraint lol_datamanager_testtype_fk references lol_testtype(id),
       testdate date,
       warmtype number(11) constraint lol_datamanager_warmtype_fk references lol_warm(id)
);

--添加datamanager数据管理表与user用户表关联
alter table lol_datamanager
add constraint lol_datamanager_username_fk foreign key(username) references lol_user(username);


--创建warm警告表
create table lol_warm(
       id number(11) constraint lol_warm_id_pk primary key,
       content varchar2(40)
);

--创建testtype测试类型表
create table lol_testtype(
       id number(11) constraint lol_testtype_id_pk primary key,
       content varchar2(40)
);


--创建webinfomanage表序列
create sequence WEBINFOMANAGE_SEQ;


--创建webinfomanage网站信息管理表
create table lol_webinfomanage(
       id number(11) constraint lol_webinfomanage_id_pk primary key,
       module varchar(20),
       title varchar(20),
       imagepath varchar(200),
       uploadtime date,
       content varchar(3000)
       
);


--创建friendconnect表序列
create sequence FRIENDCONNECT_SEQ;


--创建friendconnect友情链接表
create table lol_friendconnect(
       id number(11) constraint lol_friendconnect_id_pk primary key,
       urlname varchar(20) constraint lol_friendconnect_urlname_fk references lol_user(username),
       url varchar(300),
       sort varchar(10)
);



