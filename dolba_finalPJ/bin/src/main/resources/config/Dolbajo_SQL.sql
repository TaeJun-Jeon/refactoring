--Dolbajo
--system으로 접속
--계정을 만든다
--create user Dolbajo identified by 1234;
--권한부여하기 
--grant connect, resource to Dolbajo;
--접속
--conn Dolbajo/1234;

--OWNER

CREATE TABLE AUTHORITIES(
	USER_ID VARCHAR2(100) NOT NULL, /* ID*/
	ROLE VARCHAR(30) NOT NULL,    /**/
	CONSTRAINT AUTHORITIES_PK PRIMARY KEY(USER_ID,ROLE)
);


    --DROP table OWNER;   
    create table OWNER(
        OWNER_ID VARCHAR(50) not null constraint OWNER_ID_pk primary key,--견주id
        OWNER_PASSWORD VARCHAR(20) NOT NULL, --비밀번호
        OWNER_NAME VARCHAR(20) NOT NULL, --이름
        OWNER_ADDR VARCHAR(200) NOT NULL, --주소
        OWNER_DETAIL_ADDR VARCHAR(100) NOT NULL, --상세주소
        OWNER_PHONE VARCHAR(20) NOT NULL, --핸드폰
        OWNER_EMAIL VARCHAR(40) NOT NULL, --이메일
        OWNER_fname VARCHAR(50) NULL,--사진이미지
        OWNER_gender VARCHAR(5) NOT NULL --OWNER성별
    );         
    --select * from OWNER;   
    
    insert into OWNER values('happymom','1234','김진주','경기도','수지구','000-000-0000','abcd@naver.com',null,'여');
    insert into OWNER values('cloud','1234','백승현','경기도','광교','000-000-0000','defg@naver.com',null,'남');
    insert into OWNER values('any6103','1234','김시연','서울','강남','000-000-0000','hijk@naver.com',null,'여');
    insert into OWNER values('flower','1234','전태준','부산','기장','000-000-0000','lmnop@naver.com',null,'남');
    insert into OWNER values('happy','1234','정한별','서울','압구정','000-000-0000','qrst@naver.com',null,'남');

--SITTER

    --DROP table SITTER;
    create table SITTER(
        SITTER_ID VARCHAR(50) not null constraint SITTER_ID_pk primary key,--펫시터id
        SITTER_PASSWORD VARCHAR(20) NOT NULL, --비밀번호
        SITTER_NAME VARCHAR(20) NOT NULL, --이름
        SITTER_PHONE VARCHAR(20) NOT NULL, --핸드폰
        SITTER_EMAIL VARCHAR(40) NOT NULL, --이메일    
        SITTER_ADDR VARCHAR(200) NOT NULL, --주소
        SITTER_DETAIL_ADDR VARCHAR(100) NOT NULL, --상세주소
        SITTER_INTRODUCE VARCHAR(200) NOT NULL, --자기소개
        SITTER_GRADE NUMBER NOT NULL, --평점
        SITTER_CERTIFICATION VARCHAR(50) NULL, --자격증
        SITTER_PET_AMOUNT NUMBER NOT NULL, --소유펫 마리수
        SITTER_BASIS_PRICE NUMBER NOT NULL, --기본가격
        SITTER_PERMIT VARCHAR(5) NULL,--합격여부
        Sitter_gender VARCHAR(5) NOT NULL --시터 성별
    );        
    --select * from SITTER;    

    --alter table SITTER  add (Sitter_gender VARCHAR(5) NOT NULL); --시터 성별
    
    insert into SITTER values('goodsitter','1234','이효리','000-000-0000','abcd@naver.com','경기도', '신봉동','안녕하세요','5',null,1,50000,null,'여');
    insert into SITTER values('bestsitter','1234','박보검','000-000-0000','abdd@naver.com','경기도', '상현동','열정이넘치는','5',null,0,50000,null,'남');
    insert into SITTER values('kind','1234','박민영','000-000-0000','efg@naver.com','경기도', '광교','내 아이처럼','0',null,1,27000,null,'여');
    insert into SITTER values('happysis','1234','박서준','000-000-0000','happy@naver.com','수원시', '기흥','맡겨만주세요','1',null,1,30000,null,'남');
    insert into SITTER values('meme','1234','설리','000-000-0000','hijk@naver.com','서울시', '잠원동','최고의서비스','3',null,1,40000,null,'여');

--pet

    --DROP table pet;  
    create table pet(
        pet_id VARCHAR(50) not null constraint pet_id_pk primary key,--펫id
        OWNER_ID VARCHAR(50) not null constraint pet_OWNER_ID_fk references OWNER(OWNER_ID),--견주id 
        pet_species VARCHAR(20) not null ,--종
        pet_size VARCHAR(10) not null,--견종크기 (대/중/소)
        pet_liness VARCHAR(50) not null, --질병없음으로 작성
        pet_weight NUMBER not null,--몸무게
        pet_gender VARCHAR(5) not null, --성별
        pet_age NUMBER not null ,--나이
        pet_fname VARCHAR(50) null ,--사진이름
        pet_fsize NUMBER null --사진크기
    );
    --select * from pet; 
    --alter table pet rename column petd_id  to  pet_id;
    
    --DROP SEQUENCE sequence_pet;
    CREATE SEQUENCE sequence_pet
    START WITH 1
    INCREMENT BY 1;

    --SELECT sequence_pet.NEXTVAL FROM DUAL;
    --SELECT sequence_pet.CURRVAL FROM DUAL;
    
    insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'happymom','푸들','소','없음',3,'여',13,null, null);
    insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'cloud','푸들','소','없음',3,'남',1,null, null);
    insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'any6103','푸들','소','없음',4,'여',1,null, null);
    insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'flower','꼬똥','중','없음',6,'남',3,null, null);
    insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'happy','말티푸','소','없음',4,'여',2,null, null);

--review

    --DROP table review;
    create table review(
        review_id VARCHAR(20) not null constraint review_id_pk primary key,--리뷰id
        OWNER_ID VARCHAR(50) not null constraint review_OWNER_ID_fk references OWNER(OWNER_ID),--견주id -- on delete cascade부모레코드가 삭제될 때 자식 레코드가 함께 삭제
        review_title VARCHAR(100) NOT NULL,--제목
        review_content VARCHAR(4000) NOT NULL,--내용
        review_readnum NUMBER DEFAULT 0,--조회수
        review_writeday DATE NOT NULL,--작성일
        review_pwd VARCHAR(50) NOT NULL--게시글 비밀번호
    );
    --select * from review; 

    --DROP SEQUENCE sequence_review;
    CREATE SEQUENCE sequence_review
    START WITH 1
    INCREMENT BY 1;
    --SELECT sequence_review.NEXTVAL FROM DUAL;
    --SELECT sequence_review.CURRVAL FROM DUAL;  
    
    insert into review values('review_id-'||sequence_review.NEXTVAL,'happymom','정말좋네요','해피가 좋아해요',0,sysdate,'1234');
    insert into review values('review_id-'||sequence_review.NEXTVAL,'cloud','구름이가좋아해요','좋네요',0,sysdate,'1234');
    insert into review values('review_id-'||sequence_review.NEXTVAL,'any6103','펫시터 좋아요','우리아기 안심하고 맡길수 있을거 같아요',0,sysdate,'1234');
    insert into review values('review_id-'||sequence_review.NEXTVAL,'flower','자주이용할거 같아요','마음이 놓이네요',0,sysdate,'1234');
    insert into review values('review_id-'||sequence_review.NEXTVAL,'happy','정말 친절해요','애기가좋아해요',0,sysdate,'1234');

--QA

    --DROP table qa;
    create table QA(
        QA_id VARCHAR(50) not null constraint qa_id_pk primary key,--QAid
        OWNER_ID VARCHAR(50) not null constraint qa_OWNER_ID_fk references OWNER(OWNER_ID),--견주id 
        QA_title VARCHAR(100) NOT NULL,--제목
        QA_content VARCHAR(4000) NOT NULL,--내용
        QA_writeday DATE NOT NULL,--작성일
        QA_readnum NUMBER DEFAULT 0,--조회수
        QA_pwd VARCHAR(50) NOT NULL--게시글 비밀번호
    );
    --select * from qa; 
    
    --DROP SEQUENCE sequence_qa;
    CREATE SEQUENCE sequence_qa
    START WITH 1
    INCREMENT BY 1;
    
    --SELECT sequence_qa.NEXTVAL FROM DUAL;
    --SELECT sequence_qa.CURRVAL FROM DUAL;

    insert into qa values('QA_id-'||sequence_qa.NEXTVAL,'happymom','펫시터의 신원확인 문의','펫시터 신원검증은 어떻게 이루어지나요?',sysdate,0,'1234');
    insert into qa values('QA_id-'||sequence_qa.NEXTVAL,'cloud','돌봄상태 확인문의','돌봄상태 확인은 어떻게 하나요?',sysdate,0,'1234');
    insert into qa values('QA_id-'||sequence_qa.NEXTVAL,'any6103','요금산정기준','요금산정기준이 궁금해요',sysdate,0,'1234');
    insert into qa values('QA_id-'||sequence_qa.NEXTVAL,'flower','펫시터등록문의','펫시터 등록에 돈을 내야하나요?',sysdate,0,'1234');
    insert into qa values('QA_id-'||sequence_qa.NEXTVAL,'happy','훈련문의','펫시터는 어떤교육을받나요?',sysdate,0,'1234');

--reply

    --DROP table reply;
    create table reply(
        reply_id VARCHAR(50) not null constraint reply_id_pk primary key,--댓글id
        QA_id VARCHAR(50) not null constraint  reply_qa_id_fk references QA(QA_id), --QAid
        OWNER_ID VARCHAR(50) not null constraint reply_OWNER_ID_fk references OWNER(OWNER_ID),--견주id 
        reply_content VARCHAR(4000) not null, --댓글내용
        reply_writeday DATE not null -- 작성일
    );
    --select * from reply; 
    --select * from qa;
    
    --DROP SEQUENCE sequence_reply;
    CREATE SEQUENCE sequence_reply
    START WITH 1
    INCREMENT BY 1;
    
    --SELECT sequence_reply.NEXTVAL FROM DUAL;
    --SELECT sequence_reply.CURRVAL FROM DUAL;  
    
    insert into reply values('reply_id-'||sequence_reply.NEXTVAL,'QA_id-1','happymom','펫시터의 신원확인은 서류로 하고있습니다',sysdate);
    insert into reply values('reply_id-'||sequence_reply.NEXTVAL,'QA_id-2','cloud','돌봄상태 확인은 시간별로 메세지를 보내드립니다',sysdate);
    insert into reply values('reply_id-'||sequence_reply.NEXTVAL,'QA_id-3','any6103','요금은 27000원부터 시작합니다',sysdate);
    insert into reply values('reply_id-'||sequence_reply.NEXTVAL,'QA_id-4','flower','펫시터등록은 무료입니다',sysdate);
    insert into reply values('reply_id-'||sequence_reply.NEXTVAL,'QA_id-5','happy','자사의 교육을 수료합니다',sysdate);

--SITTER_review

    --DROP table SITTER_review;
    create table SITTER_review(
        SITTER_review_id VARCHAR(50) not null constraint SITTER_review_id_pk primary key,--펫시터후기 id
        SITTER_ID VARCHAR(50) not null constraint SITTER_review_SITTER_ID_fk  references SITTER(SITTER_ID),--펫시터id
        OWNER_ID VARCHAR(50) not null constraint SITTER_review_OWNER_ID_fk references OWNER(OWNER_ID),--견주id
        SITTER_review_content VARCHAR(4000) NOT NULL,--내용
        SITTER_review_writeday DATE NOT NULL,--작성일
        SITTER_review_grade NUMBER NOT NULL--평점
    );
    --select * from SITTER_review; 

    --DROP SEQUENCE sequence_SITTER_review;
    CREATE SEQUENCE sequence_SITTER_review
    START WITH 1
    INCREMENT BY 1;
    
    --SELECT sequence_review.NEXTVAL FROM DUAL;
    --SELECT sequence_review.CURRVAL FROM DUAL;

    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'goodsitter','happymom','정말 친절해요',sysdate,5);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'bestsitter','cloud','믿고맡길수 있어요',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'kind','any6103','수제간식을 줘서 좋았어요',sysdate,3);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'happysis','flower','집이 가까워서 좋아요',sysdate,5);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'meme','happy','우리집에 와주니좋아요',sysdate,4);

--call

    --DROP table call;
    create table call(
        call_id VARCHAR(50) not null constraint call_id_pk primary key,--부르기id
        OWNER_ID VARCHAR(50) not null constraint call_OWNER_ID_fk references OWNER(OWNER_ID),--견주id
        SITTER_ID VARCHAR(50) null constraint call_SITTER_ID_fk  references SITTER(SITTER_ID),--펫시터id
        call_total_price NUMBER NOT NULL,--총가격
        CALL_COMMENT VARCHAR(200) NOT NULL,--코멘트
        CALL_RESERVATE_START DATE NOT NULL,--예약시작일
        CALL_RESERVATE_END DATE NOT NULL,--예약종료일
        CALL_WRITEDAY DATE NOT NULL,--작성일
        CALL_PETCOUNT NUMBER NOT NULL,--펫 마리수 
        OWNER_APPROVAL VARCHAR(5) NULL--견주승인여부
    );
    --select * from call; 
    
    --DROP SEQUENCE sequence_CALL;
    CREATE SEQUENCE sequence_CALL
    START WITH 1
    INCREMENT BY 1;
    
    --SELECT sequence_CALL.NEXTVAL FROM DUAL;
    --SELECT sequence_CALL.CURRVAL FROM DUAL;
    --truncate table CALL;
    
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'happymom',NULL,30000,'예민합니다','18-07-02','18-07-03',sysdate,1,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'cloud',NULL,100000,'활발합니다','2018-07-05','18-07-10','18-06-12',1,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'any6103',NULL,40000,'노견이에요','18-07-10','18-07-11',sysdate,1,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'flower',NULL,60000,'약을꼭 챙겨주세요','18-08-02','18-08-03',sysdate,2,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'happy',NULL,29000,'실외배변입니다','18-06-30','18-07-02',sysdate,1,NULL);
    
    --Delete CALL where OWNER_ID ='happymom';
    --truncate table CALL ;  


--SITTER_REQUEST

    --DROP table SITTER_REQUEST;
    Create table SITTER_REQUEST(
        SITTER_REQUEST_id VARCHAR(50) not null constraint SITTER_REQUEST_id_pk primary key,--펫시터가 신청
        call_id VARCHAR(50) not null constraint SITTER_REQUEST_call_id_fk references call(call_id),--부르기id
        OWNER_ID VARCHAR(50) not null constraint SITTER_REQUEST_OWNER_ID_fk references OWNER(OWNER_ID),--견주id
        SITTER_ID VARCHAR(50) null constraint SITTER_REQUEST_SITTER_ID_fk  references SITTER(SITTER_ID)--펫시터id
    );
    --select * from SITTER_REQUEST; 
    --select * from call; 
    
    --DROP SEQUENCE sequence_SITTER_REQUEST;
    CREATE SEQUENCE sequence_SITTER_REQUEST
    START WITH 1
    INCREMENT BY 1;
    --SELECT sequence_SITTER_REQUEST.NEXTVAL FROM DUAL;
    --SELECT sequence_SITTER_REQUEST.CURRVAL FROM DUAL;
    
    insert into SITTER_REQUEST values('SITTER_REQUEST_id-'||sequence_SITTER_REQUEST.NEXTVAL,'call_id-1','happymom','goodsitter');
    insert into SITTER_REQUEST values('SITTER_REQUEST_id-'||sequence_SITTER_REQUEST.NEXTVAL,'call_id-2','cloud','bestsitter');
    insert into SITTER_REQUEST values('SITTER_REQUEST_id-'||sequence_SITTER_REQUEST.NEXTVAL,'call_id-3','any6103','kind');
    insert into SITTER_REQUEST values('SITTER_REQUEST_id-'||sequence_SITTER_REQUEST.NEXTVAL,'call_id-4','flower','happysis');
    insert into SITTER_REQUEST values('SITTER_REQUEST_id-'||sequence_SITTER_REQUEST.NEXTVAL,'call_id-5','happy','meme');

--OWNER_REQUEST

    --DROP table OWNER_REQUEST;
    Create table OWNER_REQUEST(
        OWNER_REQUEST_id VARCHAR(50) not null constraint OWNER_REQUEST_id_pk primary key,--견주가 신청 ID
        OWNER_ID VARCHAR(50) not null constraint OWNER_REQUEST_OWNER_ID_fk references OWNER(OWNER_ID),--견주id
        SITTER_ID VARCHAR(50) null constraint OWNER_REQUEST_SITTER_ID_fk  references SITTER(SITTER_ID),--펫시터id
        OWNER_REQUEST_PRICE NUMBER  NOT NULL,--총가격
        OWNER_REQUEST_START DATE NOT NULL,--예약시작일
        OWNER_REQUEST_END DATE NOT NULL,--예약종료일
        OWNER_REQUEST_PETCOUNT NUMBER NOT NULL,--펫마리수
        SITTER_APPROVAL VARCHAR(5) NULL--펫시터승인여부
    );
    --select * from OWNER_REQUEST; 

    --DROP SEQUENCE sequence_OWNER_REQUEST;
    CREATE SEQUENCE sequence_OWNER_REQUEST
    START WITH 1
    INCREMENT BY 1;
    
    --SELECT sequence_OWNER_REQUEST.NEXTVAL FROM DUAL;
    --SELECT sequence_OWNER_REQUEST.CURRVAL FROM DUAL;

    insert into OWNER_REQUEST values('OWNER_REQUEST_id-'||sequence_OWNER_REQUEST.NEXTVAL,'happymom','goodsitter',27000,'18-07-02','18-07-03',1,NULL);
    insert into OWNER_REQUEST values('OWNER_REQUEST_id-'||sequence_OWNER_REQUEST.NEXTVAL,'cloud','bestsitter',35000,'18-06-28','18-06-29',2,NULL);
    insert into OWNER_REQUEST values('OWNER_REQUEST_id-'||sequence_OWNER_REQUEST.NEXTVAL,'any6103','kind',28000,'18-06-30','18-07-01',1,NULL);
    insert into OWNER_REQUEST values('OWNER_REQUEST_id-'||sequence_OWNER_REQUEST.NEXTVAL,'flower','happysis',50000,'18-07-02','18-07-05',1,NULL);
    insert into OWNER_REQUEST values('OWNER_REQUEST_id-'||sequence_OWNER_REQUEST.NEXTVAL,'happy','meme',30000,'18-07-02','18-07-03',1,NULL);

--OPTIONS

    --DROP table OPTIONS;
    create table OPTIONS( --OPTION으로는 테이블 생성 불가 (예약어)
        OPTION_ID VARCHAR(50) not null constraint OPTION_ID_pk primary key,--옵션id
        OPTION_NAME VARCHAR(50) not null --목록
    );
    --select * from OPTIONS;   
    
    --DROP SEQUENCE sequence_OPTIONS; 
    CREATE SEQUENCE sequence_OPTIONS
    START WITH 1
    INCREMENT BY 1;

    --SELECT sequence_OPTIONS.NEXTVAL FROM DUAL;
    --SELECT sequence_OPTIONS.CURRVAL FROM DUAL;

    INSERT INTO OPTIONS VALUES ('OPTION_ID-'||sequence_OPTIONS.NEXTVAL,'산책');
    INSERT INTO OPTIONS VALUES ('OPTION_ID-'||sequence_OPTIONS.NEXTVAL,'목욕');
    INSERT INTO OPTIONS VALUES ('OPTION_ID-'||sequence_OPTIONS.NEXTVAL,'노령견케어');
    INSERT INTO OPTIONS VALUES ('OPTION_ID-'||sequence_OPTIONS.NEXTVAL,'자격증보유');
    INSERT INTO OPTIONS VALUES ('OPTION_ID-'||sequence_OPTIONS.NEXTVAL,'응급처치');
    INSERT INTO OPTIONS VALUES ('OPTION_ID-'||sequence_OPTIONS.NEXTVAL,'대형견');
    INSERT INTO OPTIONS VALUES ('OPTION_ID-'||sequence_OPTIONS.NEXTVAL,'반려견없는곳');
    INSERT INTO OPTIONS VALUES ('OPTION_ID-'||sequence_OPTIONS.NEXTVAL,'집중케어');

--SITTER_OPTION

    --DROP table SITTER_OPTION;
    Create table SITTER_OPTION(
        SITTER_OPTION_id VARCHAR(50) not null constraint SITTER_OPTION_id_pk primary key,--펫시터옵션ID
        SITTER_ID VARCHAR(50) null constraint SITTER_OPTION_SITTER_ID_fk  references SITTER(SITTER_ID),--펫시터id
        OPTION_ID VARCHAR(50) not null constraint SITTER_OPTION_OPTION_ID_Fk references OPTIONS(OPTION_ID)--옵션id
    );
    --select * from SITTER_OPTION;   
    --select * from OPTIONs; 
    
    --DROP SEQUENCE sequence_SITTER_OPTION;
    CREATE SEQUENCE sequence_SITTER_OPTION
    START WITH 1
    INCREMENT BY 1;
    
    --SELECT sequence_SITTER_OPTION.NEXTVAL FROM DUAL;
    --SELECT sequence_SITTER_OPTION.CURRVAL FROM DUAL;

    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'goodsitter','OPTION_ID-1');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'goodsitter','OPTION_ID-2');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'goodsitter','OPTION_ID-3');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'goodsitter','OPTION_ID-4');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'goodsitter','OPTION_ID-5');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'goodsitter','OPTION_ID-6');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'goodsitter','OPTION_ID-7');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'goodsitter','OPTION_ID-8');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'bestsitter','OPTION_ID-1');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'bestsitter','OPTION_ID-2');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'bestsitter','OPTION_ID-3');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'kind','OPTION_ID-1');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'happysis','OPTION_ID-1');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'meme','OPTION_ID-1');
   
--DIARY

    --DROP table DIARY;
    Create table DIARY(
        DAILY_RECORD_ID  VARCHAR(50) not null constraint DAILY_RECORD_ID_pk primary key,--일지 ID
        SITTER_ID VARCHAR(50) null constraint DIARY_SITTER_ID_fk  references SITTER(SITTER_ID),--펫시터id
        OWNER_ID VARCHAR(50) not null constraint DIARY_OWNER_ID_fk references OWNER(OWNER_ID),--견주id
        DIARY_TITLE VARCHAR(100) not null ,--제목
        DIARY_CONTENT VARCHAR(4000) not null ,--내용
        DIARY_WRITEDAY DATE not null ,--작성일
        DIARY_PWD VARCHAR(50) not null ,--게시글 비밀번호
        DIARY_FNMAE VARCHAR(50) null ,--첨부사진이름
        DIARY_FSIZE NUMBER null --첨부사진크기
    );
    --select * from DIARY; 

    --DROP SEQUENCE sequence_DIARY;
    CREATE SEQUENCE sequence_DIARY
    START WITH 1
    INCREMENT BY 1;
    
    --SELECT sequence_DIARY.NEXTVAL FROM DUAL;
    --SELECT sequence_DIARY.CURRVAL FROM DUAL;

    insert into DIARY values('DAILY_RECORD_ID-'||sequence_DIARY.NEXTVAL,'goodsitter','happymom','산책을 다녀왔어요','탄천산책을 다녀왔어요',SYSDATE,'1234',NULL,NULL);
    insert into DIARY values('DAILY_RECORD_ID-'||sequence_DIARY.NEXTVAL,'bestsitter','cloud','순한아이에요','오늘은 강아지놀이터를 다녀왔어요',SYSDATE,'1234',NULL,NULL);
    insert into DIARY values('DAILY_RECORD_ID-'||sequence_DIARY.NEXTVAL,'kind','any6103','목욕을 했습니다','오늘은 요청하신 목욕을 했습니다',SYSDATE,'1234',NULL,NULL);
    insert into DIARY values('DAILY_RECORD_ID-'||sequence_DIARY.NEXTVAL,'happysis','flower','밥을잘 안먹어요','아직 적응이 필요한것 같습니다',SYSDATE,'1234',NULL,NULL);
    insert into DIARY values('DAILY_RECORD_ID-'||sequence_DIARY.NEXTVAL,'meme','happy','약을 잘 안먹어요','혹시 견주님이 약을 주는 노하우 있으신가요?',SYSDATE,'1234',NULL,NULL);

--SITTING_OPTION

    --DROP table SITTING_OPTION;
    create table SITTING_OPTION(
        SITTING_OPTION_ID VARCHAR(50) not null constraint SITTING_OPTION_ID_pk primary key,--펫시팅옵션id
        OPTION_ID VARCHAR(50) not null constraint SITTING_OPTION_OPTION_ID_Fk references OPTIONS(OPTION_ID),--옵션id
        REQUEST_ID VARCHAR(50) not null --부르기 맡기기 ID
    );
    --select * from SITTING_OPTION;   
    --select * from OPTIONS;
    --select * from owner_request;
    --select * from call;

    --DROP SEQUENCE sequence_SITTING_OPTION;
    CREATE SEQUENCE sequence_SITTING_OPTION
    START WITH 1
    INCREMENT BY 1;
    
    --SELECT sequence_SITTING_OPTION.NEXTVAL FROM DUAL;
    --SELECT sequence_SITTING_OPTION.CURRVAL FROM DUAL;

    INSERT INTO SITTING_OPTION VALUES ('SITTING_OPTION_ID-'||sequence_SITTING_OPTION.NEXTVAL,'OPTION_ID-1','OWNER_REQUEST_id-1');
    INSERT INTO SITTING_OPTION VALUES ('SITTING_OPTION_ID-'||sequence_SITTING_OPTION.NEXTVAL,'OPTION_ID-2','OWNER_REQUEST_id-1');
    INSERT INTO SITTING_OPTION VALUES ('SITTING_OPTION_ID-'||sequence_SITTING_OPTION.NEXTVAL,'OPTION_ID-1','OWNER_REQUEST_id-2');
    INSERT INTO SITTING_OPTION VALUES ('SITTING_OPTION_ID-'||sequence_SITTING_OPTION.NEXTVAL,'OPTION_ID-3','OWNER_REQUEST_id-2');
    INSERT INTO SITTING_OPTION VALUES ('SITTING_OPTION_ID-'||sequence_SITTING_OPTION.NEXTVAL,'OPTION_ID-1','OWNER_REQUEST_id-3');
    INSERT INTO SITTING_OPTION VALUES ('SITTING_OPTION_ID-'||sequence_SITTING_OPTION.NEXTVAL,'OPTION_ID-4','OWNER_REQUEST_id-3');
    INSERT INTO SITTING_OPTION VALUES ('SITTING_OPTION_ID-'||sequence_SITTING_OPTION.NEXTVAL,'OPTION_ID-1','OWNER_REQUEST_id-4');
    INSERT INTO SITTING_OPTION VALUES ('SITTING_OPTION_ID-'||sequence_SITTING_OPTION.NEXTVAL,'OPTION_ID-5','OWNER_REQUEST_id-4');
    INSERT INTO SITTING_OPTION VALUES ('SITTING_OPTION_ID-'||sequence_SITTING_OPTION.NEXTVAL,'OPTION_ID-1','OWNER_REQUEST_id-5');
    INSERT INTO SITTING_OPTION VALUES ('SITTING_OPTION_ID-'||sequence_SITTING_OPTION.NEXTVAL,'OPTION_ID-6','OWNER_REQUEST_id-5');
    INSERT INTO SITTING_OPTION VALUES ('SITTING_OPTION_ID-'||sequence_SITTING_OPTION.NEXTVAL,'OPTION_ID-1','call_id-1');
    INSERT INTO SITTING_OPTION VALUES ('SITTING_OPTION_ID-'||sequence_SITTING_OPTION.NEXTVAL,'OPTION_ID-7','call_id-1');
    INSERT INTO SITTING_OPTION VALUES ('SITTING_OPTION_ID-'||sequence_SITTING_OPTION.NEXTVAL,'OPTION_ID-1','call_id-2');
    INSERT INTO SITTING_OPTION VALUES ('SITTING_OPTION_ID-'||sequence_SITTING_OPTION.NEXTVAL,'OPTION_ID-8','call_id-2');
    INSERT INTO SITTING_OPTION VALUES ('SITTING_OPTION_ID-'||sequence_SITTING_OPTION.NEXTVAL,'OPTION_ID-1','call_id-3');
    INSERT INTO SITTING_OPTION VALUES ('SITTING_OPTION_ID-'||sequence_SITTING_OPTION.NEXTVAL,'OPTION_ID-4','call_id-3');
    INSERT INTO SITTING_OPTION VALUES ('SITTING_OPTION_ID-'||sequence_SITTING_OPTION.NEXTVAL,'OPTION_ID-1','call_id-4');
    INSERT INTO SITTING_OPTION VALUES ('SITTING_OPTION_ID-'||sequence_SITTING_OPTION.NEXTVAL,'OPTION_ID-5','call_id-4');
    INSERT INTO SITTING_OPTION VALUES ('SITTING_OPTION_ID-'||sequence_SITTING_OPTION.NEXTVAL,'OPTION_ID-1','call_id-5');
    INSERT INTO SITTING_OPTION VALUES ('SITTING_OPTION_ID-'||sequence_SITTING_OPTION.NEXTVAL,'OPTION_ID-7','call_id-5');
    
    --select distinct OPTION_ID as op_id
    --from SITTING_OPTION ;
    --select * from SITTING_OPTION; 

--ADMIN
    --DROP table ADMIN;
    create table ADMIN( 
        ADMIN_ID VARCHAR(20) not null constraint ADMIN_ID_pk primary key,--관리자id
        ADMIN_PASSWORD VARCHAR(20) not null--비밀번호
    );
    --select * from ADMIN;   

    INSERT INTO ADMIN VALUES ('ADMIN','1234');
    --delete ADMIN where admin_id='ADMIN2';
    --select admin_id as id , ADMIN_PASSWORD as pwd
    --from ADMIN

--NOTICE

    --DROP table NOTICE;
    create table NOTICE( 
        NOTICE_ID VARCHAR(50) not null constraint NOTICE_ID_pk primary key,--공지사항id
        NOTICE_TITLE VARCHAR(100) not null,--제목
        NOTICE_CONTENT VARCHAR(4000) not null,--내용
        NOTICE_WRITEDAY DATE not null,--작성일
        NOTICE_READNUM NUMBER not null,--조회수
        NOTICE_FNAME VARCHAR(50) null,--첨부사진이름
        NOTICE_FSIZE NUMBER null--첨부사진크기
       );
    --select * from NOTICE;   

    --DROP SEQUENCE sequence_NOTICE_ID;
    CREATE SEQUENCE sequence_NOTICE_ID
    START WITH 1
    INCREMENT BY 1;

    --SELECT sequence_NOTICE_ID.NEXTVAL FROM DUAL;
    --SELECT sequence_NOTICE_ID.CURRVAL FROM DUAL;

    INSERT INTO NOTICE VALUES ('NOTICE_ID-'||sequence_NOTICE_ID.NEXTVAL,'공지사항1','공지사항1',SYSDATE,0,NULL,NULL);
    INSERT INTO NOTICE VALUES ('NOTICE_ID-'||sequence_NOTICE_ID.NEXTVAL,'공지사항2','공지사항2',SYSDATE,0,NULL,NULL);
    INSERT INTO NOTICE VALUES ('NOTICE_ID-'||sequence_NOTICE_ID.NEXTVAL,'공지사항3','공지사항3',SYSDATE,0,NULL,NULL);
    INSERT INTO NOTICE VALUES ('NOTICE_ID-'||sequence_NOTICE_ID.NEXTVAL,'공지사항4','공지사항4',SYSDATE,0,NULL,NULL);
    INSERT INTO NOTICE VALUES ('NOTICE_ID-'||sequence_NOTICE_ID.NEXTVAL,'공지사항5','공지사항5',SYSDATE,0,NULL,NULL);

--SITTER_IMG

    --DROP table SITTER_IMG;   
    Create table SITTER_IMG(
        SITTER_IMG_ID VARCHAR(50) not null constraint SITTER_IMG_ID_pk primary key,--공지사항id
        SITTER_ID VARCHAR(50) not null constraint SITTER_IMG_SITTER_ID_fk  references SITTER(SITTER_ID),--펫시터id
        Sitter_img_name VARCHAR(50) null,
        Sitter_Img_URL VARCHAR(50) null
    );
    --select * from sitter_img;
    --select * from sitter;
        
    --DROP SEQUENCE sequence_SITTER_IMG_ID;
    CREATE SEQUENCE sequence_SITTER_IMG_ID
    START WITH 1
    INCREMENT BY 1;
    
    --SELECT sequence_SITTER_IMG_ID.NEXTVAL FROM DUAL;
    --SELECT sequence_SITTER_IMG_ID.CURRVAL FROM DUAL;
    
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'goodsitter',null,null);
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'goodsitter',null,null);
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'goodsitter',null,null);
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'goodsitter',null,null);
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'goodsitter',null,null);
    
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'bestsitter',null,null);
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'bestsitter',null,null);
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'bestsitter',null,null);
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'bestsitter',null,null);
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'bestsitter',null,null);
    
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'kind',null,null);
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'kind',null,null);
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'kind',null,null);
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'kind',null,null);
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'kind',null,null);
    
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'happysis',null,null);
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'happysis',null,null);
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'happysis',null,null);
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'happysis',null,null);
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'happysis',null,null);
    
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'meme',null,null);
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'meme',null,null);
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'meme',null,null);
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'meme',null,null);
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'meme',null,null);

COMMIT;
--ROLLBACK ;