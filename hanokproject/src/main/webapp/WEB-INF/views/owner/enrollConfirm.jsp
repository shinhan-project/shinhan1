<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>한옥 등록 페이지</title>
        <link rel="stylesheet" type="text/css" href="/css/style_EnrollConfirm.css">
        <script src="/js/functions_EnrollComfirm.js"></script>
        <script src="/js/functions_FindAddress.js"></script>
        <script src="https://code.jquery.com/jquery-3.7.1.min.js"
            integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
            
            
            <!-- Meta Tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="Webestica.com">
<meta name="description"
	content="Booking - Multipurpose Online Booking Theme">


<!-- Favicon -->
<link rel="shortcut icon" href="/images/favicon.ico">

<!-- Google Font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;700&family=Poppins:wght@400;500;700&display=swap">

<!-- Plugins CSS -->
<link rel="stylesheet" type="text/css"
	href="/vendor/font-awesome/css/all.min.css">
<link rel="stylesheet" type="text/css"
	href="/vendor/bootstrap-icons/bootstrap-icons.css">
<link rel="stylesheet" type="text/css"
	href="/vendor/apexcharts/css/apexcharts.css">
<link rel="stylesheet" type="text/css"
	href="/vendor/choices/css/choices.min.css">

<!-- Theme CSS -->
<link rel="stylesheet" type="text/css" href="/css/style.css">
    </head>
<%@ include file="/WEB-INF/views/include/owner_header.jsp" %>
<!--  body Start -->	
    <body>
	    <div class="loader">
	  	<div class="loader-bar"></div>
		</div>

    
        <div id="roomList_rightDisplayCopy" style="display: none;">
            <div class="roomList_right">
                <div class="roomList_rightTop">
                    <div class="roomList_rightTopLeft">
                        <div>객실 이름</div>
                        <div class="room_nameWrap" style="margin-left: auto;"><input type="text" class="room_name form-control"
                                onblur="roomName_onBlur()"></div>
                        <div>기본 가격</div>
                        <div class="room_priceWrap" style="margin-left: auto;"><input type="number" class="room_price form-control">
                        </div>
                    </div>

                    <div></div>

                    <div class="roomList_rightTopRight">
                        <div>최대 수용 인원</div>
                        <div class="max_capacityWrap" style="margin-left: auto;"><input type="number"
                                class="max_capacity form-control"></div>
                        <div>객실 크기</div>
                        <div class="room_sizeWrap" style="margin-left: auto;"><input type="number" class="room_size form-control">
                        </div>
                        <div>객실 부가 기능</div>
                        <div class="room_serviceWrap" style="margin-left: auto;"><input type="text"
                                class="room_service form-control"></div>
                    </div>
                </div>

                <div class="roomList_rightMiddle">
                    <div>객실 사진들</div>

                    <div class="room_imageButtonList">
                        <!-- 객실 이미지 추가 버튼  -->
                        <label id="room_imageButtonAdd" for="room_input_file"> + </label>
                        <input type="file" class="croom_input_file" id="room_input_file" style="display: none"
                            accept=".png, .jpg"/>
                    </div>
                </div>
                <div class="roomList_rightBottom">
                    <div style="place-self: center;"> <img class="room_image" style="height: 300px; width: 500px;"
                            src="/images/notFoundRoomImg.png" alt="등록된 이미지가 없습니다."></div>
                    <div style="margin-left: auto;">
                        <button class="room_copy btn btn-primary" onclick="roomCopy()">복사</button>
                        <button class="room_delete btn btn-primary" onclick="roomDelete()"> 삭제 </button>
                    </div>
                </div>
            </div>
        </div>



        <div id="wrap">

            <div id="container_hanokInfoName">
                <h1>한옥정보</h1>
            </div>

            <!-- 한옥 정보 -->
            <div id="container_hanokInfoTop">
                <div id="hanokInfo_topLeft">
                    <div> 한옥 이름</div>
                    <div style = "margin-left: auto;"> <input type="text" id="hanok_name" class="form-control"> </div>

                    <div> 한옥 대표 전화번호 </div>
                    <div style="margin-left: auto;"><input type="number" id="hanok_tel" class="form-control"> </div>

                    <div>한옥 홈페이지</div>
                    <div style="margin-left: auto;"><input type="text" id="hanok_url" class="form-control"> </div>

                    <div>한옥 주소 </div>
                    <div style="margin-left: auto; display: grid; grid-template-columns: 45% 10% 45%;"> <input type="text" id="hanok_postcode" readonly
                            class="form-control" style="width: 100%; height: 90%; text-align: center;" placeholder="우편 번호">
                            <div></div>
                            <button
                            id="hanok_addresssearch"
                            class="btn btn-primary"
                            style="width: 100%; height: 90%;"
                            onclick="hanok_execDaumPostcode()">주소검색</button> </div>

                    <div style="grid-column: 1/-1;">
                        <input type="text" id="hanok_address" class="form-control" name="hanok_address" readonly
                            style="width: 99%; resize: none;" placeholder="기본 주소" autofocus>
                    </div>
                    <div style="grid-column: 1/-1;">
                        <input type="text" id="hanok_detailAddress" class="form-control" style="width: 99%; resize: none;" placeholder="상세 주소"
                            autofocus>
                    </div>
                </div>

                <div></div> <!-- 중간 비워두는 칸 -->

                <div id="hanokInfo_topRight">
<!--                     <div>사장 이름</div> -->
<!--                     <div style="margin-left: auto;"> <input type="text" id="owner_id"> </div> -->
<!--                     <div>사장 연락처</div> -->
<!--                     <div style="margin-left: auto;"> <input type="number" id="owner_tel"> </div> -->
                </div>
            </div>
            <div id="container_hanokInfoMiddle1">
                <div>한옥설명</div>
                <div><textarea id="hanok_description" class="form-control" style="height: 100px; width: 100%; resize: none;"
                        placeholder="여기에 한옥에 대한 설명들을 적습니다."></textarea></div>
            </div>

            <div id="container_hanokInfoMiddle2">
                <div> 한옥 대표 이미지</div>
                <div id="hanok_imageButtonList">
                    <!-- 한옥 이미지 추가 버튼  -->
                    <label id="hanok_imageButtonAdd" for="hanok_input_file"> + </label>
                    <input type="file" multiple id="hanok_input_file" style="display: none" accept=".png, .jpg" />
                </div>
            </div>

            <script>hanok_ImgAdd(); </script>

            <div id="container_hanokInfoBottom">
                <div>편의시설</div>
                <div>
                    <input type="checkbox" class="hanok_services" name="services" /> 목욕
                    <input type="checkbox" class="hanok_services" name="services" /> 애완가능여부
                    <input type="checkbox" class="hanok_services" name="services" /> OTT
                    <input type="checkbox" class="hanok_services" name="services" /> 와이파이
                    <br>
                    <input type="checkbox" class="hanok_services" name="services" /> 바베큐
                    <input type="checkbox" class="hanok_services" name="services" /> 주방/식당
                    <input type="checkbox" class="hanok_services" name="services" /> 수영장
                    <input type="checkbox" class="hanok_services" name="services" /> 주차
                </div>
                <div>그 외 부가시설</div>
                <div style="margin-left: auto;"><input type="text" id="hanok_serviceETC" class="form-control"></div>
            </div>

            <!-- 객실 리스트 -->
            <div id="container_roomListName">
                <h1>객실 리스트</h1>
            </div>

            <div id="container_roomList">
                <div id="roomList_left">
                    <div><button style="width: 100%;" id="room_add" class = "btn btn-primary" onclick="roomAdd()">객실 추가</button></div>
                    <div>
                        <select id="roomlist" size="30" style="width: 100%;" onchange="changeRoomSelect()">
                            <!-- <option value="토끼방">토끼방</option> -->
                        </select>
                    </div>
                </div>

                <div></div> <!--비워두는 칸-->
                <script> firstRoomAdd();</script>
            </div>

            <div class="container_roomListBottom">
<!--                 <div style="margin-left: auto;">요청 게시글 비밀번호 <input type="password" id="hanok_enrollPassword"></div> -->
<!--                 <div style="margin-left: auto;"> <button id="hanok_tempSave">임시 저장</button> <button -->
<!--                         id="hanok_approvalRequest"> 승인요청 </button> </div> -->
<!--                 <div style="margin-left: auto;"><button id="hanok_approval">승인</button> <button id="rejection"> 반려 -->
<!--                     </button> </div> -->

<div></div> <!-- 비워두는 칸 -->
<div style="margin-left: auto;"> <button id="hanok_tempSave" class="btn btn-primary" onclick="enroll_TempSave()">승인 요청</button></div>
            </div>
        </div>
        <script> room_ImgAdd(); hideLoader();</script>
    </body>



<%@ include file="/WEB-INF/views/include/footer.jsp" %>
<!-- Back to top -->
<div class="back-top"></div>

<!-- Bootstrap JS -->
<script src="/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

<!-- Vendors -->
<script src="/vendor/apexcharts/js/apexcharts.min.js"></script>
<script src="/vendor/choices/js/choices.min.js"></script>

<!-- ThemeFunctions -->
<script src="/js/functions.js"></script>
    </html>