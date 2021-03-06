package elementary_web.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import elementary_web.entity.Role;

@Repository
public interface RoleRepository extends JpaRepository<Role, Integer> {
	 Role findByRoleID(int roleID);
	 Role findByRoleName(String roleName);

}
