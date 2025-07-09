# 🏡 외국인을 위한 한옥 예약 시스템 “고즈넉”

고즈넉은 외국인이 한국 전통 숙박 문화인 **한옥**을 쉽게 체험할 수 있도록 도와주는 웹 기반 예약 서비스입니다.  
고객은 객실 검색과 예약을 간편하게 진행하고, 사장은 직접 한옥을 등록하고 리뷰를 관리할 수 있으며, 관리자는 한옥 등록 요청을 승인하는 역할을 합니다.

## 📅 프로젝트 기간
- 2024.12.23 ~ 2025.01.15

## 👨‍👩‍👧‍👦 팀 구성
- 총 5명 (기획, 백엔드, 프론트 전원 참여)

## 🎯 프로젝트 목표

- 외국인을 위한 직관적인 한옥 예약 시스템 구축
- 사용자/사장/관리자 역할별 분리된 기능 제공
- 예약, 결제, 리뷰 등의 핵심 기능 직접 구현
- 팀 프로젝트를 통해 백엔드-프론트엔드 협업 능력 향상

---

## 🔧 사용 기술 스택

- **Frontend**: JSP, HTML/CSS
- **Backend**: Java, Spring Framework, MyBatis
- **Database**: MariaDB
- **Tools**: GitHub, Figma

---

## 📌 주요 기능 소개

### ✅ 고객 (사용자)
- 날짜 및 인원 수에 따른 객실 예약 기능
- 외부 결제 API 연동을 통한 실시간 결제
- 숙박 완료 후 리뷰 작성 가능

### ✅ 사장 (호스트)
- 본인이 소유한 한옥 및 객실 등록
- 고객 리뷰 확인
- 한옥 등록 요청 시 관리자 승인을 받는 절차 포함

### ✅ 관리자
- 사장님의 한옥 등록 요청에 대한 승인/거절 기능
- 전체 한옥 및 객실 관리

---

## 📷 주요 화면

| 고객 메인화면 | 예약 상세 | 결제화면 |
|---|---|---|
| ![Image](https://github.com/user-attachments/assets/14591542-f3fb-49e2-8e1d-4bb056b560b7) | ![Image](https://github.com/user-attachments/assets/8f1267bf-5426-4575-ab96-9baa522b5a2e) | ![image3](./images/payment.png) |

| 사장 페이지 | 한옥 등록 | 객실 등록 |
|---|---|---|
|<img width="1387" height="969" alt="Image" src="https://github.com/user-attachments/assets/50d960f4-ab53-402e-8245-311711ece59f" /> | ![Image](https://github.com/user-attachments/assets/2e5a5fb1-d7cd-4b8e-9b58-4f2d5a41375b)![Image](https://github.com/user-attachments/assets/2e5a5fb1-d7cd-4b8e-9b58-4f2d5a41375b) | ![Image](https://github.com/user-attachments/assets/bbf8bcc1-2d3b-4200-b1e9-901840946af6) |

| 관리자 페이지 | 한옥 승인 |
|---|---|
| <img width="1322" height="945" alt="Image" src="https://github.com/user-attachments/assets/d2a97048-be20-419c-8197-dd4c4bb91da3" /> | ![Image](https://github.com/user-attachments/assets/d85d3a04-13c2-47dd-a338-c2e5c57d73bc) |


---

## 🗂 ERD 설계

<img width="1627" height="987" alt="Image" src="https://github.com/user-attachments/assets/2d4778fa-5fda-4944-895f-db135e9a6da2" />


---

## 💡 트러블슈팅 & 개선 경험

- ✅ **다국어 사용자 대응**을 위해 텍스트와 라벨에 영어 기본값 설정
- ✅ 결제 API 연동 시, 예외 처리와 승인 여부 콜백 처리에 대한 로직 개선
- ✅ MyBatis를 이용한 동적 쿼리 작성 및 DAO 모듈 리팩토링 경험

---

## 📌 향후 개선점

- 🔄 반응형 웹 적용 및 모바일 UI 개선
- 🌍 다국어 지원(영어/일본어 등) 확대
- 📊 관리자 페이지에 통계 기능 추가 예정

---

> 해당 프로젝트는 신한 금융 SW 아카데미 내의 팀 프로젝트로 진행되었으며, 외국인 사용자들이 한국 전통문화를 체험할 수 있는 '한옥' 숙소 예약을 보다 편리하게 할 수 있도록 기획 및 개발되었습니다.

