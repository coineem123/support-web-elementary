package elementary_web.converter;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import elementary_web.dto.ChapterDTO;
import elementary_web.dto.LessonDTO;
import elementary_web.entity.Chapter;
import elementary_web.entity.Lesson;

@Component
public class ChapterConverter {
	@Autowired
	LessonConverter lessonConverter;

	public ChapterDTO toDTO(Chapter entity) {
		int chaperID = entity.getChapterID();
		String chapterName = entity.getChapterName();
		int subjectID = entity.getSubject().getSubjectID();
		boolean active = entity.isActive();
		Set<Lesson> lessonList = entity.getLessonList();
		List<LessonDTO> lessonDTOList = new ArrayList<LessonDTO>();
		for (Lesson lesson : lessonList) {
			lessonDTOList.add(lessonConverter.toDTO(lesson));
		}
		Collections.sort(lessonDTOList, new Comparator<LessonDTO>() {
			public int compare(LessonDTO o1, LessonDTO o2) {
				return o1.getLessonID() - o2.getLessonID();
			}
		});

		int score = entity.getScore();
		return new ChapterDTO(chaperID, chapterName, subjectID, active, lessonDTOList, score);

	}

	public ChapterConverter() {
		// TODO Auto-generated constructor stub
	}

}
