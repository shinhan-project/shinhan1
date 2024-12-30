<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search</title>
	<style>
	    #search{
	        display: flex;
	        justify-content: center;
	        align-items: center;
	        margin: 0 auto;
	        width: 75%;
	        gap: 5px;
	    }
	    #search div{
	        display: flex;
	        align-items: center;
	        gap: 15px
	    }
	    #search input{
	        padding: 8px 10px;
	        border-radius: 10px;
	        font-size: 14px;
	        border: 1px solid #ccc;
	        flex: 1;
	    }
	    button{
	        padding: 10px 30px;
	        font-size: 16px;
	        background-color: #e6e6e6; /* 기본 색상 */
	        border: black;
	        border-radius: 10px;
	        cursor: pointer;
	        transition: background-color 0.2s ease;
	    }
	    button:active {
	        background-color: #939393; /* 클릭 시 색상 */
	    }
	</style>
	
	<script>
	    // 현재 날짜를 "YYYY-MM-DD" 형식으로 가져오는 함수
	    const today = new Date().toISOString().split("T")[0];
	
	    // 입력 필드 요소 가져오기
	    const checkInInput = document.getElementById("check-in");
	    const checkOutInput = document.getElementById("check-out");
	
	    checkInInput.setAttribute("min", today);
	    checkOutInput.setAttribute("min", today);
	
	    // 입력값 변경 시 이전 날짜 선택 방지
	    checkInInput.addEventListener("input", function () {
	        if (this.value < today) {
	            alert("이전 날짜는 선택할 수 없습니다.");
	            this.value = today;
	        }
	    });
	
	    checkOutInput.addEventListener("input", function () {
	        if (this.value < today) {
	            alert("이전 날짜는 선택할 수 없습니다.");
	            this.value = today;
	        }
	    });
	</script>
</head>
<body>
	<form method="get" action="/hanok_list.do">
	    <div id="search">
	        <!--장소 검색-->
	        <div style="flex: 1;">
	            <img src="assets/img/search_location.png" alt="위치" style="width: 20px; height: 30px; padding-left: 15px;">
	            <input type="text" name="location" style="width: 300px; height:20px;">
	        </div>
	
	        <!--날짜 검색-->
	        <div style="flex: 1;">
	            <img src="assets/img/search_calender.png" alt="캘린더" style="width: 30px; height: 30px; padding-left: 15px;">
	            <input  type="date" id="check-in" style="width: 100px ; height: 20px;"/>
	            <input  type="date" id="check-out" style="width: 100px; height: 20px;"/>
	        </div>
	
	        <!--인원 수 검색-->
	        <div style="flex: 1;">
	            <img src="assets/img/search_people.png" alt="인원" style="width: 24px; height: 24px; padding-left: 15px;">
	            <input type="text" name="capacity" style="width: 50px; height: 20px;">
	        </div>
	        <button type="submit" class="search-button">Search</button>
	    </div>
    </form>
    
</body>
</html>