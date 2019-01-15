-- 이메일
DROP TABLE IF EXISTS AUTH RESTRICT;

-- 회원
DROP TABLE IF EXISTS MEMBER RESTRICT;

-- 게시판 리스트
DROP TABLE IF EXISTS BOARD_LIST RESTRICT;

-- 즐겨찾기
DROP TABLE IF EXISTS FAVORITE RESTRICT;

-- 전시회
DROP TABLE IF EXISTS BOARD_EXHIBITION RESTRICT;

-- 결제 내역
DROP TABLE IF EXISTS PAYMENT RESTRICT;

-- 게시판
DROP TABLE IF EXISTS BOARD RESTRICT;

-- 후기
DROP TABLE IF EXISTS REVIEW RESTRICT;

-- 공지사항 게시판
DROP TABLE IF EXISTS BOARD_NOTICE RESTRICT;

-- 파일
DROP TABLE IF EXISTS FILE RESTRICT;

-- 인증
CREATE TABLE AUTH (
   ID       INTEGER       NOT NULL COMMENT '아이디', -- 아이디
   AUTHKEY   VARCHAR(200) NOT NULL COMMENT '인증번호', -- 인증번호
   FINALDATE DATETIME     NOT NULL COMMENT '인증키 생성시간' -- 인증키 생성시간
)
COMMENT '인증';

-- 회원
CREATE TABLE MEMBER (
   MNO       INTEGER      NOT NULL COMMENT '회원 번호', -- 회원 번호
   ID        VARCHAR(200) NOT NULL UNIQUE COMMENT '아이디', -- 아이디
   PWD       VARCHAR(80)  NULL COMMENT '비밀번호', -- 비밀번호
   TYPE      VARCHAR(50)  NOT NULL     COMMENT '플랫폼 타입', -- 플랫폼 타입
   NAME      VARCHAR(50)  NOT NULL COMMENT '이름', -- 이름
   TELL      VARCHAR(30)  NULL     COMMENT '휴대전화번호', -- 휴대전화번호
   STATUS    INTEGER      NOT NULL COMMENT '상태', -- 상태
   CONFIRM   INTEGER      NOT NULL COMMENT '이메일 인증', -- 이메일 인증
   GRADE     VARCHAR(50)  NOT NULL COMMENT '등급', -- 등급
   ROLE      VARCHAR(50)  NOT NULL COMMENT '권한', -- 등급
   JOINDATE  DATE         NOT NULL COMMENT '가입일', -- 가입일
   FINALDATE DATE         NOT NULL COMMENT '최종 방문일', -- 최종 방문일
   BIRTH     DATE         NULL     COMMENT '생일' -- 생일
)
COMMENT '회원';

-- 회원
ALTER TABLE MEMBER
   ADD CONSTRAINT PK_MEMBER -- 회원 기본키
      PRIMARY KEY (
         MNO -- 회원 번호
      );

ALTER TABLE MEMBER
   MODIFY COLUMN MNO INTEGER NOT NULL AUTO_INCREMENT COMMENT '회원 번호';

-- 게시판 리스트
CREATE TABLE BOARD_LIST (
   BCODE INTEGER     NOT NULL COMMENT '게시판 번호', -- 게시판 번호
   BNAME VARCHAR(50) NOT NULL UNIQUE COMMENT '게시판 이름' -- 게시판 이름
)
COMMENT '게시판 리스트';

-- 게시판 리스트
ALTER TABLE BOARD_LIST
   ADD CONSTRAINT PK_BOARD_LIST -- 게시판 리스트 기본키
      PRIMARY KEY (
         BCODE -- 게시판 번호
      );

ALTER TABLE BOARD_LIST
   MODIFY COLUMN BCODE INTEGER NOT NULL AUTO_INCREMENT COMMENT '게시판 번호';

-- 즐겨찾기
CREATE TABLE FAVORITE (
   EXNO INTEGER NOT NULL COMMENT '전시회 번호', -- 전시회 번호
   MNO  INTEGER NOT NULL COMMENT '회원 번호' -- 회원 번호
)
COMMENT '즐겨찾기';

-- 즐겨찾기
ALTER TABLE FAVORITE
   ADD CONSTRAINT PK_FAVORITE -- 즐겨찾기 기본키
      PRIMARY KEY (
         EXNO, -- 전시회 번호
         MNO   -- 회원 번호
      );

-- 전시회
CREATE TABLE BOARD_EXHIBITION (
   EXNO        INTEGER      NOT NULL COMMENT '전시회 번호', -- 전시회 번호
   TEENPRICE   INTEGER      NOT NULL COMMENT '청소년 가격', -- 청소년 가격
   NORMALPRICE INTEGER      NOT NULL COMMENT '일반 가격', -- 일반 가격
   STARTDATE   DATE         NOT NULL COMMENT '시작일', -- 시작일
   ENDDATE     DATE         NOT NULL COMMENT '종료일', -- 종료일
   ADDRESS     VARCHAR(255) NOT NULL COMMENT '주소', -- 주소
   BNO         INTEGER      NOT NULL COMMENT '게시글 번호' -- 게시글 번호
)
COMMENT '전시회';

-- 전시회
ALTER TABLE BOARD_EXHIBITION
   ADD CONSTRAINT PK_BOARD_EXHIBITION -- 전시회 기본키
      PRIMARY KEY (
         EXNO -- 전시회 번호
      );

ALTER TABLE BOARD_EXHIBITION
   MODIFY COLUMN EXNO INTEGER NOT NULL AUTO_INCREMENT COMMENT '전시회 번호';

-- 결제 내역
CREATE TABLE PAYMENT (
   PNO         INTEGER NOT NULL COMMENT '결제 번호', -- 결제 번호
   PAY         INTEGER NOT NULL COMMENT '결제 금액', -- 결제 금액
   FINALPAY    INTEGER NOT NULL COMMENT '최종 결제 금액', -- 최종 결제 금액
   TEENCOUNT   INTEGER NOT NULL COMMENT '청소년 수량', -- 청소년 수량
   NORMALCOUNT INTEGER NOT NULL COMMENT '일반 수량', -- 일반 수량
   DATE        DATE    NOT NULL COMMENT '결제일', -- 결제일
   STATUS      INTEGER NOT NULL COMMENT '결제 상태', -- 결제 상태
   EXNO        INTEGER NOT NULL COMMENT '전시회 번호', -- 전시회 번호
   MNO         INTEGER NOT NULL COMMENT '회원 번호' -- 회원 번호
)
COMMENT '결제 내역';

-- 결제 내역
ALTER TABLE PAYMENT
   ADD CONSTRAINT PK_PAYMENT -- 결제 내역 기본키
      PRIMARY KEY (
         PNO -- 결제 번호
      );

ALTER TABLE PAYMENT
   MODIFY COLUMN PNO INTEGER NOT NULL AUTO_INCREMENT COMMENT '결제 번호';

-- 게시판
CREATE TABLE BOARD (
   BNO     INTEGER     NOT NULL COMMENT '게시글 번호', -- 게시글 번호
   TITLE   VARCHAR(50) NOT NULL COMMENT '제목', -- 제목
   CONTENT TEXT        NOT NULL COMMENT '내용', -- 내용
   HIT     INTEGER     NOT NULL COMMENT '조회수', -- 조회수
   STATUS  INTEGER     NOT NULL COMMENT '상태', -- 상태
   DATE    DATE        NOT NULL COMMENT '작성일', -- 작성일
   MNO     INTEGER     NOT NULL COMMENT '회원 번호', -- 회원 번호
   BCODE   INTEGER     NOT NULL COMMENT '게시판 번호' -- 게시판 번호
)
COMMENT '게시판';

-- 게시판
ALTER TABLE BOARD
   ADD CONSTRAINT PK_BOARD -- 게시판 기본키
      PRIMARY KEY (
         BNO -- 게시글 번호
      );

ALTER TABLE BOARD
   MODIFY COLUMN BNO INTEGER NOT NULL AUTO_INCREMENT COMMENT '게시글 번호';

-- 후기
CREATE TABLE REVIEW (
   RNO     INTEGER NOT NULL COMMENT '후기 번호', -- 후기 번호
   COMMENT TEXT    NOT NULL COMMENT '내용', -- 내용
   SCORE   INTEGER NOT NULL COMMENT '평점', -- 평점
   STATUS  INTEGER NOT NULL COMMENT '상태', -- 상태
   EXNO    INTEGER NOT NULL COMMENT '전시회 번호', -- 전시회 번호
   MNO     INTEGER NOT NULL COMMENT '회원 번호' -- 회원 번호
)
COMMENT '후기';

-- 후기
ALTER TABLE REVIEW
   ADD CONSTRAINT PK_REVIEW -- 후기 기본키
      PRIMARY KEY (
         RNO -- 후기 번호
      );

ALTER TABLE REVIEW
   MODIFY COLUMN RNO INTEGER NOT NULL AUTO_INCREMENT COMMENT '후기 번호';

-- 공지사항 게시판
CREATE TABLE BOARD_NOTICE (
   NNO INTEGER NOT NULL COMMENT '공지글 번호', -- 공지글 번호
   BNO INTEGER NOT NULL COMMENT '게시글 번호' -- 게시글 번호
)
COMMENT '공지사항 게시판';

-- 공지사항 게시판
ALTER TABLE BOARD_NOTICE
   ADD CONSTRAINT PK_BOARD_NOTICE -- 공지사항 게시판 기본키
      PRIMARY KEY (
         NNO -- 공지글 번호
      );

ALTER TABLE BOARD_NOTICE
   MODIFY COLUMN NNO INTEGER NOT NULL AUTO_INCREMENT COMMENT '공지글 번호';

-- 파일
CREATE TABLE FILE (
   FNO      INTEGER     NOT NULL COMMENT '파일 번호', -- 파일 번호
   FOLDER   VARCHAR(50) NOT NULL COMMENT '파일 저장폴더', -- 파일 저장폴더
   SAVENAME VARCHAR(50) NOT NULL COMMENT '파일 저장 이름', -- 파일 저장 이름
   NAME     VARCHAR(50) NOT NULL COMMENT '파일 이름', -- 파일 이름
   FILESIZE BIGINT      NOT NULL COMMENT '파일 크기', -- 파일 크기
   THUMB    INTEGER     NOT NULL COMMENT '썸네일 여부', -- 썸네일 여부
   BNO      INTEGER     NOT NULL COMMENT '게시글 번호' -- 게시글 번호
)
COMMENT '파일';

-- 파일
ALTER TABLE FILE
   ADD CONSTRAINT PK_FILE -- 파일 기본키
      PRIMARY KEY (
         FNO -- 파일 번호
      );

ALTER TABLE FILE
   MODIFY COLUMN FNO INTEGER NOT NULL AUTO_INCREMENT COMMENT '파일 번호';

-- 즐겨찾기
ALTER TABLE FAVORITE
   ADD CONSTRAINT FK_BOARD_EXHIBITION_TO_FAVORITE -- 전시회 -> 즐겨찾기
      FOREIGN KEY (
         EXNO -- 전시회 번호
      )
      REFERENCES BOARD_EXHIBITION ( -- 전시회
         EXNO -- 전시회 번호
      );

-- 즐겨찾기
ALTER TABLE FAVORITE
   ADD CONSTRAINT FK_MEMBER_TO_FAVORITE -- 회원 -> 즐겨찾기
      FOREIGN KEY (
         MNO -- 회원 번호
      )
      REFERENCES MEMBER ( -- 회원
         MNO -- 회원 번호
      );

-- 전시회
ALTER TABLE BOARD_EXHIBITION
   ADD CONSTRAINT FK_BOARD_TO_BOARD_EXHIBITION -- 게시판 -> 전시회
      FOREIGN KEY (
         BNO -- 게시글 번호
      )
      REFERENCES BOARD ( -- 게시판
         BNO -- 게시글 번호
      );

-- 결제 내역
ALTER TABLE PAYMENT
   ADD CONSTRAINT FK_BOARD_EXHIBITION_TO_PAYMENT -- 전시회 -> 결제 내역
      FOREIGN KEY (
         EXNO -- 전시회 번호
      )
      REFERENCES BOARD_EXHIBITION ( -- 전시회
         EXNO -- 전시회 번호
      );

-- 결제 내역
ALTER TABLE PAYMENT
   ADD CONSTRAINT FK_MEMBER_TO_PAYMENT -- 회원 -> 결제 내역
      FOREIGN KEY (
         MNO -- 회원 번호
      )
      REFERENCES MEMBER ( -- 회원
         MNO -- 회원 번호
      );

-- 게시판
ALTER TABLE BOARD
   ADD CONSTRAINT FK_MEMBER_TO_BOARD -- 회원 -> 게시판
      FOREIGN KEY (
         MNO -- 회원 번호
      )
      REFERENCES MEMBER ( -- 회원
         MNO -- 회원 번호
      );

-- 게시판
ALTER TABLE BOARD
   ADD CONSTRAINT FK_BOARD_LIST_TO_BOARD -- 게시판 리스트 -> 게시판
      FOREIGN KEY (
         BCODE -- 게시판 번호
      )
      REFERENCES BOARD_LIST ( -- 게시판 리스트
         BCODE -- 게시판 번호
      );

-- 후기
ALTER TABLE REVIEW
   ADD CONSTRAINT FK_BOARD_EXHIBITION_TO_REVIEW -- 전시회 -> 후기
      FOREIGN KEY (
         EXNO -- 전시회 번호
      )
      REFERENCES BOARD_EXHIBITION ( -- 전시회
         EXNO -- 전시회 번호
      );

-- 후기
ALTER TABLE REVIEW
   ADD CONSTRAINT FK_MEMBER_TO_REVIEW -- 회원 -> 후기
      FOREIGN KEY (
         MNO -- 회원 번호
      )
      REFERENCES MEMBER ( -- 회원
         MNO -- 회원 번호
      );

-- 공지사항 게시판
ALTER TABLE BOARD_NOTICE
   ADD CONSTRAINT FK_BOARD_TO_BOARD_NOTICE -- 게시판 -> 공지사항 게시판
      FOREIGN KEY (
         BNO -- 게시글 번호
      )
      REFERENCES BOARD ( -- 게시판
         BNO -- 게시글 번호
      );

-- 파일
ALTER TABLE FILE
   ADD CONSTRAINT FK_BOARD_TO_FILE -- 게시판 -> 파일
      FOREIGN KEY (
         BNO -- 게시글 번호
      )
      REFERENCES BOARD ( -- 게시판
         BNO -- 게시글 번호
      );

