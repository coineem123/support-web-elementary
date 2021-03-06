package elementary_web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import elementary_web.dto.ChapterDTO;
import elementary_web.dto.SubjectDTO;
import elementary_web.service.ChapterService;
import elementary_web.service.SubjectService;

@Controller
@RequestMapping("/admin")
public class ChapterController {
	@Autowired
	private ChapterService chapterService;
	@Autowired
	private SubjectService subjectService;

	@RequestMapping("/chapter")
	public ModelAndView chapterPage(@RequestParam int subjectID) {
		SubjectDTO subject = subjectService.findBySubjectID(subjectID);
		List<ChapterDTO> chapterList = subject.getChapterList();
		ModelAndView mav = new ModelAndView("../admin_page/Chapter");
		mav.addObject("chapterList", chapterList);
		return mav;
	}

	@RequestMapping("/unactiveChapter")
	public String unactiveSubject(@RequestParam int chapterID) {
		chapterService.deleteChapterbyID(chapterID);
		return "redirect:../admin/chapter";
	}

	@RequestMapping("/createChapter")
	public String createSubject(@RequestParam String chapterName) {
		chapterService.createChapter(chapterName);
		return "redirect: ../admin/chapter";
	}

	@RequestMapping("/renameChapter")
	public String renameSubject(@RequestParam int ChapterID, @RequestParam String chaptertName) {
		chapterService.renameChapter(ChapterID, chaptertName);
		return "redirect:../admin/chapter";
	}

	@RequestMapping("/activeChapter")
	public String activeSubject(@RequestParam int chapterID) {
		chapterService.restoreChapterbyID(chapterID);
		return "redirect:../admin/chapter";
	}
}
