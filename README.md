# 프로젝트 소개 
기차 예매 서비스입니다 🚅
<br/><br/>

<div align="center">
  <img src="https://github.com/user-attachments/assets/6180607e-4d0e-4c44-afc6-9a6e64474630" alt="기차 예매 서비스 예시 1" style="width: 80%; margin-bottom: 20px;" />
  <img src="https://github.com/user-attachments/assets/79a53184-ec49-4d81-88aa-2ff156fa26a8" alt="기차 예매 서비스 예시 2" style="width: 80%;" />

</div>

<br/><br/>

# 개발기간
2024.11.14~2024.11.19(총 4일 작업)
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
- 사용자가 출발역(A역)을 선택한 뒤 도착역을 고를 때, 도착역 선택 페이지에서 출발역(A역)을 제외한 역 목록을 보여주기(반대의 경우도 동일)
- 다크테마 적용(MaterialApp의 theme, darkTheme 속성 이용)


### 추가 
- 출발역과 도착역을 스왑하는 기능
  


