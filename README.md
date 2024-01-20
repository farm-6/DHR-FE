# HEC-FE 🦆
[Han River Ecology Collect] Front-End

### 🦆 한강 생태모아 Front-End

> 서울의 공원 (https://parks.seoul.go.kr/) 에서 제공하는 한강생태지도의 한강 생태를 기준으로 도감을 구성하였습니다. </br>

<img width="700" alt="표지" src="https://github.com/farm-6/HEC-FE/assets/119389695/47fbe377-dc31-486a-8dfc-c4c70b71ecdf">

## 🦆 프로젝트 개요

> “한강 생태모아”는 어린이들을 대상으로 한 환경 교육과 동시에 생태 도감 기능을 제공하는 애플리케이션입니다. 

- ‘AI 기반 객체 인식 기능’은 사진을 찍은 후 AI기반 Classification기능을 활용하여 한강 지역의 곤충, 포유류, 식물 등의 생물을 식별하고 정보를 제공합니다. 
- ‘도감 기능’은 사용자가 찍은 사진들을 저장하고, 생물의 도감을 자동으로 생성합니다. 도감에는 찍은 날짜, 위치, 생물의 이름 및 정보 등이 포함됩니다.
 - ‘자랑하기 기능’은 사용자들은 도감에 저장된 사진을 손쉽게 앱 내의 SNS에 공유하고, 다른 사용자들과 경쟁하며 도감을 채워나갈 수 있도록 합니다. 이러한 한강 생태 도감 앱을 통해 어린이들에게 다양한 생물이 공존하는 한강 생태교육을 하고, 한강의 생태를 사랑하는 사람들에게 즐거움을 주고자 하였습니다. 



## 📌 기능 구성

1. 자랑하기
2. AI로 생태 분석
3. 도감
4. 마이페이지

## 📌 사용한 Dart Package

1. image_picker : image_picker를 사용하여 AI 분석 화면 중 갤러리에서 사진을 가져왔습니다.
2. http : http를 사용하여 json 형태의 도감 데이터를 가져왔습니다.
3. get : get을 사용하여 페이지 이동을 구현하였습니다.

## 📌 UI

### ✅ 로그인 화면

| 카카오톡 로그인 화면 | 카카오톡 로그인 정보 가져오기 |  
| -------- | -------- |
| <img width="250" alt="스크린샷 2024-01-20 오후 3 56 43" src="https://github.com/farm-6/HEC-FE/assets/119389695/02c7fc6f-7dd7-4ede-b2f0-f299827106f8">| <img width="500" alt="스크린샷 2024-01-20 오후 4 00 02" src="https://github.com/farm-6/HEC-FE/assets/119389695/a810eb6f-1163-46eb-8276-fc51ce6d332e"> |

### ✅ AI 분석 화면

| 사진 선택 | 갤러리 사진 가져오기 | AI 분석 성공할 경우 |
| -------- | -------- | -------- |
| <img width="250" alt="스크린샷 2024-01-20 오후 4 01 30" src="https://github.com/farm-6/HEC-FE/assets/119389695/44b26863-78d9-4d9f-90a0-00a5b31f1f58">| <img width="250" alt="스크린샷 2024-01-20 오후 4 01 46" src="https://github.com/farm-6/HEC-FE/assets/119389695/dae981bf-ef9e-4289-8040-482c9f1a3878"> |<img width="250" alt="스크린샷 2024-01-20 오후 4 02 29" src="https://github.com/farm-6/HEC-FE/assets/119389695/d4781add-0791-49c4-baae-b49c69a384e8">|

| AI 분석 실패할 경우 | 시간 및 날짜 선택 | 도감에 저장하기 |
| -------- | -------- | -------- |
|<img width="250" alt="image" src="https://github.com/farm-6/HEC-FE/assets/119389695/5c248efb-d9ec-4da1-bd92-07dd44468c49">| <img width="150" alt="스크린샷 2024-01-20 오후 4 02 12" src="https://github.com/farm-6/HEC-FE/assets/119389695/d51ecac0-e006-48ed-95dd-19a582e1ff65"> <img width="150" alt="스크린샷 2024-01-20 오후 4 02 21" src="https://github.com/farm-6/HEC-FE/assets/119389695/672ab59c-db67-4e0b-b2f5-23d1b4d4fbc0"> |<img width="250" alt="스크린샷 2024-01-20 오후 4 02 35" src="https://github.com/farm-6/HEC-FE/assets/119389695/96621a71-d357-4b79-a757-e9af23ca5f25">|

### ✅ 도감 화면

| 도감 목록 | 생태 종류별 화면 | 도감 상세화면 |
| -------- | -------- | -------- |
|<img width="250" alt="스크린샷 2024-01-20 오후 4 02 43" src="https://github.com/farm-6/HEC-FE/assets/119389695/c2acf603-e50c-4b64-aa6c-a76a42b41c42">| <img width="250" alt="스크린샷 2024-01-20 오후 4 02 52" src="https://github.com/farm-6/HEC-FE/assets/119389695/db652b98-2d76-4461-bf09-21612f7df363"> |<img width="250" alt="스크린샷 2024-01-20 오후 4 05 40" src="https://github.com/farm-6/HEC-FE/assets/119389695/5be342a8-8809-4bc7-a1da-dc1b636b7f74">|

| 자랑하기 글쓰기 | 자랑하기 글쓰기 | 
| -------- | -------- | 
|<img width="250" alt="스크린샷 2024-01-20 오후 4 06 07" src="https://github.com/farm-6/HEC-FE/assets/119389695/206ab251-a087-4599-8636-c4599b3e6b8a">| <img width="250" alt="스크린샷 2024-01-20 오후 4 06 47" src="https://github.com/farm-6/HEC-FE/assets/119389695/f3d43e02-438e-40b0-aea4-63d4bd922b1b"> |

### ✅ 자랑하기 화면

| 자랑하기 | 자랑하기 상세화면 |
| -------- | -------- |
|<img width="250" alt="스크린샷 2024-01-20 오후 4 01 17" src="https://github.com/farm-6/HEC-FE/assets/119389695/f6d2f8b0-8591-4790-8c83-26aae135b075">| <img width="250" alt="스크린샷 2024-01-20 오후 4 06 59" src="https://github.com/farm-6/HEC-FE/assets/119389695/b83d12ce-b057-4b95-b6e6-3ccbb5e86b0f"> |

### ✅ 마이페이지 화면

| 마이페이지 | 내 정보 수정 | 닉네임 변경 |
| -------- | -------- | -------- |
|<img width="250" alt="스크린샷 2024-01-20 오후 4 07 12" src="https://github.com/farm-6/HEC-FE/assets/119389695/5e73cba7-3f30-458f-9c41-94f7d61e97c2">| <img width="250" alt="스크린샷 2024-01-20 오후 4 07 24" src="https://github.com/farm-6/HEC-FE/assets/119389695/7cee5672-9703-4095-b857-bde420fd9667"> |<img width="250" alt="스크린샷 2024-01-20 오후 4 07 32" src="https://github.com/farm-6/HEC-FE/assets/119389695/98884d17-337c-41e9-a492-1dea4a129c1d">|

| 로그아웃 | 탈퇴하기 | 탈퇴하기 |
| -------- | -------- | -------- |
|<img width="250" alt="스크린샷 2024-01-20 오후 4 07 58" src="https://github.com/farm-6/HEC-FE/assets/119389695/90343843-a142-4a0d-86d9-aa4f839c3457">| <img width="250" alt="스크린샷 2024-01-20 오후 4 08 07" src="https://github.com/farm-6/HEC-FE/assets/119389695/bf4adda9-7e4c-4e52-a5e7-7ba58fe747eb"> |<img width="250" alt="스크린샷 2024-01-20 오후 4 08 14" src="https://github.com/farm-6/HEC-FE/assets/119389695/85916aab-ed0d-4b65-9783-2f8931c35118">|

