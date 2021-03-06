package elementary_web.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import elementary_web.entity.Test;

@Repository
public interface TestRepository extends JpaRepository<Test, Integer> {

}
