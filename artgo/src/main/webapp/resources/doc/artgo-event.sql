SET GLOBAL event_scheduler = ON;
SET GLOBAL event_scheduler = 1;
SET @@global.event_scheduler = ON;
SET @@global.event_scheduler = 1;
show variables like 'event%';
--이벤트 온!


create table payment_sum_days (
    DATE_VAL  DATE UNIQUE COMMENT '날짜', -- 날짜
    SUM_VAL   BIGINT  COMMENT '합계' -- 합계
);

create table member_sum_days (
    DATE_VAL  DATE UNIQUE COMMENT '날짜', -- 날짜
    SUM_VAL   BIGINT  COMMENT '합계' -- 합계
);

CREATE EVENT IF NOT EXISTS ev_payment_sum_days
    ON SCHEDULE
    EVERY 1 DAY -- 1일 주기
    STARTS '2019-01-26 00:00:00' -- 시작 시간 설정
    DO
        INSERT
        INTO   payment_sum_days
        VALUES ( 
            date(subdate(now(), INTERVAL 1 DAY)),
            (SELECT sum(p.finalpay) FROM payment p WHERE date(p.date) = date(subdate(now(), INTERVAL 1 DAY)))
        );-- 매일 매출의 합계를 입력하는 이벤트 스케줄러.
        
CREATE EVENT IF NOT EXISTS ev_member_sum_days
    ON SCHEDULE
    EVERY 1 DAY -- 1일 주기
    STARTS '2019-01-26 00:00:00' -- 시작 시간 설정
    DO
        INSERT
        INTO   member_sum_days
        VALUES ( 
            date(subdate(now(), INTERVAL 1 DAY)),
            (SELECT sum(m.joinDate) FROM member m WHERE date(m.joinDate) = date(subdate(now(), INTERVAL 1 DAY)))
        );-- 매일 가입자의 합계를 입력하는 이벤트 스케줄러.
