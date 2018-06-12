
CREATE TABLE owner_request(
     owner_request_id varchar2(20) PRIMARY KEY,
     owner_id varchar2(20),
     sitter_id varchar2(20),
     owner_request_price number,
     owner_request_start varchar2(20),
     owner_request_end varchar2(20),
     owner_request_petcount number,
     sitter_approval varchar2(20)
    
  )
  
  INSERT INTO owner_request VALUES(1,'¡§«—∫∞','¿Â»Ò¡§',10000,'2018-06-01','2018-06-03',1,null);
  INSERT INTO owner_request VALUES(2,'¿¸≈¬¡ÿ','¿Â»Ò¡§',10000,'2018-06-02','2018-06-05',1,null);
  INSERT INTO owner_request VALUES(3,'πÈΩ¬«ˆ','¿Â»Ò¡§',20000,'2018-06-02','2018-06-05',1,'x');
  INSERT INTO owner_request VALUES(4,'±ËΩ√ø¨','¿Â»Ò¡§',20000,'2018-06-11','2018-06-12',1,'y');
  INSERT INTO owner_request VALUES(5,'±Ë¡¯¡÷','¿Â»Ò¡§',30000,'2018-06-13','2018-06-13',1,'x');

  select*from owner_request