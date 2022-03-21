package edutech.entity;

import javax.persistence.*;
import lombok.*;

@Data
@Entity
public class Cours {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @NonNull
    private String intitule;

    @NonNull
    @ManyToOne(optional = false) // obligatoire, la clé étrangère ne doit pas être nulle
    Chapitre chapitre;

    @OneToOne
    private Jeu jeu;
}
