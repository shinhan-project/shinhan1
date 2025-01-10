// function creaeteFileName(number){
//     let today = new Date();
//     let year = today.getFullYear(); // 년도
//     let month = today.getMonth() + 1;  // 월
//     let date = today.getDate();  // 날짜
//     let day = today.getDay();  // 요일
//     let hours = today.getHours(); // 시
//     let minutes = today.getMinutes();  // 분
//     let seconds = today.getSeconds();  // 초

//     return  "hanok_Img_"+year+month+date+day+hours+minutes+seconds+"_"+number;
// }

// 한옥 이미지 추가
function hanok_ImgAdd(){
    document.getElementById("hanok_input_file").addEventListener('change', function(event) {
        let files = event.target.files;
        if(files && files[0]) {
    
    const checkfile = files[0];
        		const allowedExtensions =['.png', '.jpg', '.jpeg'];
        		
        		if (checkfile){
        		const fileExtension = checkfile.name.split('.').pop().toLowerCase();
		      	const isValidExtension = allowedExtensions.includes(`.${fileExtension}`);
		      
		      	if (!isValidExtension) {
			        alert('이 파일 형식은 허용되지 않습니다.');
			        return;
        			}
        		}
    
            for(let i =0; i < files.length; i++){
            let reader = new FileReader();
    
            reader.onload = function(e){
                let imgElement_src = e.target.result;
    
                let hImageButtonSet = document.createElement('div');
                hImageButtonSet.setAttribute("class", "hanok_imageButtonSet");
                
                let hImageButtonList;
                
                hImageButtonList = document.getElementById("hanok_imageButtonList");
                hImageButtonList.appendChild(hImageButtonSet);
    
                let hImageButton = document.createElement('button');
                hImageButton.setAttribute("id", "hanok_imageButton");
                hImageButton.setAttribute("style", "background-image: url(" + imgElement_src + ")");
                hImageButton.setAttribute("img_base64data", imgElement_src);
                hImageButton.onclick = function(){ hanok_ImageButton(imgElement_src, i) };
    
                let hImageButtonCancel = document.createElement('button');
                hImageButtonCancel.setAttribute("id", "hanok_imageButtonCancel");
                hImageButtonCancel.onclick = function(){ hanok_ImageButtonCancel(hImageButtonSet)};
    
                hImageButtonSet.appendChild(hImageButton);
                hImageButtonSet.appendChild(hImageButtonCancel);
            };
            reader.readAsDataURL(files[i]);
        }
        }
    });
    }
    
    // 한옥 이미지 정보 출력
    function hanok_ImageButton(imgElement_src, i)
    {
     let popup = window.open("","등록된 한옥 이미지" + i, "_blank", "height= 750px, width= 500px, left=500, top=400", false);
     popup.document.write("<script>document.body.innerHTML = '';</script>");
     popup.document.write("<html><body style= 'margin : 0'>");
     popup.document.write("<img src='" + imgElement_src + "' onClick='window.close()' border=0>"); 
     popup.document.write("</body></html>");
    }
    
    // 한옥 이미지 삭제
    function hanok_ImageButtonCancel(parent)
    {
        parent.remove();
    }
    
    // 객실 추가
    function roomAdd(){
        let rList = document.getElementById("roomlist");
        let newOption = document.createElement("option");
        newOption.textContent = "새로운객실";
        rList.appendChild(newOption);
    
        let container_rList = document.getElementById("container_roomList");
        let rList_rightDisplay = document.getElementById("roomList_rightDisplayCopy");
        let newrList_RightDisplay = rList_rightDisplay.cloneNode(true);
        let rName = newrList_RightDisplay.querySelector(".room_name");
        
        rName.value = newOption.textContent;
    
        newrList_RightDisplay.className = "roomList_rightDisplay";
        newrList_RightDisplay.setAttribute("class", "roomList_rightDisplay");
        container_rList.appendChild(newrList_RightDisplay);
        roomSelect(rList.children.length-1);
    }
    
    // 객실 복사
    function roomCopy(){
        let rSelect = document.getElementById("roomlist");
        let rimages = document.getElementsByClassName("room_image");
        let rList_rightDisplayOrigin = document.getElementsByClassName("roomList_rightDisplay")[rSelect.selectedIndex];
    
        let rNameOrigin = rList_rightDisplayOrigin.querySelector(".room_name").value;
    
        if(rNameOrigin === "")
            return;
    
        let rList = document.getElementById("roomlist");
        let newOption = document.createElement("option");
        newOption.textContent = rList_rightDisplayOrigin.querySelector(".room_name").value;
        rList.appendChild(newOption);
    
        let container_rList = document.getElementById("container_roomList");
        let rList_rightDisplay = document.getElementById("roomList_rightDisplayCopy");
        let newrList_RightDisplay = rList_rightDisplay.cloneNode(true);
        
        // 내용 초기화
        let rName = newrList_RightDisplay.querySelector(".room_name");
        rName.value = newOption.textContent;
        let rPrice = newrList_RightDisplay.querySelector(".room_price");
        rPrice.value = rList_rightDisplayOrigin.querySelector(".room_price").value;
        let rMaxCapacity = newrList_RightDisplay.querySelector(".max_capacity");
        rMaxCapacity.value = rList_rightDisplayOrigin.querySelector(".max_capacity").value;
        let rSize = newrList_RightDisplay.querySelector(".room_size");
        rSize.value = rList_rightDisplayOrigin.querySelector(".room_size").value;
        let rService = newrList_RightDisplay.querySelector(".room_service");
        rService.value = rList_rightDisplayOrigin.querySelector(".room_service").value;
    
        newrList_RightDisplay.className = "roomList_rightDisplay";
        newrList_RightDisplay.setAttribute("class", "roomList_rightDisplay");
    
        let rOrigin_imageButtonLists = rList_rightDisplayOrigin.querySelector(".room_imageButtonList");
        rOrigin_imgBtns = rOrigin_imageButtonLists.getElementsByClassName("room_imageButton");
            
                for(let i =0; i < rOrigin_imgBtns.length; i++){           
                    let rImageButtonSet = document.createElement('div');
                    rImageButtonSet.setAttribute("class", "room_imageButtonSet");
                    
                    newrList_RightDisplay.querySelector(".room_imageButtonList").appendChild(rImageButtonSet);               
                    let rImageButton = document.createElement('button');
                    rImageButton.setAttribute("class", "room_imageButton");
    
                    let imgElement_src = rOrigin_imgBtns[i].getAttribute("img_base64data");
                    rImageButton.setAttribute("img_base64data", imgElement_src);
                    rImageButton.onclick = function(){ func_roomImageButton(rimages[rSelect.selectedIndex + 1], imgElement_src)  };
                    rImageButton.setAttribute("style", "background-image: url(" + imgElement_src + ")");
                    
                    let rImageButtonCancel = document.createElement('button');
                    rImageButtonCancel.setAttribute("id", "room_imageButtonCancel");
                    rImageButtonCancel.onclick = function(){ func_roomImageButtonCancel(rImageButtonSet)};
        
                    rImageButtonSet.appendChild(rImageButton);
                    rImageButtonSet.appendChild(rImageButtonCancel);
                }
    
        // 이미지 복사 부분 생성
        container_rList.appendChild(newrList_RightDisplay);
    
        roomSelect(rList.children.length-1);
    }
    
    // 객실 선택시
    function roomSelect(index){
        let divs = document.getElementsByClassName("roomList_rightDisplay");
    
        for (let i =0; i < divs.length; i++){
            divs[i].style.display = 'none';
        }
        
        divs[index].style.display = 'block';
    
        let rSelect = document.getElementById("roomlist");
        rSelect.selectedIndex = index;
    }
    
    
    // 객실 삭제
    function roomDelete(){
        let rSelect = document.getElementById("roomlist");
            if (rSelect.length > 1){
                let rList_rightDisplay = document.getElementsByClassName("roomList_rightDisplay")[rSelect.selectedIndex];
                let rList = document.getElementById("roomlist");
                rList.options[rSelect.selectedIndex].remove();  
                rList_rightDisplay.remove();
                roomSelect(0);
            }
    }
    
    // 객실 이름 입력 후 벗어날 시 옵션에 바로 이름 적용
    function roomName_onBlur(){
        let rSelect = document.getElementById("roomlist");
        let rList_rightDisplay = document.getElementsByClassName("roomList_rightDisplay")[rSelect.selectedIndex];
        let rList = document.getElementById("roomlist");
        let rName = rList_rightDisplay.querySelector(".room_name");
        rList.options[rSelect.selectedIndex].textContent = rName.value;
    }
    
    // roomlist onChange용 함수
    function changeRoomSelect(){
        let rSelect = document.getElementById("roomlist");
            roomSelect(rSelect.selectedIndex);
    }
    
    // 객실 이미지 추가
    function room_ImgAdd(){
        let rImageButtonLists = document.getElementsByClassName("room_imageButtonList");
        let rSelect = document.getElementById("roomlist");    
        let rimages = document.getElementsByClassName("room_image");
    	let room_images = document.getElementsByClassName("room_image");
    
        rImageButtonLists[rSelect.selectedIndex].querySelector(".croom_input_file").addEventListener('change', function(event) {

            //console.log("1차" + rSelect.selectedIndex); 
            let files = event.target.files;
            
            if (files.length == 0)
            return;
            
            rPrevimageButtonSet = rImageButtonLists[rSelect.selectedIndex + 1].querySelector(".room_imageButtonSet");
            
            if (rPrevimageButtonSet != null)
            rPrevimageButtonSet.remove();
            
            if(files && files[0]) {
        		
        		const checkfile = files[0];
        		const allowedExtensions =['.png', '.jpg', '.jpeg'];
        		
        		if (checkfile){
        		const fileExtension = checkfile.name.split('.').pop().toLowerCase();
		      	const isValidExtension = allowedExtensions.includes(`.${fileExtension}`);
		      
		      	if (!isValidExtension) {
			        alert('이 파일 형식은 허용되지 않습니다.');
			        return;
        			}
        		}
        
                for(let i =0; i < files.length; i++){
                let reader = new FileReader();
        
                reader.onload = function(e){
                    let imgElement_src = e.target.result;
        
                    let rImageButtonSet = document.createElement('div');
                    rImageButtonSet.setAttribute("class", "room_imageButtonSet");
                    
                    // +1을 하는 이유는 jsp내에 숨어있는 원본이 먼저 인덱스 0을 가짐.
                    // console.log("2차" + rSelect.selectedIndex);
                    rImageButtonLists[rSelect.selectedIndex + 1].appendChild(rImageButtonSet);               
                    let rImageButton = document.createElement('button');
                    
                    rImageButton.setAttribute("class", "room_imageButton");
                    rImageButton.setAttribute("style", "background-image: url(" + imgElement_src + ")");
                    rImageButton.setAttribute("img_base64data", imgElement_src);
                    rImageButton.onclick = function(){ func_roomImageButton(rimages[rSelect.selectedIndex + 1], imgElement_src) };
                    
                    let rImageButtonCancel = document.createElement('button');
                    rImageButtonCancel.setAttribute("id", "room_imageButtonCancel");
                    rImageButtonCancel.onclick = function(){ func_roomImageButtonCancel(rImageButtonSet, room_images[rSelect.selectedIndex + 1])};
        
                    rImageButtonSet.appendChild(rImageButton);
                    rImageButtonSet.appendChild(rImageButtonCancel);
                    room_images[rSelect.selectedIndex + 1].setAttribute("src", imgElement_src);
                };
                reader.readAsDataURL(files[i]);
            }
            }
        })
    }
    
    // 객실 이미지 정보 출력
    function func_roomImageButton(rImage, imgElement_src)
    {
        rImage.setAttribute("src", imgElement_src);
    }
    
    // 객실 이미지 삭제
    function func_roomImageButtonCancel(parent, room_image)
    {
    room_image.setAttribute("src", "/images/notFoundRoomImg.png");
        parent.remove();
    }
    
    // 홈페이지 첫 실행시 강제로 객실 추가가
    function firstRoomAdd(){
        document.getElementById("room_add").click();
    }
    
    
        // 한옥 정보 승인 요청 보내기
        async function enroll_TempSave() {
            if (confirm('승인 요청 하시겠습니까?')) {
                let hanok_services = $(".hanok_services");
                let hImageButtonList = $("#hanok_imageButtonList");
                let hanok_imageButtonSets = [];
                hanok_imageButtonSets = hImageButtonList.children(".hanok_imageButtonSet");
                let hImagesBase64Data = [];
    			let hImagesExtension = [];
                function serviceCheck(hanok_service) {
                    if (hanok_service.checked === true)
                        return 1;
                    else
                        return 0;
                }
    
                let hanokParams = {
                    "hanok_name": $("#hanok_name").val(),
                    "hanok_tel": $("#hanok_tel").val(),
                    "hanok_url": $("#hanok_url").val(),
                    //     			$("hanok_postcode").val(),
                    "hanok_address": $("#hanok_address").val(),
                    //     			$("hanok_detailAddress").val(),
                    "hanok_description": $("#hanok_description").val(),
                    "hanok_serviceETC": $("#hanok_serviceETC").val(),
                    "hanok_service0": serviceCheck(hanok_services[0]),
                    "hanok_service1": serviceCheck(hanok_services[1]),
                    "hanok_service2": serviceCheck(hanok_services[2]),
                    "hanok_service3": serviceCheck(hanok_services[3]),
                    "hanok_service4": serviceCheck(hanok_services[4]),
                    "hanok_service5": serviceCheck(hanok_services[5]),
                    "hanok_service6": serviceCheck(hanok_services[6]),
                    "hanok_service7": serviceCheck(hanok_services[7]),
                }
                // AJAX요청들을 저장할 배열
                let ajaxRequests = [];
    
                ajaxRequests.push({
                    type: "post",
                    // 	     		traditional: true,	//배열 넘기기 옵션
                    url: "/enrollTempSave",
                    data: hanokParams,
                    success: function () {
                        console.log('한옥 상단 요청 성공');
                    },
                    error: function (error) {
                        console.log('$한옥 상단 요청 오류:', error);
                    }
                });
    
                // hImagesBase64Data 정보들 저장
                for (let i = 0; i < hanok_imageButtonSets.length; i++) {
                let img_base64data = hanok_imageButtonSets[i].querySelector("#hanok_imageButton").getAttribute("img_base64data");
                
	                if (img_base64data.indexOf("data:image/png") != -1){
	                     console.log(img_base64data.replace("data:image/png;base64,", ""));
	                    hImagesBase64Data.push(img_base64data.replace("data:image/png;base64,", ""));
	                    hImagesExtension.push(".png");
	                }
	                else if (img_base64data.indexOf("data:image/jpeg") != -1){
	                	console.log(img_base64data.replace("data:image/jpeg;base64,", ""));
	                    hImagesBase64Data.push(img_base64data.replace("data:image/jpeg;base64,", ""));
	                    hImagesExtension.push(".jpg");
	                }
                }
    
                // hImagesBase64Data의 내용물이 없으면 그냥 null로 만들어버리기 (에러 발생 예외처리)
                if (hImagesBase64Data.length === 0)
                    hImagesBase64Data = null;
    
                // 각 한옥이미지 저장 요청을 배열에 저장
                for (var i = 0; i < hanok_imageButtonSets.length; i++) {
                    let is_main = 0;
    
                    if (i === 0)
                        is_main = 1;
    
                    ajaxRequests.push(
                        {
                            url: '/enrollHanokImageSave',  // URL을 다르게 하거나, 필요한 다른 파라미터 추가
                            type: 'post',
                            data: {
                                "hanok_ImageBase64Data": hImagesBase64Data[i],
                                "hanok_imageExtension": hImagesExtension[i],
                                "is_main": is_main
                            },
                            success: function () {
                              console.log(i + '번째 한옥 이미지 요청 성공');
                            },
                            error: function (error) {
                                console.log(i + '번째 한옥 이미지 요청 오류:', error);
                            }
                        }
                    ); 	      
                }
    
                let roomRequests = [];
                
                //객실 찾기
                let roomList_rightDisplays = $(".roomList_rightDisplay");
                                    
                for (let i = 0; i < roomList_rightDisplays.length; i++) {
    
                    
                    function nullQueryString(queryString){
                        if(roomList_rightDisplays[i].querySelector(queryString).value != "") return roomList_rightDisplays[i].querySelector(queryString).value;
                        else return "";
                    }
                    
                    function nullQueryInt(queryInt){
                        if(roomList_rightDisplays[i].querySelector(queryInt).value != "") return roomList_rightDisplays[i].querySelector(queryInt).value;
                        else return 0;	
                    }
                    
                    let room_name = nullQueryString(".room_name");
                    let room_price = nullQueryInt(".room_price");
                    let room_size = nullQueryInt(".room_size");
                    let max_capacity = nullQueryInt(".max_capacity");
                    let room_service = nullQueryString(".room_service");
                    let room_ImageBase64Data;
                    let room_imageExtension;
                    if (roomList_rightDisplays[i].querySelector(".room_imageButton") != null)
                    {
                        room_ImageBase64Data = roomList_rightDisplays[i].querySelector(".room_imageButton").getAttribute("img_base64data");
                        
                        if (room_ImageBase64Data.indexOf("data:image/png") != -1){
	                    console.log(room_ImageBase64Data);
	                    room_ImageBase64Data = room_ImageBase64Data.replace("data:image/png;base64,", "")
	                    room_imageExtension = ".png";
		                }
		                else if (room_ImageBase64Data.indexOf("data:image/jpeg") != -1){
	                	console.log(room_ImageBase64Data);
		                room_ImageBase64Data = room_ImageBase64Data.replace("data:image/jpeg;base64,", "")
		                room_imageExtension = ".jpg";
		                }
                    }
                                         	                    	
                    else room_ImageBase64Data = "";
                    
                    let roomParams = {
                        "room_name": room_name,
                        "room_price": room_price,
                        "room_size":  room_size,
                        "max_capacity": max_capacity,
                        "room_service": room_service,
                        "room_ImageBase64Data": room_ImageBase64Data,
                        "room_imageExtension" : room_imageExtension
                    }
    
                    
                 // AJAX요청들을 저장할 배열
                    roomRequests.push({
                        url: "/enrollRoomSave",
                        type: "post",
                        data: roomParams,
                        success: function () {
                            console.log(i + '번째 객실 요청 성공');
                        },
                        error: function (error) {
                             console.log(i + '번째 객실 요청 오류:', error);
                        }
                    });
                }
    
                //모든 요청이 성공적으로 완료되었는지 기다리기
                try {
                    for (let i = 0; i < ajaxRequests.length; i++) {
                        await $.ajax(ajaxRequests[i]);
                        console.log("한옥 정보 요청 완료");
                    }
                    
                    for (let i = 0; i < roomRequests.length; i++){
                        await $.ajax(roomRequests[i]);
                        console.log("객실 모든 요청 완료");
                    }
                    
                 } catch (error) {
                        console.log("어떤 요청에서 오류 발생" + error);
                 }
                
            }
        }