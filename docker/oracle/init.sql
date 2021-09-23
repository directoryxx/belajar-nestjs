create tablespace crm_tabsspace
datafile 'crm_tabsspace.dat'
size 50M autoextend on;

create temporary tablespace crm_tabspace_temp
tempfile 'crm_tabspace_temp.dat'
size 10M autoextend on;

create user crm
identified by sisidev
default tablespace crm_tabsspace
temporary tablespace crm_tabspace_temp;

GRANT CONNECT, RESOURCE, DBA TO crm;