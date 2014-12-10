create role uport login password 'uport' nosuperuser inherit nocreatedb nocreaterole noreplication;

alter role uport encrypted password 'uport';

create schema uport authorization uport;

grant all on schema uport to uport;

grant usage on schema uport to public;

alter default privileges in schema uport grant select on tables to public;

