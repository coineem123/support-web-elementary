package elementary_web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import elementary_web.converter.AccountConverter;
import elementary_web.dto.AccountDTO;
import elementary_web.entity.Account;
import elementary_web.repository.AccountRepository;

@Service
public class AccountService {

	@Autowired
	private AccountRepository accountRepository;
	@Autowired
	private AccountConverter accountConverter;

	// Dùng để thêm hoặc sửa thông tin tài khoản. Dùng cho quản lý tài khoản
	public void updateAccount(Account account) {
		accountRepository.save(account);
	}

	// Dùng cho quản lý thông tin cá nhân
	public void updateAccount(AccountDTO accountDTO) {
		accountRepository.save(accountConverter.toEntity(accountDTO));
	}

	public AccountDTO findAccountByEmailOrUserOrPhoneNumber(String emailOrUserOrPhoneNumber) {
		Account account = accountRepository.findByEmailOrUsernameOrPhoneNumber(emailOrUserOrPhoneNumber);
		// Tim thay hay khong
		if (account == null) {
			return null;
		} else {
			AccountDTO accountDTO = accountConverter.toDTO(account);
			return accountDTO;
		}
	}

	public Account findByAccountID(int accountID) {
		Account account = accountRepository.findByAccountID(accountID);
		return account;
	}

	public AccountDTO findDTOByAccountID(int accountID) {
		Account account = accountRepository.findByAccountID(accountID);
		return accountConverter.toDTO(account);
	}
}
