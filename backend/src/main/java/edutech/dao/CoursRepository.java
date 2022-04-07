package edutech.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import edutech.entity.Cours;

public interface CoursRepository extends JpaRepository<Cours, Integer> {

}
