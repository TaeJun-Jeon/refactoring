-- 새 테이블
CREATE TABLE 권한 (
	권한ID   <데이터 타입 없음> NOT NULL, -- 새 컬럼
	권한등급 <데이터 타입 없음> NULL      -- 새 컬럼2
);

-- 새 테이블
ALTER TABLE 권한
	ADD
		CONSTRAINT PK_권한 -- 새 테이블 기본키
		PRIMARY KEY (
			권한ID -- 새 컬럼
		);

-- 새 테이블2
CREATE TABLE admin (
	admin_id       VARCHAR(20) NOT NULL, -- 새 컬럼
	admin_password VARCHAR(20) NOT NULL  -- 새 컬럼2
);

-- 새 테이블2
ALTER TABLE admin
	ADD
		CONSTRAINT PK_admin -- 새 테이블2 기본키
		PRIMARY KEY (
			admin_id -- 새 컬럼
		);

-- 견주
CREATE TABLE owner (
	owner_id          VARCHAR(50)  NOT NULL, -- 새 컬럼
	owner_password    VARCHAR(20)  NOT NULL, -- 새 컬럼2
	owner_name        VARCHAR(20)  NOT NULL, -- 새 컬럼3
	owner_addr        VARCHAR(200) NOT NULL, -- 새 컬럼4
	owner_detail_addr VARCHAR(100) NOT NULL, -- 새 컬럼6
	owner_phone       VARCHAR(20)  NOT NULL, -- 새 컬럼5
	owner_email       VARCHAR(40)  NOT NULL  -- 새 컬럼8
);

-- 견주
ALTER TABLE owner
	ADD
		CONSTRAINT PK_owner -- 견주 기본키
		PRIMARY KEY (
			owner_id -- 새 컬럼
		);

-- 새 테이블4
CREATE TABLE sitter (
	sitter_id            VARCHAR(50)  NOT NULL, -- 새 컬럼
	sitter_password      VARCHAR(20)  NOT NULL, -- 새 컬럼3
	sitter_name          VARCHAR(20)  NOT NULL, -- 새 컬럼12
	sitter_phone         VARCHAR(20)  NOT NULL, -- 새 컬럼13
	sitter_email         VARCHAR(40)  NOT NULL, -- 새 컬럼14
	sitter_addr          VARCHAR(200) NOT NULL, -- 새 컬럼6
	sitter_detail_addr   VARCHAR(100) NOT NULL, -- 새 컬럼8
	sitter_introduce     VARCHAR(200) NOT NULL, -- 새 컬럼11
	sitter_grade         NUMBER       NOT NULL, -- 새 컬럼9
	sitter_certification VARCHAR(50)  NULL,     -- 새 컬럼4
	sitter_pet_amount    NUMBER       NOT NULL, -- 새 컬럼7
	sitter_basis_price   NUMBER       NOT NULL, -- 새 컬럼2
	sitter_permit        VARCHAR(5)   NULL      -- 새 컬럼5
);

-- 새 테이블4
ALTER TABLE sitter
	ADD
		CONSTRAINT PK_sitter -- 새 테이블4 기본키
		PRIMARY KEY (
			sitter_id -- 새 컬럼
		);

-- 새 테이블5
CREATE TABLE pet (
	pet_id      VARCHAR(50) NOT NULL, -- 새 컬럼
	owner_id    VARCHAR(50) NOT NULL, -- 새 컬럼6
	pet_species VARCHAR(20) NOT NULL, -- 새 컬럼2
	pet_size    VARCHAR(10) NOT NULL, -- 새 컬럼3
	pet_illness VARCHAR(50) NOT NULL, -- 새 컬럼4
	pet_weight  NUMBER      NOT NULL, -- 새 컬럼5
	pet_gender  VARCHAR(5)  NOT NULL, -- 새 컬럼9
	pet_age     NUMBER      NOT NULL, -- 새 컬럼10
	pet_fname   VARCHAR(50) NULL,     -- 새 컬럼7
	pet_fsize   NUMBER      NULL      -- 새 컬럼8
);

-- 새 테이블5
ALTER TABLE pet
	ADD
		CONSTRAINT PK_pet -- 새 테이블5 기본키
		PRIMARY KEY (
			pet_id,   -- 새 컬럼
			owner_id  -- 새 컬럼6
		);

-- 새 테이블6
CREATE TABLE options (
	option_id   VARCHAR(50)  NOT NULL, -- 새 컬럼
	option_name VARCHAR(100) NOT NULL  -- 새 컬럼8
);

-- 새 테이블6
ALTER TABLE options
	ADD
		CONSTRAINT PK_option -- 새 테이블6 기본키
		PRIMARY KEY (
			option_id -- 새 컬럼
		);

-- 새 테이블7
CREATE TABLE notice (
	notice_id       VARCHAR(50)    NOT NULL, -- 새 컬럼
	notice_title    VARCHAR(100)   NOT NULL, -- 새 컬럼2
	notice_content  VARCHAR(10000) NOT NULL, -- 새 컬럼3
	notice_writeday DATE           NOT NULL, -- 새 컬럼4
	notice_readnum  NUMBER         NOT NULL, -- 새 컬럼5
	notice_fname    VARCHAR(50)    NULL,     -- 새 컬럼6
	notice_fsize    NUMBER         NULL      -- 새 컬럼8
);

-- 새 테이블7
ALTER TABLE notice
	ADD
		CONSTRAINT PK_notice -- 새 테이블7 기본키
		PRIMARY KEY (
			notice_id -- 새 컬럼
		);

-- 새 테이블8
CREATE TABLE QA (
	QA_id       VARCHAR(50)    NOT NULL, -- 새 컬럼
	owner_id    VARCHAR(50)    NOT NULL, -- 새 컬럼8
	QA_title    VARCHAR(100)   NOT NULL, -- 새 컬럼2
	QA_content  VARCHAR(10000) NOT NULL, -- 새 컬럼3
	QA_writeday DATE           NOT NULL, -- 새 컬럼4
	QA_readnum  NUMBER         NOT NULL, -- 새 컬럼5
	QA_pwd      VARCHAR(50)    NOT NULL  -- 새 컬럼6
);

-- 새 테이블8
ALTER TABLE QA
	ADD
		CONSTRAINT PK_QA -- 새 테이블8 기본키
		PRIMARY KEY (
			QA_id,    -- 새 컬럼
			owner_id  -- 새 컬럼8
		);

-- 새 테이블9
CREATE TABLE reply (
	reply_id       VARCHAR(50)    NOT NULL, -- 새 컬럼
	QA_id          VARCHAR(50)    NOT NULL, -- 새 컬럼4
	owner_id       VARCHAR(50)    NOT NULL, -- 새 컬럼8
	reply_content  VARCHAR(10000) NOT NULL, -- 새 컬럼2
	reply_writeday DATE           NOT NULL  -- 새 컬럼3
);

-- 새 테이블9
ALTER TABLE reply
	ADD
		CONSTRAINT PK_reply -- 새 테이블9 기본키
		PRIMARY KEY (
			reply_id, -- 새 컬럼
			QA_id,    -- 새 컬럼4
			owner_id  -- 새 컬럼8
		);

-- 새 테이블10
CREATE TABLE review (
	review_id       VARCHAR(20)    NOT NULL, -- 새 컬럼
	owner_id        VARCHAR(50)    NOT NULL, -- 새 컬럼7
	review_title    VARCHAR(100)   NOT NULL, -- 새 컬럼3
	review_content  VARCHAR(10000) NOT NULL, -- 새 컬럼2
	review_readnum  NUMBER         NOT NULL, -- 새 컬럼4
	review_writeday DATE           NOT NULL, -- 새 컬럼5
	review_pwd      VARCHAR(50)    NOT NULL  -- 새 컬럼6
);

-- 새 테이블10
ALTER TABLE review
	ADD
		CONSTRAINT PK_review -- 새 테이블10 기본키
		PRIMARY KEY (
			review_id, -- 새 컬럼
			owner_id   -- 새 컬럼7
		);

-- 새 테이블11
CREATE TABLE sitter_review (
	sitter_review_id       VARCHAR(50)    NOT NULL, -- 새 컬럼2
	sitter_id              VARCHAR(50)    NOT NULL, -- 새 컬럼
	owner_id               VARCHAR(50)    NOT NULL, -- 새 컬럼3
	sitter_review_content  VARCHAR(10000) NOT NULL, -- 새 컬럼5
	sitter_review_writeday DATE           NOT NULL, -- 새 컬럼6
	sitter_review_grade    NUMBER         NOT NULL  -- 새 컬럼4
);

-- 새 테이블11
ALTER TABLE sitter_review
	ADD
		CONSTRAINT PK_sitter_review -- 새 테이블11 기본키
		PRIMARY KEY (
			sitter_review_id, -- 새 컬럼2
			sitter_id,        -- 새 컬럼
			owner_id          -- 새 컬럼3
		);

-- 새 테이블12
CREATE TABLE diary (
	daily_record_id  VARCHAR(50)    NOT NULL, -- 새 컬럼
	sitter_id        VARCHAR(50)    NOT NULL, -- 새 컬럼2
	call_id          VARCHAR(50)    NOT NULL, -- 새 컬럼3
	owner_id         VARCHAR(50)    NOT NULL, -- 새 컬럼9
	owner_request_id VARCHAR(50)    NOT NULL, -- 새 컬럼11
	diary_title      VARCHAR(100)   NOT NULL, -- 새 컬럼4
	diary_content    VARCHAR(10000) NOT NULL, -- 새 컬럼5
	diary_writeday   DATE           NOT NULL, -- 새 컬럼6
	diary_pwd        VARCHAR(50)    NOT NULL, -- 새 컬럼7
	diary_fname      VARCHAR(50)    NULL,     -- 새 컬럼8
	diary_fsize      NUMBER         NULL      -- 새 컬럼10
);

-- 새 테이블12
ALTER TABLE diary
	ADD
		CONSTRAINT PK_diary -- 새 테이블12 기본키
		PRIMARY KEY (
			daily_record_id,  -- 새 컬럼
			sitter_id,        -- 새 컬럼2
			call_id,          -- 새 컬럼3
			owner_id,         -- 새 컬럼9
			owner_request_id  -- 새 컬럼11
		);

-- 부르기
CREATE TABLE call (
	call_id              VARCHAR(50)  NOT NULL, -- 새 컬럼
	owner_id             VARCHAR(50)  NOT NULL, -- 새 컬럼3
	sitter_id            VARCHAR(50)  NULL,     -- 새 컬럼4
	call_total_price     NUMBER       NOT NULL, -- 새 컬럼2
	call_comment         VARCHAR(200) NOT NULL, -- 새 컬럼5
	call_reservate_start DATE         NOT NULL, -- 새 컬럼6
	call_reservate_end   DATE         NOT NULL, -- 새 컬럼9
	call_writeday        DATE         NOT NULL, -- 새 컬럼7
	call_petcount        NUMBER       NOT NULL, -- 새 컬럼10
	owner_ approval      VARCHAR(5)   NULL      -- 새 컬럼8
);

-- 부르기
ALTER TABLE call
	ADD
		CONSTRAINT PK_call -- 부르기 기본키
		PRIMARY KEY (
			call_id,  -- 새 컬럼
			owner_id  -- 새 컬럼3
		);

-- 새 테이블14
CREATE TABLE 부르기예약 (
	예약ID    <데이터 타입 없음> NOT NULL, -- 새 컬럼
	owner_id  VARCHAR(50)        NOT NULL, -- 새 컬럼3
	call_id   VARCHAR(50)        NOT NULL, -- 새 컬럼2
	sitter_id VARCHAR(50)        NOT NULL, -- 새 컬럼5
	수락여부  <데이터 타입 없음> NULL      -- 새 컬럼7
);

-- 새 테이블14
ALTER TABLE 부르기예약
	ADD
		CONSTRAINT PK_부르기예약 -- 새 테이블14 기본키
		PRIMARY KEY (
			예약ID,    -- 새 컬럼
			owner_id,  -- 새 컬럼3
			call_id,   -- 새 컬럼2
			sitter_id  -- 새 컬럼5
		);

-- 새 테이블15
CREATE TABLE 맡기기 (
	맡기기ID       <데이터 타입 없음> NOT NULL, -- 새 컬럼
	sitter_id      VARCHAR(50)        NOT NULL, -- 새 컬럼3
	owner_id       VARCHAR(50)        NULL,     -- 새 컬럼2
	펫시터승인여부 <데이터 타입 없음> NULL      -- 새 컬럼4
);

-- 새 테이블15
ALTER TABLE 맡기기
	ADD
		CONSTRAINT PK_맡기기 -- 새 테이블15 기본키
		PRIMARY KEY (
			맡기기ID,  -- 새 컬럼
			sitter_id  -- 새 컬럼3
		);

-- 새 테이블16
CREATE TABLE owner_request (
	owner_request_id       VARCHAR(50) NOT NULL, -- 새 컬럼
	owner_id               VARCHAR(50) NOT NULL, -- 새 컬럼5
	sitter_id              VARCHAR(50) NOT NULL, -- 새 컬럼2
	owner_request_price    NUMBER      NOT NULL, -- 새 컬럼6
	owner_request_start    DATE        NOT NULL, -- 새 컬럼3
	owner_request_end      DATE        NOT NULL, -- 새 컬럼4
	owner_request_petcount NUMBER      NOT NULL, -- 새 컬럼7
	sitter_ approval       VARCHAR(5)  NULL      -- 새 컬럼8
);

-- 새 테이블16
ALTER TABLE owner_request
	ADD
		CONSTRAINT PK_owner_request -- 새 테이블16 기본키
		PRIMARY KEY (
			owner_request_id, -- 새 컬럼
			owner_id,         -- 새 컬럼5
			sitter_id         -- 새 컬럼2
		);

-- 새 테이블17
CREATE TABLE 신고하기 (
	신고ID   <데이터 타입 없음> NOT NULL, -- 새 컬럼
	owner_id VARCHAR(50)        NOT NULL  -- 새 컬럼2
);

-- 새 테이블17
ALTER TABLE 신고하기
	ADD
		CONSTRAINT PK_신고하기 -- 새 테이블17 기본키
		PRIMARY KEY (
			신고ID,   -- 새 컬럼
			owner_id  -- 새 컬럼2
		);

-- 새 테이블18
CREATE TABLE sitter_option (
	sitter_option_id VARCHAR(50) NOT NULL, -- 새 컬럼
	sitter_id        VARCHAR(50) NOT NULL, -- 새 컬럼2
	option_id        VARCHAR(50) NOT NULL  -- 새 컬럼3
);

-- 새 테이블18
ALTER TABLE sitter_option
	ADD
		CONSTRAINT PK_sitter_option -- 새 테이블18 기본키
		PRIMARY KEY (
			sitter_option_id, -- 새 컬럼
			sitter_id,        -- 새 컬럼2
			option_id         -- 새 컬럼3
		);

-- 새 테이블19
CREATE TABLE 견주옵션 (
	견주옵션ID <데이터 타입 없음> NOT NULL, -- 새 컬럼
	owner_id   VARCHAR(50)        NOT NULL, -- 새 컬럼2
	option_id  VARCHAR(50)        NOT NULL  -- 새 컬럼3
);

-- 새 테이블19
ALTER TABLE 견주옵션
	ADD
		CONSTRAINT PK_견주옵션 -- 새 테이블19 기본키
		PRIMARY KEY (
			견주옵션ID, -- 새 컬럼
			owner_id,   -- 새 컬럼2
			option_id   -- 새 컬럼3
		);

-- 새 테이블20
CREATE TABLE sitter_request (
	sitter_request_id VARCHAR(50) NOT NULL, -- 새 컬럼
	call_id           VARCHAR(50) NOT NULL, -- 새 컬럼2
	owner_id          VARCHAR(50) NOT NULL, -- 새 컬럼3
	sitter_id         VARCHAR(50) NOT NULL  -- 새 컬럼4
);

-- 새 테이블20
ALTER TABLE sitter_request
	ADD
		CONSTRAINT PK_sitter_request -- 새 테이블20 기본키
		PRIMARY KEY (
			sitter_request_id, -- 새 컬럼
			call_id,           -- 새 컬럼2
			owner_id,          -- 새 컬럼3
			sitter_id          -- 새 컬럼4
		);

-- 새 테이블21
CREATE TABLE sitting_option (
	sitting_option_id VARCHAR(50) NOT NULL, -- 새 컬럼
	option_id         VARCHAR(50) NOT NULL, -- 새 컬럼4
	request_id        VARCHAR(50) NOT NULL, -- 새 컬럼8
	owner_request_id  VARCHAR(50) NOT NULL, -- 새 컬럼2
	owner_id          VARCHAR(50) NOT NULL, -- 새 컬럼5
	sitter_id         VARCHAR(50) NOT NULL, -- 새 컬럼3
	sitter_request_id VARCHAR(50) NOT NULL, -- 새 컬럼6
	call_id           VARCHAR(50) NOT NULL  -- 새 컬럼7
);

-- 새 테이블21
ALTER TABLE sitting_option
	ADD
		CONSTRAINT PK_sitting_option -- 새 테이블21 기본키
		PRIMARY KEY (
			sitting_option_id, -- 새 컬럼
			option_id,         -- 새 컬럼4
			owner_request_id,  -- 새 컬럼2
			owner_id,          -- 새 컬럼5
			sitter_id,         -- 새 컬럼3
			sitter_request_id, -- 새 컬럼6
			call_id            -- 새 컬럼7
		);

-- 새 테이블3
CREATE TABLE date (
	date_id <데이터 타입 없음> NOT NULL -- 새 컬럼
);

-- 새 테이블3
ALTER TABLE date
	ADD
		CONSTRAINT PK_date -- 새 테이블3 기본키
		PRIMARY KEY (
			date_id -- 새 컬럼
		);

-- 새 테이블5
ALTER TABLE pet
	ADD
		CONSTRAINT FK_owner_TO_pet -- 견주 -> 새 테이블5
		FOREIGN KEY (
			owner_id -- 새 컬럼6
		)
		REFERENCES owner ( -- 견주
			owner_id -- 새 컬럼
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 새 테이블8
ALTER TABLE QA
	ADD
		CONSTRAINT FK_owner_TO_QA -- 견주 -> 새 테이블8
		FOREIGN KEY (
			owner_id -- 새 컬럼8
		)
		REFERENCES owner ( -- 견주
			owner_id -- 새 컬럼
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 새 테이블9
ALTER TABLE reply
	ADD
		CONSTRAINT FK_QA_TO_reply -- 새 테이블8 -> 새 테이블9
		FOREIGN KEY (
			QA_id,    -- 새 컬럼4
			owner_id  -- 새 컬럼8
		)
		REFERENCES QA ( -- 새 테이블8
			QA_id,    -- 새 컬럼
			owner_id  -- 새 컬럼8
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 새 테이블10
ALTER TABLE review
	ADD
		CONSTRAINT FK_owner_TO_review -- 견주 -> 새 테이블10
		FOREIGN KEY (
			owner_id -- 새 컬럼7
		)
		REFERENCES owner ( -- 견주
			owner_id -- 새 컬럼
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 새 테이블11
ALTER TABLE sitter_review
	ADD
		CONSTRAINT FK_sitter_TO_sitter_review -- 새 테이블4 -> 새 테이블11
		FOREIGN KEY (
			sitter_id -- 새 컬럼
		)
		REFERENCES sitter ( -- 새 테이블4
			sitter_id -- 새 컬럼
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 새 테이블11
ALTER TABLE sitter_review
	ADD
		CONSTRAINT FK_owner_TO_sitter_review -- 견주 -> 새 테이블11
		FOREIGN KEY (
			owner_id -- 새 컬럼3
		)
		REFERENCES owner ( -- 견주
			owner_id -- 새 컬럼
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 새 테이블12
ALTER TABLE diary
	ADD
		CONSTRAINT FK_sitter_TO_diary -- 새 테이블4 -> 새 테이블12
		FOREIGN KEY (
			sitter_id -- 새 컬럼2
		)
		REFERENCES sitter ( -- 새 테이블4
			sitter_id -- 새 컬럼
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 새 테이블12
ALTER TABLE diary
	ADD
		CONSTRAINT FK_call_TO_diary -- 부르기 -> 새 테이블12
		FOREIGN KEY (
			call_id,  -- 새 컬럼3
			owner_id  -- 새 컬럼9
		)
		REFERENCES call ( -- 부르기
			call_id,  -- 새 컬럼
			owner_id  -- 새 컬럼3
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 새 테이블12
ALTER TABLE diary
	ADD
		CONSTRAINT FK_owner_request_TO_diary -- 새 테이블16 -> 새 테이블12
		FOREIGN KEY (
			owner_request_id, -- 새 컬럼11
			owner_id,         -- 새 컬럼9
			sitter_id         -- 새 컬럼2
		)
		REFERENCES owner_request ( -- 새 테이블16
			owner_request_id, -- 새 컬럼
			owner_id,         -- 새 컬럼5
			sitter_id         -- 새 컬럼2
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 부르기
ALTER TABLE call
	ADD
		CONSTRAINT FK_owner_TO_call -- 견주 -> 부르기
		FOREIGN KEY (
			owner_id -- 새 컬럼3
		)
		REFERENCES owner ( -- 견주
			owner_id -- 새 컬럼
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 부르기
ALTER TABLE call
	ADD
		CONSTRAINT FK_sitter_TO_call -- 새 테이블4 -> 부르기
		FOREIGN KEY (
			sitter_id -- 새 컬럼4
		)
		REFERENCES sitter ( -- 새 테이블4
			sitter_id -- 새 컬럼
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 새 테이블14
ALTER TABLE 부르기예약
	ADD
		CONSTRAINT FK_call_TO_부르기예약 -- 부르기 -> 새 테이블14
		FOREIGN KEY (
			call_id,  -- 새 컬럼2
			owner_id  -- 새 컬럼3
		)
		REFERENCES call ( -- 부르기
			call_id,  -- 새 컬럼
			owner_id  -- 새 컬럼3
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 새 테이블14
ALTER TABLE 부르기예약
	ADD
		CONSTRAINT FK_sitter_TO_부르기예약 -- 새 테이블4 -> 새 테이블14
		FOREIGN KEY (
			sitter_id -- 새 컬럼5
		)
		REFERENCES sitter ( -- 새 테이블4
			sitter_id -- 새 컬럼
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 새 테이블15
ALTER TABLE 맡기기
	ADD
		CONSTRAINT FK_sitter_TO_맡기기 -- 새 테이블4 -> 새 테이블15
		FOREIGN KEY (
			sitter_id -- 새 컬럼3
		)
		REFERENCES sitter ( -- 새 테이블4
			sitter_id -- 새 컬럼
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 새 테이블15
ALTER TABLE 맡기기
	ADD
		CONSTRAINT FK_owner_TO_맡기기 -- 견주 -> 새 테이블15
		FOREIGN KEY (
			owner_id -- 새 컬럼2
		)
		REFERENCES owner ( -- 견주
			owner_id -- 새 컬럼
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 새 테이블16
ALTER TABLE owner_request
	ADD
		CONSTRAINT FK_owner_TO_owner_request -- 견주 -> 새 테이블16
		FOREIGN KEY (
			owner_id -- 새 컬럼5
		)
		REFERENCES owner ( -- 견주
			owner_id -- 새 컬럼
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 새 테이블16
ALTER TABLE owner_request
	ADD
		CONSTRAINT FK_sitter_TO_owner_request -- 새 테이블4 -> 새 테이블16
		FOREIGN KEY (
			sitter_id -- 새 컬럼2
		)
		REFERENCES sitter ( -- 새 테이블4
			sitter_id -- 새 컬럼
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 새 테이블17
ALTER TABLE 신고하기
	ADD
		CONSTRAINT FK_owner_TO_신고하기 -- 견주 -> 새 테이블17
		FOREIGN KEY (
			owner_id -- 새 컬럼2
		)
		REFERENCES owner ( -- 견주
			owner_id -- 새 컬럼
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 새 테이블18
ALTER TABLE sitter_option
	ADD
		CONSTRAINT FK_sitter_TO_sitter_option -- 새 테이블4 -> 새 테이블18
		FOREIGN KEY (
			sitter_id -- 새 컬럼2
		)
		REFERENCES sitter ( -- 새 테이블4
			sitter_id -- 새 컬럼
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 새 테이블18
ALTER TABLE sitter_option
	ADD
		CONSTRAINT FK_option_TO_sitter_option -- 새 테이블6 -> 새 테이블18
		FOREIGN KEY (
			option_id -- 새 컬럼3
		)
		REFERENCES option ( -- 새 테이블6
			option_id -- 새 컬럼
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 새 테이블19
ALTER TABLE 견주옵션
	ADD
		CONSTRAINT FK_option_TO_견주옵션 -- 새 테이블6 -> 새 테이블19
		FOREIGN KEY (
			option_id -- 새 컬럼3
		)
		REFERENCES option ( -- 새 테이블6
			option_id -- 새 컬럼
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 새 테이블19
ALTER TABLE 견주옵션
	ADD
		CONSTRAINT FK_owner_TO_견주옵션 -- 견주 -> 새 테이블19
		FOREIGN KEY (
			owner_id -- 새 컬럼2
		)
		REFERENCES owner ( -- 견주
			owner_id -- 새 컬럼
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 새 테이블20
ALTER TABLE sitter_request
	ADD
		CONSTRAINT FK_call_TO_sitter_request -- 부르기 -> 새 테이블20
		FOREIGN KEY (
			call_id,  -- 새 컬럼2
			owner_id  -- 새 컬럼3
		)
		REFERENCES call ( -- 부르기
			call_id,  -- 새 컬럼
			owner_id  -- 새 컬럼3
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 새 테이블20
ALTER TABLE sitter_request
	ADD
		CONSTRAINT FK_sitter_TO_sitter_request -- 새 테이블4 -> 새 테이블20
		FOREIGN KEY (
			sitter_id -- 새 컬럼4
		)
		REFERENCES sitter ( -- 새 테이블4
			sitter_id -- 새 컬럼
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 새 테이블21
ALTER TABLE sitting_option
	ADD
		CONSTRAINT FK_owner_request_TO_sitting_option -- 새 테이블16 -> 새 테이블21
		FOREIGN KEY (
			owner_request_id, -- 새 컬럼2
			owner_id,         -- 새 컬럼5
			sitter_id         -- 새 컬럼3
		)
		REFERENCES owner_request ( -- 새 테이블16
			owner_request_id, -- 새 컬럼
			owner_id,         -- 새 컬럼5
			sitter_id         -- 새 컬럼2
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 새 테이블21
ALTER TABLE sitting_option
	ADD
		CONSTRAINT FK_option_TO_sitting_option -- 새 테이블6 -> 새 테이블21
		FOREIGN KEY (
			option_id -- 새 컬럼4
		)
		REFERENCES option ( -- 새 테이블6
			option_id -- 새 컬럼
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 새 테이블21
ALTER TABLE sitting_option
	ADD
		CONSTRAINT FK_sitter_request_TO_sitting_option -- 새 테이블20 -> 새 테이블21
		FOREIGN KEY (
			sitter_request_id, -- 새 컬럼6
			call_id,           -- 새 컬럼7
			owner_id,          -- 새 컬럼5
			sitter_id          -- 새 컬럼3
		)
		REFERENCES sitter_request ( -- 새 테이블20
			sitter_request_id, -- 새 컬럼
			call_id,           -- 새 컬럼2
			owner_id,          -- 새 컬럼3
			sitter_id          -- 새 컬럼4
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;