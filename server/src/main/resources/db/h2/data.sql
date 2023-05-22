INSERT INTO CART (cart_id, total_price, total_quantity)
VALUES (101, 211000,6),
       (102, 0,0);

INSERT INTO member (real_name, display_name, email, password, phone, birth_date, mail_key, password_issued ,oauth2registered ,member_status, cart_id)
VALUES ('홍길동', '길동', 'admin@gmail.com', '{bcrypt}$2a$10$DMjG9h.SPH/1bGNTwkqGIer/zvubR//qasrkLdLin3cNDDOmZzW96', '010-1234-5678', '1990-01-01', null,true,false, 'MEMBER_ACTIVE',101),
       ('테스트', '테테', 'test@gmail.com', '{bcrypt}$2a$10$DMjG9h.SPH/1bGNTwkqGIer/zvubR//qasrkLdLin3cNDDOmZzW96', '010-1234-5678', '1990-01-01', null,false,false, 'MEMBER_ACTIVE',102);
INSERT INTO member_roles (member_member_id, roles)
VALUES (1, 'USER'),
       (1, 'ADMIN'),
       (2, 'USER');

INSERT INTO item (title_kor, title_eng, price, capacity, volume, country, aroma, taste, field, sales, quantity, discount_rate, profile, detailed_Profile ,review_count, review_rating)
VALUES ('에펜', 'Effen', 35000, 700, 35, '네덜란드', '천연 향료', '깔끔한 맛', '보드카', 32, 20, 15, 'https://jusinsa-project.s3.ap-northeast-2.amazonaws.com/item/1.png','https://jusinsa-project.s3.ap-northeast-2.amazonaws.com/detaliedItem/1.jpg','0','0.0'),
('스미노프 레드', 'Smirnoff', 16000, 750, 37.5, '러시아', '보리', '깔끔한 맛', '보드카', 22, 150, 0, 'https://jusinsa-project.s3.ap-northeast-2.amazonaws.com/item/2.png','https://jusinsa-project.s3.ap-northeast-2.amazonaws.com/detaliedItem/2.jpg','4','2.5'),
('앱솔루트 보드카', 'Absolut', 28000, 700, 40, '스웨덴', '보리', '부드러운 맛', '보드카', 17, 50, 10, 'https://jusinsa-project.s3.ap-northeast-2.amazonaws.com/item/3.png','https://jusinsa-project.s3.ap-northeast-2.amazonaws.com/detaliedItem/3.jpg','2','5.0'),
('잭 다니엘스', 'Jack Daniels', 50000, 700, 35, '미국', '바닐라, 메이플', '깊은 풍미', '위스키', 10, 80, 5, 'https://jusinsa-project.s3.ap-northeast-2.amazonaws.com/item/4.png','https://jusinsa-project.s3.ap-northeast-2.amazonaws.com/detaliedItem/4.jpg','15','4.8'),
('매카랜', 'Macallan', 80000, 700, 40, '스코틀랜드', '캐러멜, 과일', '부드러운 맛', '위스키', 3, 30, 20, 'https://jusinsa-project.s3.ap-northeast-2.amazonaws.com/item/5.png','https://jusinsa-project.s3.ap-northeast-2.amazonaws.com/detaliedItem/5.jpg','10','4.2'),
('말리부', 'Malibu', 24000, 700, 20, '바베이도스', '코코넛', '달콤한 맛', '럼', 55, 30, 0, 'https://jusinsa-project.s3.ap-northeast-2.amazonaws.com/item/6.png','https://jusinsa-project.s3.ap-northeast-2.amazonaws.com/detaliedItem/6.jpg', '0', '0.0'),
('스미노프 블루', 'Smirnoff Blue', 25000, 750, 50, '러시아', '알코올', '매운 맛', '보드카', 40, 25, 0, 'https://jusinsa-project.s3.ap-northeast-2.amazonaws.com/item/7.png','https://jusinsa-project.s3.ap-northeast-2.amazonaws.com/detaliedItem/7.jpg','4','5.0'),
('블랙 벨벳', 'Velvet Black', 30000, 700, 40, '스코틀랜드', '차', '달콤한 맛', '위스키', 30, 10, 10, 'https://jusinsa-project.s3.ap-northeast-2.amazonaws.com/item/8.png','https://jusinsa-project.s3.ap-northeast-2.amazonaws.com/detaliedItem/8.jpg','12','4.7'),
('론디아즈 151', 'RonDiaz', 18000, 750, 75.5, '바베이도스', '과일', '향긋한 맛', '럼', 47, 35, 5, 'https://jusinsa-project.s3.ap-northeast-2.amazonaws.com/item/9.png','https://jusinsa-project.s3.ap-northeast-2.amazonaws.com/detaliedItem/9.jpg','3','4.0'),
('레드 스트라이프', 'Red Stripe', 8000, 330, 4.7, '자메이카', '보리', '빈티지한 맛', '맥주', 22, 20, 0, 'https://jusinsa-project.s3.ap-northeast-2.amazonaws.com/item/10.png','https://jusinsa-project.s3.ap-northeast-2.amazonaws.com/detaliedItem/10.jpg','4','4.8'),
('바카디 파인애플', 'Bacardi PainApple', 18000, 700, 18, '러시아', '파인애플', '신선한 맛', '보드카', 31, 50, 10, 'https://jusinsa-project.s3.ap-northeast-2.amazonaws.com/item/11.png', 'https://jusinsa-project.s3.ap-northeast-2.amazonaws.com/detaliedItem/11.jpg','2', '4.5'),
('깔루아', 'Kahlua', 25000, 700, 20, '러시아', '커피', '달달한 맛', '리큐르', 59, 10, 20, 'https://jusinsa-project.s3.ap-northeast-2.amazonaws.com/item/12.png', 'https://jusinsa-project.s3.ap-northeast-2.amazonaws.com/detaliedItem/12.jpg','1', '5.0'),
('화요25', 'Hwayo', 28000, 375, 41, '대한민국', '적고소한 향', '달콤하고 부드러운 맛', '전통주', 24, 20, 10, 'https://jusinsa-project.s3.ap-northeast-2.amazonaws.com/item/13.png','https://jusinsa-project.s3.ap-northeast-2.amazonaws.com/detaliedItem/13.jpg' ,'2', '4.5'),
('짐빔 화이트', 'Jim Beam White', 30000, 1000, 40, '미국', '밀', '달콤하고 부드러운 맛', '버번 위스키', 38, 5, 10, 'https://jusinsa-project.s3.ap-northeast-2.amazonaws.com/item/14.png','https://jusinsa-project.s3.ap-northeast-2.amazonaws.com/detaliedItem/14.jpg' ,'2', '4.5'),
('커티 삭', 'Cutty Sark', 32000, 1000,40, '스코틀랜드', '과일', '부드러운 맛', '스카치 위스키', 6, 10, 10, 'https://jusinsa-project.s3.ap-northeast-2.amazonaws.com/item/15.png','https://jusinsa-project.s3.ap-northeast-2.amazonaws.com/detaliedItem/15.jpg', '1', '5.0'),
('미다이 위스키', 'Midori Whiskey', 20000, 700, 37, '일본', '과일', '부드러운 맛', '위스키', 11, 5, 10, 'https://jusinsa-project.s3.ap-northeast-2.amazonaws.com/item/16.png','https://jusinsa-project.s3.ap-northeast-2.amazonaws.com/detaliedItem/16.jpg','3', '4.3'),
('글렌피딕', 'Klenfedik', 110000, 700, 40, '스코틀랜드', '복숭아와 과일', '부드러운 맛', '위스키', 12, 10, 10, 'https://jusinsa-project.s3.ap-northeast-2.amazonaws.com/item/17.png','https://jusinsa-project.s3.ap-northeast-2.amazonaws.com/detaliedItem/17.jpg', '1', '5.0'),
('아페롤', 'Aperol', 14000, 700, 11, '이탈리아', '오렌지', '씁쓸한 맛', '아페리티프', 23, 50, 10, 'https://jusinsa-project.s3.ap-northeast-2.amazonaws.com/item/18.png','https://jusinsa-project.s3.ap-northeast-2.amazonaws.com/detaliedItem/18.jpg','1', '4.5'),
('예거마이스터', 'Jägermeister', 25000, 700, 35, '독일', '허브와 스파이스', '씁쓸한 맛', '리큐어', 88, 100, 0, 'https://jusinsa-project.s3.ap-northeast-2.amazonaws.com/item/19.png','https://jusinsa-project.s3.ap-northeast-2.amazonaws.com/detaliedItem/19.jpg', '1', '4.0'),
('빌라 욜란다 모스카토 다스티', 'Villa Yolanda Moscato D Asti', 18000, 750, 5, '이탈리아', '꽃', '달콤한 맛', '디저트 와인', 41, 20, 5, 'https://jusinsa-project.s3.ap-northeast-2.amazonaws.com/item/20.png','https://jusinsa-project.s3.ap-northeast-2.amazonaws.com/detaliedItem/20.jpg', '3', '4.7'),
('글렌 스코샤 더블 캐스크', 'Glen Scotia Double Cask', 66000, 700, 46, '스코틀랜드', '과일, 허브', '달콤하고 부드러운 맛', '싱글몰트 위스키', 23, 30, 15, 'https://jusinsa-project.s3.ap-northeast-2.amazonaws.com/item/21.png','https://jusinsa-project.s3.ap-northeast-2.amazonaws.com/detaliedItem/21.jpg', '2', '4.5'),
('제갈량가주', 'Jegalryang Rice Wine', 20000, 750, 16, '한국', '쌀', '산미와 달콤한 맛', '쌀주', 7, 100, 5, 'https://jusinsa-project.s3.ap-northeast-2.amazonaws.com/item/22.png','https://jusinsa-project.s3.ap-northeast-2.amazona2.jpg' ,'5', '4.0'),
('아키토라 준마이 다이긴죠', 'Akitora Junmai Daiginjo', 44000, 720, 15, '일본', '과일, 꽃', '깨끗하고 깊은 맛', '막걸리', 3, 40, 5, 'https://jusinsa-project.s3.ap-northeast-2.amazonaws.com/item/23.png','https://jusinsa-project.s3.ap-northeast-2.amazonaws.com/detaliedItem/23.jpg', '3', '4.8'),
('와일드 터키 101 1L', 'Wild Turkey 101 1L', 40000, 1000, 50, '미국', '버터 스카치, 바닐라', '찐하고 무거운 맛', '버번 위스키', 9, 20, 5, 'https://jusinsa-project.s3.ap-northeast-2.amazonaws.com/item/24.png','https://jusinsa-project.s3.ap-northeast-2.amazonaws.com/detaliedItem/24.jpg' ,'3', '4.0');

INSERT INTO  ITEM_CATEGORIES (item_item_id, categories)
VALUES (1, '보드카'),
       (2, '보드카'),
       (3, '보드카'),
       (4, '위스키'),
       (5, '위스키'),
       (6, '위스키'),
       (7, '보드카'),
       (8, '위스키'),
       (9, '럼'),
       (10, '맥주'),
       (11, '보드카'),
       (12, '리큐르'),
       (13, '전통주'),
       (14, '위스키'),
       (15, '위스키'),
       (16, '위스키'),
       (17, '위스키'),
       (18, '아페리티프'),
       (19, '리큐르'),
       (20, '와인'),
       (21, '위스키'),
       (22, '쌀주'),
       (23, '막걸리'),
       (24, '위스키');


INSERT INTO ITEM_CART (ITEM_CART_ID ,QUANTITY ,CART_ID, ITEM_ID)
VALUES (101,2, 101,3),
       (102,1,101,5),
       (103,3, 101,7);


INSERT INTO MARKET (name, lat, lng, phone, choice, address, work_Time, comment)
VALUES
    ('고래맥주창고 수지구청점', 37.322117581491526, 127.0948747094305, '031-261-0828', false, '경기 용인시 수지구', '오후 5시 영업', '매주 월요일 휴무'),
    ('고래맥주창고 수지죽전점', 37.3254276819496, 127.1136172500424, '031-261-0828', false, '경기 용인시 수지구 대지로', '오후 5시 영업', '매주 월요일 휴무'),
    ('고래맥주창고 분당미금점', 37.35202867164958, 127.11090336715307, '031-261-0828', false, '경기도 성남시 분당구', '오후 5시 영업', '매주 월요일 휴무'),
    ('고래맥주창고 분당서현점', 37.380392455417706, 127.12916874787089, '031-261-0828', false, '성남 분당구 서현동', '오후 5시 영업', '매주 월요일 휴무'),
    ('고래맥주창고 분당수내점', 37.375949905695215, 127.12112694897831, '031-261-0828', false, '성남 분당구 수내동', '오후 5시 영업', '매주 월요일 휴무'),
    ('고래맥주창고 분당이매점', 37.40333696943167, 127.12498853063202, '031-261-0828', false, '성남 분당구 이매동', '오후 5시 영업', '매주 월요일 휴무'),
    ('수지구청점', 37.322117581491526, 127.0948747094305,'031-261-0828', 'false','경기 용인시 수지구 풍덕천로 122', '오후 3시영업', '매주월요일휴무'),
    ('수지죽전점', 37.3254276819496, 127.1136172500424,'0507-1309-1722', 'false','용인시 수지구 대지로 58 선진포리스트 111호', '오후 3시영업', '매주월요일휴무'),
    ('분당미금점', 37.35202867164958, 127.11090336715307,'031-605-1141', 'false','경기 성남시 분당구 정자일로 55 두산위브트레지움 109동 상가 101호', '오후 3시영업', '매주월요일휴무'),
    ('분당서현점', 37.380392455417706, 127.12916874787089,'070-8899-3848', 'false','경기 성남시 분당구 중앙공원로40번길 4', '오후 3시영업', '매주월요일휴무'),
    ('분당수내점', 37.375949905695215, 127.12112694897831,'010-3389-2235', 'false','경기 성남시 분당구 내정로165번길 50 크리스탈빌딩 1층 108호', '오후 2시영업', '매주월요일휴무'),
    ('분당이매점', 37.40333696943167, 127.12498853063202,'010-3555-9729', 'false','경기 성남시 분당구 판교로 432 제일프라자 1층 9호', '오후 3시영업', '매주월요일휴무'),
    ('용인구성점', 37.30030149272365, 127.10778204355287,'031-123-4567', 'false','경기 용인시 기흥구 마북동 524-8', '오후 3시영업', '매주월요일휴무'),
    ('수지성복점', 37.308249489360094, 127.08454268831079,'010-4653-0999', 'false','경기 용인시 수지구 상현로 126 1층 106호', '오후 3시영업', '매주월요일휴무'),
    ('상계점', 37.66677179583287, 127.0786050623529,'070-7585-7710', 'false','서울 노원구 덕릉로 780 동아불암아파트 상가 101동 101호', '오후 3시영업', '매주월요일휴무'),
    ('기흥구청점', 37.281130922165026, 127.11176900143634,'031-281-7865', 'false','경기 용인시 기흥구 구갈로 74 구갈스포츠센터 1층 113호', '오후 5시영업', '매주월요일휴무'),
    ('수지상현점', 37.29645574181819, 127.06943896640014,'031-123-4567', 'false','경기 용인시 수지구 광교중앙로 298 1층 108호', '오후 3시영업', '매주월요일휴무'),
    ('광주신현점', 37.35855399499232, 127.14861387568216,'010-4653-0999', 'false','경기 광주시 신현동 740-8', '오후 3시영업', '매주월요일휴무'),
    ('기흥동백점', 37.27670001259368, 127.15186701664817,'0507-1342-3326', 'false','경기 용인시 기흥구 중동 832-7', '오전11시영업', '매주월요일휴무'),
    ('수원 신동카페거리점', 37.247685308834406, 127.04472390808967,'070-4833-8432', 'false','경기 수원시 영통구 신동 935', '오후 4시영업', '휴무없음'),
    ('분당야탑점', 37.41164151647658, 127.1341698832425,'031-701-1233', 'false','경기 성남시 분당구 야탑동 291-1', '오후 2시영업', '휴무없음'),
    ('수원권선점', 37.256096143333366, 127.02457383064012,'031-239-1042', 'false','경기 수원시 권선구 권선동 1051', '오후 3시영업', '매주월요일휴무'),
    ('성남도촌점', 37.415196779947344, 127.150749995057,'010-4653-0999', 'false','경기 성남시 중원구 도촌동 563', '오후 3시영업', '매주월요일휴무'),
    ('용인포곡점', 37.268519922231484, 127.2198748113546,'031-335-7889', 'false','경기 용인시 처인구 포곡읍 둔전리 131-14', '오후 3시영업', '매주월요일휴무'),
    ('동탄능동점', 37.20923877059389, 127.06213107271174,'070-4115-0204', 'false','경기 화성시 반송동 41-2', '오후 3시영업', '매주월요일휴무'),
    ('성남고등점', 37.43004279388269, 127.09428764577596,'031-123-4567', 'false','경기 성남시 수정구 고등동 574-12', '오후 3시영업', '매주월요일휴무'),
    ('평촌점', 37.385816304518265, 127.96238930568407,'010-5026-5201', 'false','경기 안양시 동안구 평촌동 341-1', '오후 3시영업', '매주월요일휴무'),
    ('동탄목동점', 37.182148868324866, 127.12296546795827,'0507-1428-5588', 'false','경기 화성시 목동 496-2', '오후 3시영업', '매주월요일휴무'),
    ('화성병점점', 37.20663476692211, 127.04144632925268,'031-123-4567', 'false','경기 화성시 병점동 314-3', '오후 3시영업', '매주월요일휴무'),
    ('동탄반송점', 37.19262058637466, 127.06724435042494,'070-4124-0092', 'false','경기 화성시 반송동 154-5', '오후 3시영업', '매주월요일휴무'),
    ('동탄영천점', 37.20619213866617, 127.1124965054366,'070-8873-1831', 'false','경기 화성시 영천동 700-2', '오후 3시영업', '매주월요일휴무'),
    ('강남도곡점', 37.48611708841486, 127.03854737744155,'02-579-8987', 'false','서울 강남구 도곡동 909-4', '오후 3시영업', '매주월요일휴무'),
    ('동탄2신도시점', 37.18629673263434, 127.09179894387694,'0507-1397-3387', 'false','경기 화성시 오산동 1017', '오후 3시영업', '매주월요일휴무'),
    ('오산궐동점', 37.158267606204404, 127.0555282569799,'031-8043-8024', 'false','경기 오산시 궐동 676-2', '오후 3시영업', '매주월요일휴무'),
    ('동탄호수공원점', 37.16861166116159, 127.10791450250294,'0507-1387-7757', 'false','경기 화성시 산척동 727-2', '오후 3시영업', '매주월요일휴무'),
    ('화성봉담점', 37.2171667961225, 127.96017480722101,'031-298-6547', 'false','경기 화성시 봉담읍 동화리 600-1', '오후 3시영업', '매주월요일휴무'),
    ('송파방이점', 37.51158446673942, 127.11441007134746,'010-9217-5560', 'false','서울 송파구 방이동 145-35', '오후 3시영업', '매주월요일휴무'),
    ('평촌도서관점', 37.396634290577374,  126.95795236571308,'031-385-0605', 'false','경기 안양시 동안구 관양동 1589-1', '오후 3시영업', '매주월요일휴무'),
    ('둔촌성내점', 37.52664668644112, 127.1339683187346,'010-2616-8245', 'false','서울 강동구 성내동 430-9', '오후 3시영업', '매주월요일휴무'),
    ('뚝섬유원지점', 37.53581018540151, 127.06839308517611,'02-123-4567', 'false','서울 광진구 자양동 550-1', '오후 3시영업', '매주월요일휴무'),
    ('광진구 자양점', 37.535603469277035, 127.0817573875424,'0507-1354-5690', 'false','서울 광진구 자양동 612-55', '오후 3시영업', '매주월요일휴무'),
    ('강동구 길동점', 37.53713123195696, 127.1427671706805,'0507-1396-8840', 'false','서울 강동구 길동 397-3', '오후 3시영업', '매주월요일휴무'),
    ('금천구 독산점', 37.46865773097867, 126.90262529798024,'0507-1362-1706', 'false','서울 금천구 독산동 1020-3', '오후 3시영업', '매주월요일휴무'),
    ('한대역점', 37.308096735366014, 126.85175621257598,'02-123-4567', 'false','경기 안산시 상록구 이동 716-10', '오후 3시영업', '매주월요일휴무'),
    ('광명하안점', 37.459413442805634, 126.88286635466767,'070-4015-0730', 'false','경기 광명시 하안동 200-1', '오후 3시영업', '매주월요일휴무'),
    ('노량진점', 37.51236543997271, 126.944034027381,'02-3280-1078', 'false','서울 동작구 노량진동 90-8', '오후 3시영업', '매주월요일휴무'),
    ('군자점', 37.55444577903575, 127.08085901235657,'0507-1358-8764', 'false','서울 광진구 능동 232-20', '오후 3시영업', '매주월요일휴무'),
    ('여의도점', 37.526234039172614, 126.93108168850245,'02-783-8283', 'false','서울 영등포구 여의도동 21-3', '오후 3시영업', '매주월요일휴무'),
    ('암사점', 37.551437148954065, 127.12878435347942,'0507-1472-6501', 'false','서울 강동구 암사동 500-21', '오후 3시영업', '매주월요일휴무'),
    ('광주장지점', 37.39524853158965, 127.24351292830389,'031-123-4567', 'false','경기 광주시 장지동 82-1', '오후 3시영업', '매주월요일휴무'),
    ('하남점', 37.55177018973972, 127.18468976408528,'010-6652-1793', 'false','경기 하남시 풍산동 490-2', '오후 3시영업', '매주월요일휴무');

INSERT INTO REVIEW (CREATED_AT, LAST_MODIFIED_AT, CONTENT, RATING, TITLE, ITEM_ID, MEMBER_ID)
VALUES ('2023-05-16 15:46:58.400765', '2023-05-16 15:46:58.400765', '너무 맛있어서 사진 3개 첨부요!', 5.0, '와 맛있당!', 1, 1),
       ('2023-05-16 15:47:34.939605', '2023-05-16 15:47:34.939605', '너무 맛없어서 사진 없어', 2.0, '우웩!', 1, 1),
       ('2023-05-16 15:48:40.414441', '2023-05-16 15:48:40.414441', '싫어요!', 1.0, '맛업서!', 2, 1),
       ('2023-05-16 15:48:57.450179', '2023-05-16 15:48:57.450179', '꿀!', 5.0, '와 맛있당!', 2, 1),
       ('2023-05-16 15:49:30.000000', '2023-05-16 15:49:30.000000', '맛있어요!', 4.0, '맛있어요!', 1, 1),
       ('2023-05-16 15:50:00.000000', '2023-05-16 15:50:00.000000', '별로에요!', 2.5, '별로에요!', 1, 2),
       ('2023-05-16 15:50:30.000000', '2023-05-16 15:50:30.000000', '좋아요!', 4.5, '좋아요!', 1, 2),
       ('2023-05-16 15:51:00.000000', '2023-05-16 15:51:00.000000', '괜찮아요!', 3.0, '괜찮아요!', 1, 2),
       ('2023-05-16 15:51:30.000000', '2023-05-16 15:51:30.000000', '매우 좋아요!', 5.0, '매우 좋아요!', 1, 1),
       ('2023-05-16 15:52:00.000000', '2023-05-16 15:52:00.000000', '별로에요!', 2.0, '별로에요!', 1, 2);


INSERT INTO REVIEW_IMAGE (CREATED_AT, LAST_MODIFIED_AT, FILE_PATH, IMAGE_NAME, ORI_NAME, REVIEW_ID)
VALUES ('2023-05-16 15:46:58.445765', '2023-05-16 15:46:58.445765', 'review/', '1684572154449_test.png', 'test.png', 1),
('2023-05-16 15:46:58.450766', '2023-05-16 15:46:58.450766', 'review/', '1684572154912_test2.jpg', 'test2.jpg', 1),
('2023-05-16 15:46:58.451765', '2023-05-16 15:46:58.451765', 'review/', '1684572155085_test3.png', 'test3.png', 1),
('2023-05-16 15:48:57.451174', '2023-05-16 15:48:57.451174', 'review/', '1684572154449_test.png', 'test.png', 4),
('2023-05-16 15:48:57.451174', '2023-05-16 15:48:57.451174', 'review/', '1684572154912_test2.jpg', 'test2.jpg', 4),
('2023-05-16 15:48:57.452174', '2023-05-16 15:48:57.452174', 'review/', '1684572155085_test3.png', 'test3.png', 4);




INSERT INTO orders (CREATED_AT, LAST_MODIFIED_AT,PICKUP_DATE, NAME, ORDER_STATUS, PHONE, MARKET_ID, MEMBER_ID)
VALUES
    ('2023-05-16 15:46:58.400765', '2023-05-16 15:46:58.400765', '2023-05-26' ,'어드민', 'ORDER_COMPLETE', '010-1234-5678', 1, 1),
    ('2023-05-06 15:47:34.939605', '2023-05-06 15:47:34.939605', '2023-05-27','어드민', 'ORDER_COMPLETE', '010-1234-5678', 2, 1),
    ('2023-05-26 15:47:34.939605', '2023-05-26 15:47:34.939605', '2023-05-28','어드민', 'PICKUP_COMPLETE', '010-1234-5678', 1, 1);

INSERT INTO  FAVORITE (favorite_id, item_id, member_id)
VALUES (100, 1,1),
       (102, 2,1),
       (103, 3,1),
       (104, 4,1),
       (105, 5,1),
       (106, 6,1),
       (107, 7,1),
       (108, 8,1),
       (109, 9,1),
       (110, 10,1),
       (111, 11,1),
       (112, 12,1),
       (113, 13,1),
       (114, 14,1),
       (115, 15,1),
       (116, 16,1),
       (117, 17,1),
       (118, 18,1),
       (119, 19,1),
       (120, 20,1),
       (121, 21,1),
       (122, 22,1),
       (123, 23,1);



INSERT INTO item_order (quantity, order_id, item_id)
VALUES (2, 1, 1),
       (1, 1, 2),
       (3, 1, 3),
       (4, 2, 8),
       (3, 2, 9),
       (5, 2, 10),
       (5, 3, 5),
       (8, 3, 8),
       (9, 3, 9);