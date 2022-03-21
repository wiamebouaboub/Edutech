package edutech.entity;

import javax.persistence.*;
import lombok.*;

@NoArgsConstructor
@Data
@Entity
@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS)
public class Jeu {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @NonNull
    private String intitule;

    @OneToOne
    private Cours cours;
}
