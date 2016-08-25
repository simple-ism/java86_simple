create table java86_member(
	mem_id			varchar2(40)		primary key,
	mem_password	varchar2(40)		not null,
	mem_name		varchar2(40)		not null,
	mem_email_id	varchar2(40)		not null,
	mem_email_domain number				not null,
	mem_tel			varchar2(20),
	mem_reg_date	date				default sysdate,
	img_real_name	varchar2(200)
);

insert into java86_member 
	   (mem_id, mem_password, mem_name, mem_email_id, mem_email_domain, mem_tel, img_real_name)
values ('savio', 'savio',	  '손병철',	'savio',	  1,	'016-776-2114', null);

select * from JAVA86_MEMBER;

select mem_id,mem_name
  			from java86_member
  			where mem_name='손병철';
  			
select *
  			from java86_member
  			where mem_name='손병철';