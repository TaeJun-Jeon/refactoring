
-------------------------------------------------
create table OWNER(
        OWNER_ID VARCHAR(50) not null constraint OWNER_ID_pk primary key,
        OWNER_PASSWORD VARCHAR(20) NOT NULL, 
        OWNER_NAME VARCHAR(20) NOT NULL, 
        OWNER_ADDR VARCHAR(200) NOT NULL,
        OWNER_DETAIL_ADDR VARCHAR(100) NOT NULL,
        OWNER_PHONE VARCHAR(20) NOT NULL,
        OWNER_EMAIL VARCHAR(40) NOT NULL, 
        OWNER_fname VARCHAR(50) NULL,
        OWNER_gender VARCHAR(5) NOT NULL 
    ); 
    
    insert into OWNER values('owner1','1234','ownername1','서울 강남구 강남대로 238',' 에이치스퀘어 엔동','010-1111-2222','abcd@naver.com','IMG_01.jpg','여');
    insert into OWNER values('owner2','1234','ownername2','서울 강남구 강남대로 240',' 에이치스퀘어 엔동','010-1111-2222','abcd@naver.com','IMG_02.jpg','남');
    insert into OWNER values('owner3','1234','ownername3','서울 강남구 강남대로 242',' 에이치스퀘어 엔동','010-1111-2222','abcd@naver.com','IMG_03.jpg','여');
    insert into OWNER values('owner4','1234','ownername4','서울 강남구 강남대로 246',' 에이치스퀘어 엔동','010-1111-2222','abcd@naver.com','IMG_04.jpg','남');
    insert into OWNER values('owner5','1234','ownername5','서울 강남구 강남대로 248',' 에이치스퀘어 엔동','010-1111-2222','abcd@naver.com','IMG_05.jpg','여');
    insert into OWNER values('owner6','1234','ownername6','서울 강남구 강남대로 250',' 에이치스퀘어 엔동','010-1111-2222','abcd@naver.com','IMG_06.jpg','남');
    insert into OWNER values('owner7','1234','ownername7','서울 강남구 강남대로 252',' 에이치스퀘어 엔동','010-1111-2222','abcd@naver.com','IMG_07.jpg','여');
    insert into OWNER values('owner8','1234','ownername8','서울 강남구 강남대로 254',' 에이치스퀘어 엔동','010-1111-2222','abcd@naver.com','IMG_08.jpg','남');
    insert into OWNER values('owner9','1234','ownername9','서울 강남구 강남대로 256',' 에이치스퀘어 엔동','010-1111-2222','abcd@naver.com','IMG_09.jpg','여');
    insert into OWNER values('owner10','1234','ownername10','서울 강남구 강남대로 262',' 에이치스퀘어 엔동','010-1111-2222','abcd@naver.com','IMG_10.jpg','남');
    insert into OWNER values('owner11','1234','ownername11','서울 강남구 강남대로 272',' 에이치스퀘어 엔동','010-1111-2222','abcd@naver.com','IMG_11.jpg','여');
    insert into OWNER values('owner12','1234','ownername12','서울 강남구 강남대로 276',' 에이치스퀘어 엔동','010-1111-2222','abcd@naver.com','IMG_12.jpg','남');
    insert into OWNER values('owner13','1234','ownername13','서울 강남구 강남대로 278',' 에이치스퀘어 엔동','010-1111-2222','abcd@naver.com','IMG_13.jpg','여');
    insert into OWNER values('owner14','1234','ownername14','서울 강남구 강남대로 280',' 에이치스퀘어 엔동','010-1111-2222','abcd@naver.com','IMG_14.jpg','남');
    insert into OWNER values('owner15','1234','ownername15','서울 강남구 강남대로 282',' 에이치스퀘어 엔동','010-1111-2222','abcd@naver.com','IMG_15.jpg','여');
    insert into OWNER values('owner16','1234','ownername16','서울 강남구 강남대로 284',' 에이치스퀘어 엔동','010-1111-2222','abcd@naver.com','IMG_16.jpg','남');
    insert into OWNER values('owner17','1234','ownername17','서울 강남구 강남대로 286',' 에이치스퀘어 엔동','010-1111-2222','abcd@naver.com','IMG_17.jpg','여');
    insert into OWNER values('owner18','1234','ownername18','서울 강남구 강남대로 292',' 에이치스퀘어 엔동','010-1111-2222','abcd@naver.com','IMG_18.jpg','남');
    insert into OWNER values('owner19','1234','ownername19','서울 강남구 강남대로 298',' 에이치스퀘어 엔동','010-1111-2222','abcd@naver.com','IMG_19.jpg','여');
    insert into OWNER values('owner20','1234','ownername20','서울 강남구 강남대로 302',' 에이치스퀘어 엔동','010-1111-2222','abcd@naver.com','IMG_20.jpg','남');
    insert into OWNER values('owner21','1234','ownername21','서울 강남구 강남대로 308',' 에이치스퀘어 엔동','010-1111-2222','abcd@naver.com','IMG_21.jpg','여');
    insert into OWNER values('owner22','1234','ownername22','서울 강남구 강남대로 310',' 에이치스퀘어 엔동','010-1111-2222','abcd@naver.com','IMG_22.jpg','남');
    insert into OWNER values('owner23','1234','ownername23','서울 강남구 강남대로 314',' 에이치스퀘어 엔동','010-1111-2222','abcd@naver.com','IMG_23.jpg','남');
    insert into OWNER values('owner24','1234','ownername24','서울 강남구 강남대로 318',' 에이치스퀘어 엔동','010-1111-2222','abcd@naver.com','IMG_24.jpg','남');
    insert into OWNER values('owner25','1234','ownername25','서울 강남구 강남대로 320',' 에이치스퀘어 엔동','010-1111-2222','abcd@naver.com','IMG_25.jpg','남');
    insert into OWNER values('owner26','1234','ownername26','서울 강남구 강남대로 324',' 에이치스퀘어 엔동','010-1111-2222','abcd@naver.com','IMG_26.jpg','남');
    insert into OWNER values('owner27','1234','ownername27','서울 강남구 강남대로 328',' 에이치스퀘어 엔동','010-1111-2222','abcd@naver.com','IMG_27.jpg','남');
    insert into OWNER values('owner28','1234','ownername28','서울 강남구 강남대로 330',' 에이치스퀘어 엔동','010-1111-2222','abcd@naver.com','IMG_28.jpg','남');
    insert into OWNER values('owner29','1234','ownername29','서울 강남구 강남대로 334',' 에이치스퀘어 엔동','010-1111-2222','abcd@naver.com','IMG_29.jpg','남');
    insert into OWNER values('owner30','1234','ownername30','서울 강남구 강남대로 338',' 에이치스퀘어 엔동','010-1111-2222','abcd@naver.com','IMG_30.jpg','남');
    insert into OWNER values('owner31','1234','ownername31','서울 강남구 강남대로 340',' 에이치스퀘어 엔동','010-1111-2222','abcd@naver.com','IMG_31.jpg','남');
   
    
create table SITTER(
        SITTER_ID VARCHAR(50) not null constraint SITTER_ID_pk primary key,
        SITTER_PASSWORD VARCHAR(20) NOT NULL,
        SITTER_NAME VARCHAR(20) NOT NULL,
        SITTER_PHONE VARCHAR(20) NOT NULL,
        SITTER_EMAIL VARCHAR(40) NOT NULL, 
        SITTER_ADDR VARCHAR(200) NOT NULL,
        SITTER_DETAIL_ADDR VARCHAR(100) NOT NULL, 
        SITTER_INTRODUCE VARCHAR(200) NOT NULL, 
        SITTER_GRADE NUMBER NOT NULL, 
        SITTER_CERTIFICATION VARCHAR(50) NULL,
        SITTER_PET_AMOUNT NUMBER NOT NULL,
        SITTER_BASIS_PRICE NUMBER NOT NULL,
        SITTER_PERMIT VARCHAR(5) NULL,
        SITTER_fname VARCHAR(50) NULL,
        Scertification_fname  VARCHAR(50) NULL,
        Sitter_gender VARCHAR(5) NOT NULL
    ); 
    insert into SITTER values('sitter1','1234','sittername1','010-2222-3333','abcd@naver.com','경기 수원시 영통구 광교로 32', '에이치스퀘어 엔동','샘플제목 1','5',null,1,30000,'Y','IMG_01.jpg',null,'여');
    insert into SITTER values('sitter2','1234','sittername2','010-2222-3333','abcd@naver.com','경기 수원시 영통구 광교로 66', '에이치스퀘어 엔동','샘플제목 2','4',null,1,35000,'Y','IMG_02.jpg',null,'남');
    insert into SITTER values('sitter3','1234','sittername3','010-2222-3333','abcd@naver.com','경기 수원시 영통구 광교로 105', '에이치스퀘어 엔동','샘플제목 3','3',null,1,34000,'Y','IMG_03.jpg',null,'여');
    insert into SITTER values('sitter4','1234','sittername4','010-2222-3333','abcd@naver.com','경기 수원시 영통구 광교로 107', '에이치스퀘어 엔동','샘플제목 4','2',null,1,38000,'Y','IMG_04.jpg',null,'남');
    insert into SITTER values('sitter5','1234','sittername5','010-2222-3333','abcd@naver.com','경기 수원시 영통구 광교로 109', '에이치스퀘어 엔동','샘플제목 5','1',null,1,37000,'Y','IMG_05.jpg',null,'여');
    insert into SITTER values('sitter6','1234','sittername6','010-2222-3333','abcd@naver.com','경기 수원시 영통구 광교로 114', '에이치스퀘어 엔동','샘플제목 6','3',null,1,36000,'Y','IMG_06.jpg',null,'남');
    insert into SITTER values('sitter7','1234','sittername7','010-2222-3333','abcd@naver.com','경기 수원시 영통구 광교로 116', '에이치스퀘어 엔동','샘플제목 7','2',null,1,36000,'Y','IMG_07.jpg',null,'남');
    insert into SITTER values('sitter8','1234','sittername8','010-2222-3333','abcd@naver.com','경기 수원시 영통구 광교로 145', '에이치스퀘어 엔동','샘플제목 8','4',null,1,38000,'Y','IMG_08.jpg',null,'여');
    insert into SITTER values('sitter9','1234','sittername9','010-2222-3333','abcd@naver.com','경기 수원시 영통구 광교로 146', '에이치스퀘어 엔동','샘플제목 9','2',null,1,42000,'Y','IMG_09.jpg',null,'남');
    insert into SITTER values('sitter10','1234','sittername10','010-2222-3333','abcd@naver.com','경기 수원시 영통구 광교로 147', '에이치스퀘어 엔동','샘플제목 10','3',null,1,32000,'Y','IMG_10.jpg',null,'여');
    insert into SITTER values('sitter11','1234','sittername11','010-2222-3333','abcd@naver.com','경기 수원시 영통구 광교로 152', '에이치스퀘어 엔동','샘플제목 11','4',null,1,41000,'Y','IMG_11.jpg',null,'여');
    insert into SITTER values('sitter12','1234','sittername12','010-2222-3333','abcd@naver.com','경기 수원시 영통구 광교로 156', '에이치스퀘어 엔동','샘플제목 12','5',null,1,50000,'Y','IMG_12.jpg',null,'남');
    insert into SITTER values('sitter13','1234','sittername13','010-2222-3333','abcd@naver.com','경기 수원시 영통구 광교로 164', '에이치스퀘어 엔동','샘플제목 13','3',null,1,29000,'Y','IMG_13.jpg',null,'여');
    insert into SITTER values('sitter14','1234','sittername14','010-2222-3333','abcd@naver.com','경기 수원시 영통구 광교로 182', '에이치스퀘어 엔동','샘플제목 14','4',null,1,25000,'Y','IMG_14.jpg',null,'남');
    insert into SITTER values('sitter15','1234','sittername15','010-2222-3333','abcd@naver.com','경기 수원시 영통구 광교로 191', '에이치스퀘어 엔동','샘플제목 15','1',null,1,29000,'Y','IMG_15.jpg',null,'여');
    insert into SITTER values('sitter16','1234','sittername16','010-2222-3333','abcd@naver.com','경기 수원시 영통구 광교로 286', '에이치스퀘어 엔동','샘플제목 16','5',null,1,30000,'Y','IMG_16.jpg',null,'남');
    insert into SITTER values('sitter17','1234','sittername17','010-2222-3333','abcd@naver.com','경기 수원시 영통구 광교로 327', '에이치스퀘어 엔동','샘플제목 17','3',null,1,31000,'Y','IMG_17.jpg',null,'여');
    insert into SITTER values('sitter18','1234','sittername18','010-2222-3333','abcd@naver.com','경기 수원시 영통구 광교로 374', '에이치스퀘어 엔동','샘플제목 18','5',null,1,33000,'Y','IMG_18.jpg',null,'남');
    insert into SITTER values('sitter19','1234','sittername19','010-2222-3333','abcd@naver.com','경기 성남시 분당구 대왕판교로 477', '에이치스퀘어 엔동','샘플제목 19','2',null,1,32000,'Y','IMG_19.jpg',null,'여');
    insert into SITTER values('sitter20','1234','sittername20','010-2222-3333','abcd@naver.com','경기 성남시 분당구 대왕판교로 6', '에이치스퀘어 엔동','샘플제목 20','2',null,1,33000,'Y','IMG_20.jpg',null,'남');
    insert into SITTER values('sitter21','1234','sittername21','010-2222-3333','abcd@naver.com','경기 성남시 분당구 대왕판교로 12', '에이치스퀘어 엔동','샘플제목 21','4',null,1,31000,'Y','IMG_21.jpg',null,'여');
    insert into SITTER values('sitter22','1234','sittername22','010-2222-3333','abcd@naver.com','경기 성남시 분당구 대왕판교로 15', '에이치스퀘어 엔동','샘플제목 22','4',null,1,33000,'Y','IMG_22.jpg',null,'남');
    
    insert into SITTER values('sitter23','1234','sittername22','010-2222-3333','abcd@naver.com','경기 성남시 분당구 대왕판교로 18', '에이치스퀘어 엔동','샘플제목 23','3',null,1,31000,null,'IMG_22.jpg',null,'남');
    insert into SITTER values('sitter24','1234','sittername22','010-2222-3333','abcd@naver.com','경기 성남시 분당구 대왕판교로 20', '에이치스퀘어 엔동','샘플제목 24','4',null,1,32000,null,'IMG_22.jpg',null,'남');
    insert into SITTER values('sitter25','1234','sittername22','010-2222-3333','abcd@naver.com','경기 성남시 분당구 대왕판교로 22', '에이치스퀘어 엔동','샘플제목 25','4',null,1,33000,null,'IMG_22.jpg',null,'남');
    insert into SITTER values('sitter26','1234','sittername22','010-2222-3333','abcd@naver.com','경기 성남시 분당구 대왕판교로 24', '에이치스퀘어 엔동','샘플제목 26','2',null,1,34000,null,'IMG_22.jpg',null,'남');
    insert into SITTER values('sitter27','1234','sittername22','010-2222-3333','abcd@naver.com','경기 성남시 분당구 대왕판교로 25', '에이치스퀘어 엔동','샘플제목 27','2',null,1,35000,null,'IMG_22.jpg',null,'남');
    insert into SITTER values('sitter28','1234','sittername22','010-2222-3333','abcd@naver.com','경기 성남시 분당구 대왕판교로 26', '에이치스퀘어 엔동','샘플제목 28','1',null,1,36000,null,'IMG_22.jpg',null,'남');


create table pet(
        pet_id VARCHAR(50) not null constraint pet_id_pk primary key,
        OWNER_ID VARCHAR(50) not null constraint pet_OWNER_ID_fk references OWNER(OWNER_ID),
        PET_NAME VARCHAR(20) NOT NULL, 
        pet_species VARCHAR(20) not null ,
        pet_size VARCHAR(10) not null,
        pet_illness VARCHAR(50) not null,
        pet_weight NUMBER not null,
        pet_gender VARCHAR(5) not null,
        pet_age NUMBER not null,
        pet_fname VARCHAR(50) null,
        pet_fsize NUMBER null
    );
    CREATE SEQUENCE sequence_pet
    START WITH 1
    INCREMENT BY 1;

    insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'owner1','pet1','푸들','소','없음',3,'남',3,null, null);
    insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'owner2','pet2','진돗개','대','없음',10,'여',5,null, null);
    insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'owner3','pet3','말티즈','소','없음',6,'남',3,null, null);
    insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'owner4','pet4','푸들','소','없음',3,'여',3,null, null);
    insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'owner5','pet5','시츄','중','없음',6,'남',4,null, null);
    insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'owner6','pet6','포메','소','없음',3,'여',11,null, null);
    insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'owner7','pet7','리트리버','소','없음',13,'남',5,null, null);
    insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'owner8','pet8','풍산개','대','없음',15,'여',8,null, null);
    insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'owner9','pet9','푸들','소','없음',3,'여',6,null, null);
    insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'owner10','pet10','푸들','소','없음',4,'남',3,null, null);
    insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'owner11','pet11','푸들','소','없음',3,'여',5,null, null);
    insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'owner12','pet12','푸들','소','없음',4,'여',6,null, null);
    insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'owner13','pet13','푸들','소','없음',3,'남',7,null, null);
    insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'owner14','pet14','푸들','소','없음',4,'여',8,null, null);
    insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'owner15','pet15','푸들','소','없음',3,'여',9,null, null);


create table review(
        review_id VARCHAR(20) not null constraint review_id_pk primary key,
        OWNER_ID VARCHAR(50) not null constraint review_OWNER_ID_fk references OWNER(OWNER_ID),
        review_title VARCHAR(100) NOT NULL,
        review_content VARCHAR(4000) NOT NULL,
        review_readnum NUMBER DEFAULT 0,
        review_writeday DATE NOT NULL,
        review_pwd VARCHAR(50) NOT NULL
    );
    
    CREATE SEQUENCE sequence_review
    START WITH 1
    INCREMENT BY 1;
    
    insert into review values('review_id-'||sequence_review.NEXTVAL,'owner1','정말좋네요','해피가 좋아해요',0,sysdate,'1234');
    insert into review values('review_id-'||sequence_review.NEXTVAL,'owner2','구름이가좋아해요','좋네요',0,sysdate,'1234');
    insert into review values('review_id-'||sequence_review.NEXTVAL,'owner3','펫시터 좋아요','우리아기 안심하고 맡길수 있을거 같아요',0,sysdate,'1234');
    insert into review values('review_id-'||sequence_review.NEXTVAL,'owner4','자주이용할거 같아요','마음이 놓이네요',0,sysdate,'1234');
    insert into review values('review_id-'||sequence_review.NEXTVAL,'owner5','정말 친절해요','애기가좋아해요',0,sysdate,'1234');

   select * from review; 

create table QA(
    QA_id VARCHAR(50) not null constraint qa_id_pk primary key,
    OWNER_ID VARCHAR(50) not null constraint qa_OWNER_ID_fk references OWNER(OWNER_ID),
    QA_title VARCHAR(100) NOT NULL,
    QA_content VARCHAR(4000) NOT NULL,
    QA_writeday DATE NOT NULL,
    QA_readnum NUMBER DEFAULT 0,
    QA_pwd VARCHAR(50) NOT NULL
    );

    CREATE SEQUENCE sequence_qa
    START WITH 1
    INCREMENT BY 1;
    
    insert into qa values('QA_id-'||sequence_qa.NEXTVAL,'owner1','펫시터의 신원확인 문의','펫시터 신원검증은 어떻게 이루어지나요?',sysdate,0,'1234');
    insert into qa values('QA_id-'||sequence_qa.NEXTVAL,'owner2','돌봄상태 확인문의','돌봄상태 확인은 어떻게 하나요?',sysdate,0,'1234');
    insert into qa values('QA_id-'||sequence_qa.NEXTVAL,'owner3','요금산정기준','요금산정기준이 궁금해요',sysdate,0,'1234');
    insert into qa values('QA_id-'||sequence_qa.NEXTVAL,'owner4','펫시터등록문의','펫시터 등록에 돈을 내야하나요?',sysdate,0,'1234');
    insert into qa values('QA_id-'||sequence_qa.NEXTVAL,'owner5','훈련문의','펫시터는 어떤교육을받나요?',sysdate,0,'1234');

    select * from qa; 
    
create table reply(
    reply_id VARCHAR(50) not null constraint reply_id_pk primary key,
    QA_id VARCHAR(50) not null constraint  reply_qa_id_fk references QA(QA_id),
  
    reply_content VARCHAR(4000) not null,
    reply_writeday DATE not null
    );
    CREATE SEQUENCE sequence_reply
    START WITH 1
    INCREMENT BY 1;
    
    insert into reply values('reply_id-'||sequence_reply.NEXTVAL,'QA_id-1','펫시터의 신원확인은 서류로 하고있습니다',sysdate);
    insert into reply values('reply_id-'||sequence_reply.NEXTVAL,'QA_id-2','돌봄상태 확인은 시간별로 메세지를 보내드립니다',sysdate);
    insert into reply values('reply_id-'||sequence_reply.NEXTVAL,'QA_id-3','요금은 27000원부터 시작합니다',sysdate);
    insert into reply values('reply_id-'||sequence_reply.NEXTVAL,'QA_id-4','펫시터등록은 무료입니다',sysdate);
    insert into reply values('reply_id-'||sequence_reply.NEXTVAL,'QA_id-5','자사의 교육을 수료합니다',sysdate);
    
    select * from reply; 

create table SITTER_review(
    SITTER_review_id VARCHAR(50) not null constraint SITTER_review_id_pk primary key,
    SITTER_ID VARCHAR(50) not null constraint SITTER_review_SITTER_ID_fk  references SITTER(SITTER_ID),
    OWNER_ID VARCHAR(50) not null constraint SITTER_review_OWNER_ID_fk references OWNER(OWNER_ID),
    SITTER_review_content VARCHAR(4000) NOT NULL,
    SITTER_review_writeday DATE NOT NULL,
    SITTER_review_grade NUMBER NOT NULL
    );
    
    CREATE SEQUENCE sequence_SITTER_review
    START WITH 1
    INCREMENT BY 1;
    
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'sitter1','owner1','정말 친절해요',sysdate,5);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'sitter1','owner2',' 아이랑 잘 놀아줘요',sysdate,5);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'sitter1','owner3','산책을 정말 잘해주세요',sysdate,5);    
    
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'sitter2','owner4','믿고맡길수 있어요',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'sitter2','owner5','사진과 상태를 수시로 보내줘서 좋았어요',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'sitter2','owner6','아이가d 좋아해요',sysdate,4);
    
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'sitter3','owner7','수제간식을 줘서 좋았어요',sysdate,3);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'sitter3','owner8','정말 친절해요',sysdate,3);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'sitter3','owner9','뒷처리도 깔끔해요',sysdate,3);
    
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'sitter4','owner10','집이 가까워서 좋아요',sysdate,5);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'sitter4','owner11','수제간식을 줘서 좋았어요',sysdate,5);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'sitter4','owner12','아이가 좋아해요',sysdate,5);
    
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'sitter5','owner13','아이랑 잘 놀아줘요',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'sitter5','owner14','믿고맡길수 있어요',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'sitter5','owner15','사진과 상태를 수시로 보내줘서 좋았어요',sysdate,4);
    

create table call(
        call_id VARCHAR(50) not null constraint call_id_pk primary key,
        OWNER_ID VARCHAR(50) not null constraint call_OWNER_ID_fk references OWNER(OWNER_ID),
        SITTER_ID VARCHAR(50) null constraint call_SITTER_ID_fk  references SITTER(SITTER_ID),
        call_total_price NUMBER NOT NULL,
        CALL_COMMENT VARCHAR(200) NOT NULL,
        CALL_RESERVATE_START DATE NOT NULL,
        CALL_RESERVATE_END DATE NOT NULL,
        CALL_WRITEDAY DATE NOT NULL,
        CALL_PETCOUNT NUMBER NOT NULL,
        OWNER_APPROVAL VARCHAR(5) NULL,
        CALL_PAYMENT_STATE VARCHAR(20) NULL
    );
    select * from call;
    CREATE SEQUENCE sequence_CALL
    START WITH 1
    INCREMENT BY 1;
    
Create table SITTER_REQUEST(
        SITTER_REQUEST_id VARCHAR(50) not null constraint SITTER_REQUEST_id_pk primary key,
        call_id VARCHAR(50) not null constraint SITTER_REQUEST_call_id_fk references call(call_id),
        OWNER_ID VARCHAR(50) not null constraint SITTER_REQUEST_OWNER_ID_fk references OWNER(OWNER_ID),
        SITTER_ID VARCHAR(50) null constraint SITTER_REQUEST_SITTER_ID_fk  references SITTER(SITTER_ID),
        OWNER_APPROVAL VARCHAR(5) NULL
    );
    
    CREATE SEQUENCE sequence_SITTER_REQUEST
    START WITH 1
    INCREMENT BY 1;
    
Create table OWNER_REQUEST(
        OWNER_REQUEST_id VARCHAR(50) not null constraint OWNER_REQUEST_id_pk primary key,
        OWNER_ID VARCHAR(50) not null constraint OWNER_REQUEST_OWNER_ID_fk references OWNER(OWNER_ID),
        SITTER_ID VARCHAR(50) null constraint OWNER_REQUEST_SITTER_ID_fk  references SITTER(SITTER_ID),
        OWNER_REQUEST_PRICE NUMBER  NOT NULL,
        OWNER_REQUEST_START DATE NOT NULL,
        OWNER_REQUEST_END DATE NOT NULL,
        OWNER_REQUEST_PETCOUNT NUMBER NOT NULL,
        SITTER_APPROVAL VARCHAR(5) NULL,
        REQUEST_PAYMENT_STATE VARCHAR(20) NULL
    );
    
    CREATE SEQUENCE sequence_OWNER_REQUEST
    START WITH 1
    INCREMENT BY 1;
    
    
create table OPTIONS(
    OPTION_ID VARCHAR(50) not null constraint OPTION_ID_pk primary key,
    OPTION_NAME VARCHAR(50) not null 
    );
    
    CREATE SEQUENCE sequence_OPTIONS
    START WITH 1
    INCREMENT BY 1;
    
    INSERT INTO OPTIONS VALUES ('OPTION_ID-'||sequence_OPTIONS.NEXTVAL,'산책');
    INSERT INTO OPTIONS VALUES ('OPTION_ID-'||sequence_OPTIONS.NEXTVAL,'목욕');
    INSERT INTO OPTIONS VALUES ('OPTION_ID-'||sequence_OPTIONS.NEXTVAL,'노령견케어');
    INSERT INTO OPTIONS VALUES ('OPTION_ID-'||sequence_OPTIONS.NEXTVAL,'자격증보유');
    INSERT INTO OPTIONS VALUES ('OPTION_ID-'||sequence_OPTIONS.NEXTVAL,'응급처치');
    INSERT INTO OPTIONS VALUES ('OPTION_ID-'||sequence_OPTIONS.NEXTVAL,'대형견');
    INSERT INTO OPTIONS VALUES ('OPTION_ID-'||sequence_OPTIONS.NEXTVAL,'반려견없는곳');
    INSERT INTO OPTIONS VALUES ('OPTION_ID-'||sequence_OPTIONS.NEXTVAL,'집중케어');
    

Create table SITTER_OPTION(
    SITTER_OPTION_id VARCHAR(50) not null constraint SITTER_OPTION_id_pk primary key,
    SITTER_ID VARCHAR(50) null constraint SITTER_OPTION_SITTER_ID_fk  references SITTER(SITTER_ID),
    OPTION_ID VARCHAR(50) not null constraint SITTER_OPTION_OPTION_ID_Fk references OPTIONS(OPTION_ID)
    );
    
    CREATE SEQUENCE sequence_SITTER_OPTION
    START WITH 1
    INCREMENT BY 1;
    
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter1','OPTION_ID-1');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter1','OPTION_ID-2');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter1','OPTION_ID-3');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter1','OPTION_ID-4');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter1','OPTION_ID-5');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter1','OPTION_ID-6');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter1','OPTION_ID-7');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter1','OPTION_ID-8');
    
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter2','OPTION_ID-1');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter2','OPTION_ID-2');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter2','OPTION_ID-3');
    
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter3','OPTION_ID-1');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter4','OPTION_ID-1');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter5','OPTION_ID-1');
    
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter6','OPTION_ID-1');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter6','OPTION_ID-2');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter6','OPTION_ID-3');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter6','OPTION_ID-4');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter6','OPTION_ID-5');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter6','OPTION_ID-6');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter6','OPTION_ID-7');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter6','OPTION_ID-8');
    
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter7','OPTION_ID-1');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter7','OPTION_ID-2');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter7','OPTION_ID-3');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter7','OPTION_ID-4');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter7','OPTION_ID-5');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter7','OPTION_ID-6');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter7','OPTION_ID-7');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter7','OPTION_ID-8');
    
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter9','OPTION_ID-7');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter10','OPTION_ID-1');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter11','OPTION_ID-3');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter12','OPTION_ID-1');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter13','OPTION_ID-3');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter14','OPTION_ID-1');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter15','OPTION_ID-3');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter16','OPTION_ID-1');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter17','OPTION_ID-5');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter18','OPTION_ID-1');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter19','OPTION_ID-3');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter20','OPTION_ID-4');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter21','OPTION_ID-5');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter22','OPTION_ID-4');
 
    select * from SITTER_OPTION; 
    

Create table DIARY(
    DAILY_ID  VARCHAR(50) not null constraint DAILY_RECORD_ID_pk primary key,--일지 ID
    SITTER_ID VARCHAR(50) null constraint DIARY_SITTER_ID_fk  references SITTER(SITTER_ID),--펫시터id
    SITTING_ID VARCHAR(50) not null, --부르기/맡기기 ID
    DIARY_TITLE VARCHAR(100) not null ,--제목
    DIARY_CONTENT VARCHAR(4000) not null ,--내용
    DIARY_WRITEDAY DATE not null ,--작성일
    DIARY_PWD VARCHAR(50) not null ,--게시글 비밀번호
    DIARY_FNAME VARCHAR(50) null
);
    CREATE SEQUENCE sequence_DIARY
    START WITH 1
    INCREMENT BY 1;
    
--    insert into DIARY values('DAILY_ID-'||sequence_DIARY.NEXTVAL,'goodsitter','OWNER_REQUEST_id-1','산책을 다녀왔어요','탄천산책을 다녀왔어요',SYSDATE,'1234','a.jpg,b.jpg,c.jpg');
--    insert into DIARY values('DAILY_ID-'||sequence_DIARY.NEXTVAL,'goodsitter','OWNER_REQUEST_id-1','목욕을 했습니다','오늘은 요청하신 목욕을 했습니다',SYSDATE,'1234','d.jpg,e.jpg');
--    insert into DIARY values('DAILY_ID-'||sequence_DIARY.NEXTVAL,'goodsitter','OWNER_REQUEST_id-1','밥을잘 안먹어요','아직 적응이 필요한것 같습니다',SYSDATE,'1234','f.jpg,g.jpg,h.jpg');
--    
--    insert into DIARY values('DAILY_ID-'||sequence_DIARY.NEXTVAL,'bestsitter','OWNER_REQUEST_id-2','순한아이에요','오늘은 강아지놀이터를 다녀왔어요',SYSDATE,'1234','i.jpg,j.jpg,k.jpg');
--    insert into DIARY values('DAILY_ID-'||sequence_DIARY.NEXTVAL,'kind','OWNER_REQUEST_id-12','목욕을 했습니다','오늘은 요청하신 목욕을 했습니다',SYSDATE,'1234','a.jpg,b.jpg,c.jpg');
--    insert into DIARY values('DAILY_ID-'||sequence_DIARY.NEXTVAL,'happysis','OWNER_REQUEST_id-13','밥을잘 안먹어요','아직 적응이 필요한것 같습니다',SYSDATE,'1234','d.jpg,e.jpg');
--    insert into DIARY values('DAILY_ID-'||sequence_DIARY.NEXTVAL,'meme','OWNER_REQUEST_id-16','약을 잘 안먹어요','혹시 견주님이 약을 주는 노하우 있으신가요?',SYSDATE,'1234','f.jpg,g.jpg');
--
--    insert into DIARY values('DAILY_ID-'||sequence_DIARY.NEXTVAL,'goodsitter','call_id-15','산책을 다녀왔어요','탄천산책을 다녀왔어요',SYSDATE,'1234','i.jpg,j.jpg');
--    insert into DIARY values('DAILY_ID-'||sequence_DIARY.NEXTVAL,'goodsitter','call_id-15','목욕을 했습니다','오늘은 요청하신 목욕을 했습니다',SYSDATE,'1234','a.jpg,b.jpg,c.jpg');
--    insert into DIARY values('DAILY_ID-'||sequence_DIARY.NEXTVAL,'goodsitter','call_id-15','밥을잘 안먹어요','아직 적응이 필요한것 같습니다',SYSDATE,'1234','f.jpg,g.jpg,d.jpg');


create table SITTING_OPTION(
    SITTING_OPTION_ID VARCHAR(50) not null constraint SITTING_OPTION_ID_pk primary key,
    OPTION_ID VARCHAR(50) not null constraint SITTING_OPTION_OPTION_ID_Fk references OPTIONS(OPTION_ID),
    sitting_id VARCHAR(50) not null
    );
    
    CREATE SEQUENCE sequence_SITTING_OPTION
    START WITH 1
    INCREMENT BY 1;
 
    
create table ADMIN( 
    ADMIN_ID VARCHAR(20) not null constraint ADMIN_ID_pk primary key,
    ADMIN_PASSWORD VARCHAR(20) not null
);

    INSERT INTO ADMIN VALUES ('ADMIN','1234');
    
create table NOTICE( 
    NOTICE_ID VARCHAR(50) not null constraint NOTICE_ID_pk primary key,
    NOTICE_TITLE VARCHAR(100) not null,
    NOTICE_CONTENT VARCHAR(4000) not null,
    NOTICE_WRITEDAY DATE not null,
    NOTICE_READNUM NUMBER not null,
    NOTICE_FNAME VARCHAR(50) null,
    NOTICE_FSIZE NUMBER null
   );
   
    CREATE SEQUENCE sequence_NOTICE_ID
    START WITH 1
    INCREMENT BY 1;
    
    INSERT INTO NOTICE VALUES ('NOTICE_ID-'||sequence_NOTICE_ID.NEXTVAL,'공지사항1','공지사항1',SYSDATE,0,NULL,NULL);
    INSERT INTO NOTICE VALUES ('NOTICE_ID-'||sequence_NOTICE_ID.NEXTVAL,'공지사항2','공지사항2',SYSDATE,0,NULL,NULL);
    INSERT INTO NOTICE VALUES ('NOTICE_ID-'||sequence_NOTICE_ID.NEXTVAL,'공지사항3','공지사항3',SYSDATE,0,NULL,NULL);
    INSERT INTO NOTICE VALUES ('NOTICE_ID-'||sequence_NOTICE_ID.NEXTVAL,'공지사항4','공지사항4',SYSDATE,0,NULL,NULL);
    INSERT INTO NOTICE VALUES ('NOTICE_ID-'||sequence_NOTICE_ID.NEXTVAL,'공지사항5','공지사항5',SYSDATE,0,NULL,NULL);

    select * from NOTICE;   
    
Create table SITTER_IMG(
    SITTER_IMG_ID VARCHAR(50) not null constraint SITTER_IMG_ID_pk primary key,
    SITTER_ID VARCHAR(50) not null constraint SITTER_IMG_SITTER_ID_fk  references SITTER(SITTER_ID),
    Sitter_img_name VARCHAR(50) null,
    Sitter_Img_URL VARCHAR(50) null
    );
    
    CREATE SEQUENCE sequence_SITTER_IMG_ID
    START WITH 1
    INCREMENT BY 1;
    
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'sitter1',null,'1.PNG');
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'sitter1',null,'2.jpg');
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'sitter1',null,'3.jpg');
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'sitter1',null,'4.jpg');
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'sitter1',null,'5.jpg');
    
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'sitter2',null,'1.PNG');
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'sitter2',null,'2.jpg');
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'sitter2',null,'3.jpg');
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'sitter2',null,'4.jpg');
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'sitter2',null,'5.jpg');
    
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'sitter3',null,'1.PNG');
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'sitter3',null,'2.jpg');
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'sitter3',null,'3.jpg');
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'sitter3',null,'4.jpg');
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'sitter3',null,'5.jpg');
    
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'sitter4',null,'1.PNG');
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'sitter4',null,'2.jpg');
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'sitter4',null,'3.jpg');
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'sitter4',null,'4.jpg');
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'sitter4',null,'5.jpg');
    
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'sitter5',null,'1.PNG');
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'sitter5',null,'2.jpg');
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'sitter5',null,'3.jpg');
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'sitter5',null,'4.jpg');
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'sitter5',null,'5.jpg');
    
    select * from sitter_img;

CREATE TABLE AUTHORITIES(
       USER_ID VARCHAR2(100) NOT NULL, /* ID*/
       ROLE VARCHAR(30) NOT NULL,    
       PASSWORD VARCHAR(30) NULL,
       USER_NAME VARCHAR(30) NULL,
       CONSTRAINT AUTHORITIES_PK PRIMARY KEY(USER_ID,ROLE)
    );
    select * from AUTHORITIES;
    select * from OWNER;
    select * from SITTER;
    
    insert into AUTHORITIES VALUES ('ADMIN','ADMIN','1234','관리자');
    
    insert into AUTHORITIES VALUES ('owner1','OWNER','1234','ownername1');
    insert into AUTHORITIES VALUES ('owner2','OWNER','1234','ownername2');
    insert into AUTHORITIES VALUES ('owner3','OWNER','1234','ownername3');
    insert into AUTHORITIES VALUES ('owner4','OWNER','1234','ownername4');
    insert into AUTHORITIES VALUES ('owner5','OWNER','1234','ownername5');
    insert into AUTHORITIES VALUES ('owner6','OWNER','1234','ownername6');
    insert into AUTHORITIES VALUES ('owner7','OWNER','1234','ownername7');
    insert into AUTHORITIES VALUES ('owner8','OWNER','1234','ownername8');
    insert into AUTHORITIES VALUES ('owner9','OWNER','1234','ownername9');
    insert into AUTHORITIES VALUES ('owner10','OWNER','1234','ownername10');
    insert into AUTHORITIES VALUES ('owner11','OWNER','1234','ownername11');
    insert into AUTHORITIES VALUES ('owner12','OWNER','1234','ownername12');
    insert into AUTHORITIES VALUES ('owner13','OWNER','1234','ownername13');
    insert into AUTHORITIES VALUES ('owner14','OWNER','1234','ownername14');
    insert into AUTHORITIES VALUES ('owner15','OWNER','1234','ownername15');
    insert into AUTHORITIES VALUES ('owner16','OWNER','1234','ownername16');
    insert into AUTHORITIES VALUES ('owner17','OWNER','1234','ownername17');
    insert into AUTHORITIES VALUES ('owner18','OWNER','1234','ownername18');
    insert into AUTHORITIES VALUES ('owner19','OWNER','1234','ownername19');
    
    
    insert into AUTHORITIES VALUES ('sitter1','SITTER','1234','sittername1');
    insert into AUTHORITIES VALUES ('sitter2','SITTER','1234','sittername2');
    insert into AUTHORITIES VALUES ('sitter3','SITTER','1234','sittername3');
    insert into AUTHORITIES VALUES ('sitter4','SITTER','1234','sittername4');
    insert into AUTHORITIES VALUES ('sitter5','SITTER','1234','sittername5');
    insert into AUTHORITIES VALUES ('sitter6','SITTER','1234','sittername6');
    insert into AUTHORITIES VALUES ('sitter7','SITTER','1234','sittername7');
    insert into AUTHORITIES VALUES ('sitter8','SITTER','1234','sittername8');
    insert into AUTHORITIES VALUES ('sitter9','SITTER','1234','sittername9');
    insert into AUTHORITIES VALUES ('sitter10','SITTER','1234','sittername10');
    insert into AUTHORITIES VALUES ('sitter11','SITTER','1234','sittername11');
    insert into AUTHORITIES VALUES ('sitter12','SITTER','1234','sittername12');
    insert into AUTHORITIES VALUES ('sitter13','SITTER','1234','sittername13');
    insert into AUTHORITIES VALUES ('sitter14','SITTER','1234','sittername14');
    insert into AUTHORITIES VALUES ('sitter15','SITTER','1234','sittername15');
    insert into AUTHORITIES VALUES ('sitter16','SITTER','1234','sittername16');
    insert into AUTHORITIES VALUES ('sitter17','SITTER','1234','sittername17');
    insert into AUTHORITIES VALUES ('sitter18','SITTER','1234','sittername18');
    insert into AUTHORITIES VALUES ('sitter19','SITTER','1234','sittername19');
    


COMMIT;

