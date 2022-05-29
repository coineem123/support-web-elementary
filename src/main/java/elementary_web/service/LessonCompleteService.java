package elementary_web.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import elementary_web.converter.LessonCompleteConverter;
import elementary_web.dto.LessonCompleteDTO;
import elementary_web.entity.LessonComplete;
import elementary_web.repository.LessonCompleteRepository;

@Service
public class LessonCompleteService {

	@Autowired
	private LessonCompleteRepository lessonCompleteRepository;
	@Autowired
	private LessonCompleteConverter lessonCompleteConverter;

	public List<LessonCompleteDTO> findByAccountID(int accountID) {
		List<LessonCompleteDTO> lessonCompleteDTOList = new ArrayList<LessonCompleteDTO>();
		List<LessonComplete> lessonCompleteList = lessonCompleteRepository.findByAccountID(accountID);
		for (LessonComplete lessonComplete : lessonCompleteList) {
			lessonCompleteDTOList.add(lessonCompleteConverter.toDTO(lessonComplete));
		}
		return lessonCompleteDTOList;
	}

}
