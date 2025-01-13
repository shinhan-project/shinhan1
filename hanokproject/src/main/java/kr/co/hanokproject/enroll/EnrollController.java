package kr.co.hanokproject.enroll;

import java.io.FileOutputStream;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Base64;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class EnrollController {

	private int hanok_id = 0;
	@Autowired
	private EnrollService service;
	
	@GetMapping("enroll/Confirm")
	public String enrollConfirm() {
		return "enroll/enrollConfirm";
	}

	@GetMapping("/owner/enrollConfirm.do")
	public String enrollConfirmTest() {
		System.out.println("Confirm.do 실행");
		return "/owner/enrollConfirm";

	}

	@ResponseBody
	@PostMapping("/enrollTempSave")
	public EnrollVO tempSave(@ModelAttribute EnrollVO enrollVO) {

		System.out.println(enrollVO.getHanok_name());
		enrollVO.setHanok_status(0);	// 임시 저장 상태
		enrollVO.setOwner_id(22);		// 사장님 번호 임시 저장
		enrollVO.setHanok_score(0);
		if (service.tempSave(enrollVO)) {
			System.out.println("한옥정보 상단 저장 완료");
		}else {
			System.out.println("한옥정보 상단 저장 실패");
		}
		
		hanok_id = enrollVO.getHanok_id();
		return enrollVO;
	}
	
	private void saveBase64Image(String base64Image, String filePath) throws IOException {
		// Base64 문자열을 디코딩하여 바이트 배열로 변환
		byte[] imageBytes = Base64.getDecoder().decode(base64Image);
		// FileOutputStream을 사용하여 바이트 배열을 파일로 저장
		try (FileOutputStream fos = new FileOutputStream(filePath)) {
			fos.write(imageBytes);
		}
	}

	@ResponseBody
	@PostMapping("/enrollHanokImageSave")
	public EnrollHanokImageVO hanokImageSave(@ModelAttribute EnrollHanokImageVO enrollHanokImageVO) {

		// 현재 시간 구하기
		LocalDateTime now = LocalDateTime.now();
		String formatedNow = now.format(DateTimeFormatter.ofPattern("yyyyMMddHHmmss"));
		
		// 중복 방지 UUID 설정
		UUID uuid = UUID.randomUUID();
		String fileName = "hanok_" + formatedNow + "_" + uuid.toString() + enrollHanokImageVO.getHanok_imageExtension();
		
		//임시로 저장위치 설정, 추후 배포하게 된다면 절대경로 제대로 바꿀것
		String filePath = "C:\\Users\\User\\git\\shinhan1\\hanokproject\\src\\main\\webapp\\images\\hanoks\\" + fileName;
		
		String base64Image = enrollHanokImageVO.getHanok_ImageBase64Data();
		
		if(base64Image != "") {
			try {
				saveBase64Image(base64Image, filePath);
				System.out.println("이미지 로컬 저장 완료");
				
				enrollHanokImageVO.setHanok_id(hanok_id);
				enrollHanokImageVO.setHanok_imgName(fileName);
				
				if (service.hanokImageSave(enrollHanokImageVO)) {
					System.out.println("한옥 이미지 데이터 저장이 완료");
				}else {
					System.out.println("한옥 이미지 데이터 저장 실패");
				}
				
			} catch (IOException e) {
				System.out.println("이미지 로컬 저장 중 오류가 발생");
				e.printStackTrace();
			}
		}
		
		return enrollHanokImageVO;
	}
	
//	int tempRoom_id = 0;
//	// room_id, 이미지 갯수
//	Map <Integer, Integer> roomImageMap = new HashMap<>(); 
//	int roomImageCount = 0;
//	int[][] roomImageArray;
	//객실
	@ResponseBody
	@PostMapping("/enrollRoomSave")
	public EnrollRoomVO roomSave(@ModelAttribute EnrollRoomVO enrollRoomVO) {
		enrollRoomVO.setHanok_id(hanok_id);
		if (service.roomSave(enrollRoomVO)) {
			System.out.println("한옥 객실 저장 완료");
		}else {
			System.out.println("한옥 객실 저장 실패");
		}

		int room_id = enrollRoomVO.getRoom_id();
		
		if (enrollRoomVO.getRoom_ImageBase64Data() !="")
		roomImageSave(room_id, enrollRoomVO.getRoom_ImageBase64Data(), enrollRoomVO.getRoom_imageExtension());
		
		return enrollRoomVO;
	}
	
	void roomImageSave(int room_id, String base64Image, String room_imageExtension) {

		//roomImageList(객실이름, 갯수)
		EnrollRoomImageVO enrollRoomImageVO = new EnrollRoomImageVO();
		
		// 현재 시간 구하기
		LocalDateTime now = LocalDateTime.now();
		String formatedNow = now.format(DateTimeFormatter.ofPattern("yyyyMMddHHmmss"));
		
		// 중복 방지 UUID 설정
		UUID uuid = UUID.randomUUID();
		String fileName = "room_" + formatedNow + "_" + uuid.toString() + room_imageExtension;
		
		//임시로 저장위치 설정, 추후 배포하게 된다면 절대경로 제대로 바꿀것
		String filePath = "C:\\Users\\User\\git\\shinhan1\\hanokproject\\src\\main\\webapp\\images\\rooms\\" + fileName;
		
		System.out.println("룸이미지 세이브로 넘어감");
		try {
			saveBase64Image(base64Image, filePath);
			
			
			enrollRoomImageVO.setRoom_id(room_id);
			enrollRoomImageVO.setRoom_imgName(fileName);
			
			System.out.println("이미지 로컬 저장 완료" +enrollRoomImageVO.getRoom_imgName());
			
			if (service.roomImageSave(enrollRoomImageVO)) {
				System.out.println("한옥 이미지 데이터 저장 완료");
			}else {
				System.out.println("한옥 이미지 데이터 저장 실패");
			}
			
		} catch (IOException e) {
			System.out.println("이미지 로컬 저장 중 오류가 발생");
			e.printStackTrace();
		}
	}
}
