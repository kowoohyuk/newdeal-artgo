
-- 관리자 회원 목록 조회용
CREATE VIEW MEMBERLISTVIEW AS
SELECT MNO, ID, NAME, TYPE, BIRTH, TELL, STATUS, CONFIRM, GRADE, ROLE, JOINDATE, FINALDATE
FROM   MEMBER;

-- 전시회 목록 조회용
CREATE VIEW EXHIBITLISTVIEW AS
SELECT b.*, ex.exno, ex.teenPrice, ex.normalPrice, ex.startDate, ex.endDate, ex.address, ex.place 
FROM   board_exhibition ex, board b;

-- 전시회 목록 조회용 board datetime 제외한 상태. out of bound 에러 때문에.
CREATE VIEW EXHIBITLISTVIEW AS
SELECT b.bno, b.title, b.content, 
       b.hit, b.status,
       ex.exno, ex.teenPrice, ex.normalPrice, 
       DATE_FORMAT(ex.startDate, '%Y-%m-%d') as startDate, 
       DATE_FORMAT(ex.endDate, '%Y-%m-%d') as endDate, 
       ex.address, ex.place 
FROM   board_exhibition ex, board b;