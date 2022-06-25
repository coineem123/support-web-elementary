package elementary_web.controller;

import javax.servlet.http.HttpSession;

import java.security.NoSuchAlgorithmException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import elementary_web.Utility;
import elementary_web.dto.AccountDTO;
import elementary_web.dto.ChangePasswordDTO;
import elementary_web.service.AccountService;

// Controller dùng cho quản lý thông tin tài khoản
@Controller
public class PersonalController {
	@Autowired

	private AccountService accountService;

//	@RequestMapping("/editInformation")
//	public ModelAndView editInformation(HttpServletRequest request, HttpSession session) {
//		return null;
//		
//	}

	@RequestMapping(value = "editInformation", method = RequestMethod.GET)
	public String editForm(Model model) {
		model.addAttribute("editAccount", new AccountDTO());
		return "./user_page/personal-information-management";

	}

	@RequestMapping(value = "detail", method = RequestMethod.POST)
	public String detailUpdate(@ModelAttribute("editAccount") AccountDTO acc, HttpSession session) {
		AccountDTO account = (AccountDTO) session.getAttribute("account");
		account.setAccountName(acc.getAccountName());
		account.setEmail(acc.getEmail());
		account.setPhoneNumber(acc.getPhoneNumber());
		account.setNickName(acc.getNickName());
		accountService.updateAccount(account);
		System.out.println(account.getAccountID());
		System.out.println(account.getAccountName());
		System.out.println(account.getNickName());
		System.out.println(account.getEmail());
		System.out.println(account.getPhoneNumber());
		System.out.println(account.getPassword());
		return "./user_page/detail";
	}
	@RequestMapping(value = "changePassword", method = RequestMethod.GET)
	public String changPassword(Model model) {
		model.addAttribute("changePassword", new ChangePasswordDTO());
		return "./user_page/changePassword";
	}
	
	@RequestMapping(value = "detailChangePassword", method = RequestMethod.POST)
	public String changPassword(@ModelAttribute("changePassword") ChangePasswordDTO pass, HttpSession session) throws NoSuchAlgorithmException, InterruptedException {
		AccountDTO account = (AccountDTO) session.getAttribute("account");
		if(account.getPassword()!= Utility.convertToMD5(pass.getOld_password())) {
			System.out.println("Not Correct Old Pass!");
		}
		if(pass.getNew_password()!=pass.getAgain_new_password()) {
			System.out.println("New Pass again Error");
		}
		account.setPassword(Utility.convertToMD5(pass.getAgain_new_password()));
		accountService.updateAccount(account);
		System.out.println("Success Change Password!");
		ModelAndView mav = new ModelAndView("user_page/login");
		mav.addObject("loginStatus", "fail");
		return "redirect:./logout";
	}

	
}
