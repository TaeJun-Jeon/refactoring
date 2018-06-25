select * from sitter;

select * from options;
select * from REPLY

select * from SITTER_OPTION
select * from diary
select * from QA
select * from SITTER_REQUEST
select diary_title, diary_content, diary_writeday, diary_fname
from diary d join call c
on d.owner_id=c.owner_id and d.sitter_id=c.sitter_id
where c.owner_id='happymom' and c.sitter_id='goodsitter' and c.call_reservate_start='18-06-16'


update diary set diary_fname='e.jpg,f.jpg,a.jpg' where daily_record_id='DAILY_RECORD_ID-2'
select * 
from sitter join (select * from SITTER_OPTION join options where sitter_option_name=option_name)

select * from SITTER_OPTION where SITTER_OPTIO
select * from sitter_option
select * from OPTIONS

select sitter_option_id, sitter_id, o.option_id, option_name
from sitter_option s join options o
on o.option_id = s.option_id

select sitter_id, sitter_password, sitter_name, sitter_Phone, sitter_email, sitter_addr,sitter_detail_addr,sitter_introduce, sitter_grade,sitter_certification,sitter_pet_amount,sitter_basis_price,sitter_permit
from sitter s join (select sitter_option_id, sitter_id, o.option_id, option_name
from sitter_option s join options o
on o.option_id = s.option_id
) o
on s.sitter_id = o.sitter_id

select * 
from sitter s join (select sitter_option_id, sitter_id, o.option_id, option_name
from sitter_option s join options o
on o.option_id = s.option_id
) o
on s.sitter_id = o.sitter_id

select sitter_id, sitter_grade from sitter
update SITTER set sitter_grade = 1 where sitter_id = 'sitter1';
update SITTER set sitter_grade = 3 where sitter_id = 'sitter2';
update SITTER set sitter_grade = 2 where sitter_id = 'sitter3';
update SITTER set sitter_grade = 5 where sitter_id = 'sitter4';
update SITTER set sitter_grade = 2 where sitter_id = 'sitter5';
update SITTER set sitter_grade = 4 where sitter_id = 'sitter6';
update SITTER set sitter_grade = 4 where sitter_id = 'sitter7';
update SITTER set sitter_grade = 5 where sitter_id = 'sitter8';
update SITTER set sitter_grade = 2 where sitter_id = 'sitter9';
update SITTER set sitter_grade = 3 where sitter_id = 'sitter10';

select * from owner_request 
select count(*) from sitter

select *
from sitter
where (sitter_grade > 1) and sitter_id in 
(select DISTINCT sitter_id from sitter_Option where option_id in ('OPTION_ID-5','OPTION_ID-6','OPTION_ID-9') )
and sitter_permit='Y'

select option_id from sitter_option where sitter_id in select DISTINCT sitter_id from sitter_Option where option_id='OPTION_ID-1'

select DISTINCT sitter_id 
from sitter_Option 
where option_id in ('OPTION_ID-1','OPTION_ID-2','OPTION_ID-3');


SELECT * FROM SITTER_OPTION 
select * from owner_request
select * from sitter
select * from sitting_option
select * from authorities
select * from role

commit

select * from call
select * from OWNER_REQUEST
select * from SITTER
select sitter_fname
		from sitter s join call c
		on s.sitter_id = c.sitter_id
		where c.sitter_id = 'goodsitter' and c.owner_id='happymom'

		select diary_title, diary_content, diary_writeday, diary_fname
		from diary d join owner_request r
		on (d.owner_id=r.owner_id and d.sitter_id=r.sitter_id)
		where r.owner_id='happymom' and r.sitter_id='goodsitter' and r.owner_request_start='2018-06-02'
		
		insert into call values('call_id-'||sequence_CALL.NEXTVAL,'happymom','goodsitter',20000,'Èûµé¾î¿ä','18-06-20','18-06-21',sysdate,1,null)
		select * from DIARY
		select * from OWNER_REQUEST
		
		select diary_title, diary_content, diary_writeday, diary_fname
		from diary d join owner_request r
		on (d.owner_id=r.owner_id and d.sitter_id=r.sitter_id and d.sitting_id=r.owner_request_id)
		where r.owner_id='happymom' and r.sitter_id='woo' and r.owner_request_start='18-06-02'
		
		
		
		select diary_title, diary_content, diary_writeday, diary_fname
		from diary d join call c
		on (d.owner_id=c.owner_id and d.sitter_id=c.sitter_id and d.call_id=c.call_id)
		where c.owner_id='happymom' and c.sitter_id='goodsitter' and c.call_reservate_start='2018-06-16'
		
		
		select sitter_fname
		from sitter s join call c
		on s.sitter_id = c.sitter_id
		join diary d
		on d.call_id=c.call_id
		where c.sitter_id='goodsitter' and c.owner_id='happymom' and c.call_reservate_start='2018-06-16'
		
		select sitter_fname
		from sitter
		where sitter_id='goodsitter'
		
		select diary_title, diary_content, diary_writeday, diary_fname
		from diary d join call c
		on (d.owner_id=c.owner_id and d.sitter_id=c.sitter_id and d.sitting_id=c.call_id)
		where c.owner_id='happymom' and c.sitter_id='goodsitter' and c.call_reservate_start='18-06-16'
		
		select * from qa where QA_id='QA_id-1'
		
		
		select *
		from qa
		where owner_id like %upper('happy')%
		
		
		
select * from owner_request where owner_id='happymom' and owner_approval is NULL;
select count(*) from sitter_request where owner_id='happymom' and owner_approval is null;
select count(*) from sitter_request where owner_approval = 'null';

