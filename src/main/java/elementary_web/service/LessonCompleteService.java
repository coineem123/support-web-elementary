package elementary_web.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import elementary_web.converter.LessonCompleteConverter;
import elementary_web.dto.LessonCompleteDTO;
import elementary_web.entity.Lesson;
import elementary_web.entity.LessonComplete;
import elementary_web.repository.LessonCompleteRepository;

@Service
public class LessonCompleteService {

	@Autowired
	private LessonCompleteRepository lessonCompleteRepository;
	@Autowired
	private LessonCompleteConverter lessonCompleteConverter;
	@Autowired
	private LessonService lessonService;

	public List<LessonCompleteDTO> findByAccountID(int accountID) {
		List<LessonCompleteDTO> lessonCompleteDTOList = new ArrayList<LessonCompleteDTO>();
		List<LessonComplete> lessonCompleteList = lessonCompleteRepository.findByAccount_AccountID(accountID);
		for (LessonComplete lessonComplete : lessonCompleteList) {
			lessonCompleteDTOList.add(lessonCompleteConverter.toDTO(lessonComplete));
		}
		return lessonCompleteDTOList;
	}

	public void updateProcess(int accountID, int lessonID) {
		LessonCompleteDTO lessonCompleteDTO = new LessonCompleteDTO(accountID, lessonID);
		LessonComplete lessonComplete = lessonCompleteConverter.toEntity(lessonCompleteDTO);
		lessonCompleteRepository.save(lessonComplete);
	}

	public boolean checkIfLessonBeforeComplete(int accountID, int lessonID) {
		Lesson lesson = lessonService.findEntityByLessonID(lessonID);
		Lesson lessonBefore = lesson.getLessonBefore();
		if (lessonBefore != null) {
			boolean isLessonBeforeComplete = lessonCompleteRepository.existsByAccount_AccountIDAndLesson_LessonID(accountID, lessonBefore.getLessonID());
			if(isLessonBeforeComplete) {
				return true;
			} else {
				return false;
			}
		} else {
			return true;
		}

	}

}
