select * from sitter;

select * from options;


select * from SITTER_OPTION


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


select count(*) from sitter

commit

