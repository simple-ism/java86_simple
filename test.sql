create table java86_fine(
	fine_no		number			primary key,
	mem_id		varchar2(40)	not null,
	
	fine_amount		number			not null,
	fine_detail		varchar2(200)	not null,
	fine_date	Date			default sysdate

);

select * from java86_fine;

create sequence s86_java86_fine;

select * from user_sequences;

	select	fine_no,e.mem_id,m.mem_name,fine_amount,fine_detail,fine_date
  	from java86_fine e, java86_member m
  	where e.mem_id=m.mem_id;