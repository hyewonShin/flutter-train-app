# 프로젝트 소개 
Flutter로 제작된 기차 예매 서비스입니다 🚅
<br/><br/>


# 개발기간
2024.11.14~2024.11.19
<br/><br/>


# 개발환경
Flutter SDK: ^3.5.3
<br/><br/>


# 실행방법
flutter run
<br/><br/>


# 주요기능
### 기본
- HomePage 구현
  - 출발역/도착역 터치 시 StationListPage로 이동
  - StationListPage 에서 역 선택 시 선택한 역으로 문자열 변경
  - '좌석 선택' 버튼 선택 시 SeatPage로 이동
- StationListPage 구현
  - HomePage에서 출발역 클릭하여 이 페이지로 진입 시 '출발역', 도착역 클릭하여 이 페이지로 진입 시 '도착역' 출력
  - 각 기차역 이름을 터치 시 해당 역 이름을 반환하며 뒤로가기 (HomePage의 출발역 또는 도착역 변경) 
  - 뒤로가기 버튼
    - 아무런 값을 돌려주지 않고 뒤로가기.
    - 뒤로가기 버튼을 통해 뒤로갈 경우 HomePage 의 출발역, 도착역은 변경되지 않음
- SeatPage 구현
  - 상단의 기차역 문자열
    - HomePage 에서 선택한 출발역/도착역을 전달받아 출력.
    - 좌석 터치 시 색상 회색에서 보라색으로 변경
    - '예매 하기' 버튼 터치 시 showCupertinoDialog 출력(좌석의 행과열 출력)
      - 취소 누를 시 Dialog 제거
      - 확인 누를 시 HomePage로 이동(뒤로가기 두번)

### 도전
- 


### 추가 
- 출발역과 도착역을 스왑하는 기능
  
<br/><br/>


# 프로젝트 미리보기 
![image](https://github.com/user-attachments/assets/e0a73397-cb86-49b9-9022-fd9ca8b094db)
-
![image](https://github.com/user-attachments/assets/539ae3db-23f3-4f37-bdb7-8bfe39103047)


