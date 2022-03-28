package edutech.entity;

import javax.persistence.*;
import lombok.*;

@NoArgsConstructor
@Data
@Entity
@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS)
@Table(name = "Jeu")
public class Jeu {
    @Id
    @GeneratedValue(strategy = GenerationType.TABLE)
    @Column(name = "jeu_id")
    private Integer id;

    @NonNull
    @Column(name = "jeu_intitule")
    private String intitule;

    @OneToOne
    private Cours cours;
}
