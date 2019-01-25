DROP VIEW MEMBERLISTVIEW;
DROP VIEW EXHIBITLISTVIEW;

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
       ex.address, ex.place, f.fno, f.folder, f.name, f.savename
FROM   board_exhibition ex, board b, file f
WHERE  ex.exno = b.bno
AND    f.bno = b.bno
AND    f.thumb = 1;

-- 후기 조회용 페이징 하려다 시간 안돼서 패스..
CREATE VIEW reviewlistview as
SELECT r.rno, r.comment, r.score,
r.status, r.exno, r.mno, 
DATE_FORMAT(date, '%Y-%m-%d %H:%i:%S') as date, m.name
FROM review r, member m
WHERE r.mno = m.mno
AND r.status = 1;

CREATE VIEW paymentlistview AS
    SELECT p.pno, p.pay, p.finalPay, 
           p.teenCount, p.normalCount, 
           DATE_FORMAT(p.date,'%Y-%m-%d %H:%i:%s') as 'date',
           p.status, p.mno, p.exno,
           ex.title, ex.bno, ex.place, 
           ex.address, ex.folder, ex.fno, ex.name,
           ex.savename
    FROM   payment p, exhibitlistview ex
    WHERE  p.exno = ex.exno;

-- 관리자 차트용!
create view paymentday as
select (DATE_FORMAT(date, '%Y-%m-%d')) as 'date', sum(finalpay) as 'sum' from payment group by DATE_FORMAT(date, '%Y-%m-%d');

-- 관리자 차트용2!
create view joinday as
select (DATE_FORMAT(joinDate, '%Y-%m-%d')) as 'joinDate', sum(status) as 'count' from member group by DATE_FORMAT(joinDate, '%Y-%m-%d');
