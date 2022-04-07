package edutech.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import edutech.entity.Memory;

public interface MemoryRepository extends JpaRepository<Memory, Integer> {

}
