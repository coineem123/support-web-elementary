package elementary_web.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import elementary_web.entity.Lesson;

@Repository
public interface LessonRepository extends JpaRepository<Lesson, Integer> {
	Lesson findByLessonID(int lessonID);
	List<Lesson> findByChapter_ChapterID(int chapterID);

}
